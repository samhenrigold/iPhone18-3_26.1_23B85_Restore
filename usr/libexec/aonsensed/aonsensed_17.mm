BOOL sub_1001BC8B8()
{
  v1 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F98, &qword_100383468);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F98, &qword_100383468);
  return v7;
}

uint64_t sub_1001BC9D8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423F98, &qword_100383468);
  return swift_endAccess();
}

uint64_t sub_1001BCB28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423FA0, &qword_100383470);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FA0, &qword_100383470);
  }

  return result;
}

uint64_t sub_1001BCD30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FA0, &qword_100383470);
  return swift_endAccess();
}

void (*sub_1001BCEA4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FA0, &qword_100383470) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FA0, &qword_100383470);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FA0, &qword_100383470);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  }

  return sub_1001BD178;
}

void sub_1001BD178(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FA0, &qword_100383470);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FA0, &qword_100383470);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001BD3D8()
{
  v1 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FA0, &qword_100383470);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FA0, &qword_100383470);
  return v7;
}

uint64_t sub_1001BD4F8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FA0, &qword_100383470);
  return swift_endAccess();
}

uint64_t sub_1001BD648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423FA8, &qword_100383478);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FA8, &qword_100383478);
  }

  return result;
}

uint64_t sub_1001BD870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FA8, &qword_100383478);
  return swift_endAccess();
}

void (*sub_1001BD9E4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FA8, &qword_100383478) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FA8, &qword_100383478);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FA8, &qword_100383478);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  }

  return sub_1001BDCD8;
}

void sub_1001BDCD8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FA8, &qword_100383478);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FA8, &qword_100383478);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001BDF38()
{
  v1 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FA8, &qword_100383478);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FA8, &qword_100383478);
  return v7;
}

uint64_t sub_1001BE058()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FA8, &qword_100383478);
  return swift_endAccess();
}

uint64_t sub_1001BE1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423FB0, &qword_100383480);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FB0, &qword_100383480);
  }

  return result;
}

uint64_t sub_1001BE3C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FB0, &qword_100383480);
  return swift_endAccess();
}

void (*sub_1001BE534(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FB0, &qword_100383480) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FB0, &qword_100383480);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + v8[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FB0, &qword_100383480);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  }

  return sub_1001BE818;
}

void sub_1001BE818(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FB0, &qword_100383480);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FB0, &qword_100383480);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001BEA78()
{
  v1 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FB0, &qword_100383480);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FB0, &qword_100383480);
  return v7;
}

uint64_t sub_1001BEB98()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FB0, &qword_100383480);
  return swift_endAccess();
}

uint64_t sub_1001BECE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F90, &qword_100383460);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BEE84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F90, &qword_100383460);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423F90, &qword_100383460);
  return swift_endAccess();
}

void (*sub_1001BEFF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
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
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F90, &qword_100383460);
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
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_1001BF268;
}

void sub_1001BF268(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F90, &qword_100383460);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F90, &qword_100383460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001BF4C8()
{
  v1 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F90, &qword_100383460);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F90, &qword_100383460);
  return v7;
}

uint64_t sub_1001BF5E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423F90, &qword_100383460);
  return swift_endAccess();
}

uint64_t sub_1001BF738@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423FB8, &qword_100383488);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
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
    return sub_1000059A8(v5, &qword_100423FB8, &qword_100383488);
  }

  return result;
}

uint64_t sub_1001BF910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FB8, &qword_100383488);
  return swift_endAccess();
}

void (*sub_1001BFA84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FB8, &qword_100383488) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
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
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FB8, &qword_100383488);
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
      sub_1000059A8(v7, &qword_100423FB8, &qword_100383488);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  }

  return sub_1001BFD28;
}

void sub_1001BFD28(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FB8, &qword_100383488);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FB8, &qword_100383488);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001BFF88()
{
  v1 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FB8, &qword_100383488);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FB8, &qword_100383488);
  return v7;
}

uint64_t sub_1001C00A8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FB8, &qword_100383488);
  return swift_endAccess();
}

uint64_t sub_1001C01F8@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423FC0, &qword_100383490);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 24);
  *v10 = 0;
  v10[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FC0, &qword_100383490);
  }

  return result;
}

uint64_t sub_1001C0394(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v11 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FC0, &qword_100383490);
  return swift_endAccess();
}

void (*sub_1001C0508(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FC0, &qword_100383490) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
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
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FC0, &qword_100383490);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 24);
    *v18 = 0;
    v18[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FC0, &qword_100383490);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  }

  return sub_1001C0778;
}

void sub_1001C0778(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Polygon);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FC0, &qword_100383490);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Polygon);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_Polygon);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FC0, &qword_100383490);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001C09D8()
{
  v1 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FC0, &qword_100383490);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FC0, &qword_100383490);
  return v7;
}

uint64_t sub_1001C0AF8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v8 = swift_allocObject();
    sub_100246E4C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FC0, &qword_100383490);
  return swift_endAccess();
}

void (*sub_1001C0CB0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001C0D68;
}

uint64_t sub_1001C0E60()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20));
  if (v1 == 9)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C0E8C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C0EBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 9)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C0F48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  *(v0 + *(result + 20)) = 9;
  return result;
}

uint64_t sub_1001C0F70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423FC8, &qword_100383498);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100461290 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100461298;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_100423FC8, &qword_100383498);
  }

  return result;
}

uint64_t sub_1001C1118(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FC8, &qword_100383498);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C11D0(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FC8, &qword_100383498) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FC8, &qword_100383498);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100461290 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100461298;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100423FC8, &qword_100383498);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  }

  return sub_1001C1428;
}

uint64_t sub_1001C1544(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C157C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 20);
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

uint64_t sub_1001C1614()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C165C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1694(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0) + 24);
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

uint64_t sub_1001C172C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C178C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C17C4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 20);
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

uint64_t sub_1001C185C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C18A4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C18DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 24);
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

uint64_t sub_1001C1974()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C19BC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C19F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 28);
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

uint64_t sub_1001C1A8C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1AD4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1B0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0) + 32);
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

uint64_t sub_1001C1BA4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1C04(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1C3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 20);
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

uint64_t sub_1001C1CD4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1D1C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1D54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 24);
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

uint64_t sub_1001C1DEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1E34(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1E6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0) + 28);
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

uint64_t sub_1001C1F04()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C1F64(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C1F9C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 20);
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

uint64_t sub_1001C2034()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C207C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C20B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 24);
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

uint64_t sub_1001C214C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C2194(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C21CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 28);
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

uint64_t sub_1001C2264()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C22AC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C22E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 32);
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

uint64_t sub_1001C237C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C23C4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C23FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 36);
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

uint64_t sub_1001C2494()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C24DC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C2514(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0) + 40);
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

uint64_t sub_1001C25AC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001C25DC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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
  return result;
}

uint64_t sub_1001C266C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423FD0, &qword_1003834A0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
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
    return sub_1000059A8(v5, &qword_100423FD0, &qword_1003834A0);
  }

  return result;
}

uint64_t sub_1001C27E4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423FD0, &qword_1003834A0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C289C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FD0, &qword_1003834A0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FD0, &qword_1003834A0);
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
      sub_1000059A8(v7, &qword_100423FD0, &qword_1003834A0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  }

  return sub_1001C2ACC;
}

uint64_t sub_1001C2B80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423FD8, &qword_1003834A8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
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
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FD8, &qword_1003834A8);
  }

  return result;
}

uint64_t sub_1001C2D18(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FD8, &qword_1003834A8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C2DD0(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FD8, &qword_1003834A8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FD8, &qword_1003834A8);
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
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FD8, &qword_1003834A8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  }

  return sub_1001C3020;
}

uint64_t sub_1001C30D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_100423FE0, &qword_1003834B0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
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
    return sub_1000059A8(v5, &qword_100423FE0, &qword_1003834B0);
  }

  return result;
}

uint64_t sub_1001C325C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423FE0, &qword_1003834B0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C3314(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FE0, &qword_1003834B0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FE0, &qword_1003834B0);
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
      sub_1000059A8(v7, &qword_100423FE0, &qword_1003834B0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
  }

  return sub_1001C3554;
}

uint64_t sub_1001C3608@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_100423FE8, &qword_1003834B8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
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
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v7[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FE8, &qword_1003834B8);
  }

  return result;
}

uint64_t sub_1001C37C0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423FE8, &qword_1003834B8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C3878(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FE8, &qword_1003834B8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FE8, &qword_1003834B8);
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
    v19 = v13 + v8[8];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FE8, &qword_1003834B8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  }

  return sub_1001C3AE8;
}

uint64_t sub_1001C3B9C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[8];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t sub_1001C3D50()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C3D7C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C3DAC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C3E38()
{
  result = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001C3E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423FF0, &qword_1003834C0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v7[6];
  v12 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v7[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v7[8];
  v16 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423FF0, &qword_1003834C0);
  }

  return result;
}

uint64_t sub_1001C40C4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423FF0, &qword_1003834C0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C417C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FF0, &qword_1003834C0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423FF0, &qword_1003834C0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v8[6];
    v19 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    v22 = v8[8];
    v23 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FF0, &qword_1003834C0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  }

  return sub_1001C4498;
}

void (*sub_1001C45EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001C4694;
}

void (*sub_1001C4770(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001C481C;
}

uint64_t sub_1001C48C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_1002477BC(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

void (*sub_1001C4A34(uint64_t *a1))(uint64_t *a1, char a2)
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

  return sub_1001C4CAC;
}

void sub_1001C4CAC(uint64_t *a1, char a2)
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002477BC(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002477BC(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

BOOL sub_1001C4F0C()
{
  v1 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FF8, &qword_1003834C8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FF8, &qword_1003834C8);
  return v7;
}

uint64_t sub_1001C502C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_1002477BC(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

uint64_t sub_1001C517C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424000, &qword_1003834D0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
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
  *(a1 + v8[8]) = 4;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[10];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424000, &qword_1003834D0);
  }

  return result;
}

uint64_t sub_1001C5388(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_1002477BC(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424000, &qword_1003834D0);
  return swift_endAccess();
}

void (*sub_1001C54FC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424000, &qword_1003834D0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424000, &qword_1003834D0);
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
    *(v13 + v8[8]) = 4;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v8[10];
    v23 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424000, &qword_1003834D0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
  }

  return sub_1001C57DC;
}

void sub_1001C57DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002477BC(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424000, &qword_1003834D0);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002477BC(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocationInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424000, &qword_1003834D0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001C5A3C()
{
  v1 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424000, &qword_1003834D0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424000, &qword_1003834D0);
  return v7;
}

uint64_t sub_1001C5B5C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_1002477BC(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424000, &qword_1003834D0);
  return swift_endAccess();
}

uint64_t sub_1001C5CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424008, &qword_1003834D8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 6;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  *(a1 + v8[9]) = 4;
  v13 = a1 + v8[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424008, &qword_1003834D8);
  }

  return result;
}

uint64_t sub_1001C5E80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_1002477BC(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424008, &qword_1003834D8);
  return swift_endAccess();
}

void (*sub_1001C5FF4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424008, &qword_1003834D8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424008, &qword_1003834D8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v13 + v8[9]) = 4;
    v21 = v13 + v8[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424008, &qword_1003834D8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
  }

  return sub_1001C629C;
}

void sub_1001C629C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002477BC(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424008, &qword_1003834D8);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002477BC(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424008, &qword_1003834D8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001C64FC()
{
  v1 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424008, &qword_1003834D8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424008, &qword_1003834D8);
  return v7;
}

uint64_t sub_1001C661C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_1002477BC(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424008, &qword_1003834D8);
  return swift_endAccess();
}

uint64_t sub_1001C676C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424010, &qword_1003834E0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 9;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424010, &qword_1003834E0);
  }

  return result;
}

uint64_t sub_1001C6934(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_1002477BC(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  v11 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424010, &qword_1003834E0);
  return swift_endAccess();
}

void (*sub_1001C6AA8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424010, &qword_1003834E0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424010, &qword_1003834E0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 9;
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424010, &qword_1003834E0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
  }

  return sub_1001C6D44;
}

void sub_1001C6D44(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002477BC(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424010, &qword_1003834E0);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002477BC(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocEstimate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424010, &qword_1003834E0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001C6FA4()
{
  v1 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424010, &qword_1003834E0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424010, &qword_1003834E0);
  return v7;
}

uint64_t sub_1001C70C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_1002477BC(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424010, &qword_1003834E0);
  return swift_endAccess();
}

uint64_t sub_1001C7214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424018, &qword_1003834E8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424018, &qword_1003834E8);
  }

  return result;
}

uint64_t sub_1001C73DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_1002477BC(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  v11 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424018, &qword_1003834E8);
  return swift_endAccess();
}

void (*sub_1001C7550(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424018, &qword_1003834E8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424018, &qword_1003834E8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 6;
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424018, &qword_1003834E8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
  }

  return sub_1001C77EC;
}

void sub_1001C77EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002477BC(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424018, &qword_1003834E8);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
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
      type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002477BC(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424018, &qword_1003834E8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001C7A4C()
{
  v1 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424018, &qword_1003834E8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424018, &qword_1003834E8);
  return v7;
}

uint64_t sub_1001C7B6C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_1002477BC(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424018, &qword_1003834E8);
  return swift_endAccess();
}

uint64_t sub_1001C7CDC(uint64_t (*a1)(void), void *a2)
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

uint64_t sub_1001C7D90(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    a4(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = v13 + *a5;
  result = swift_beginAccess();
  *v15 = a1;
  *(v15 + 4) = 0;
  return result;
}

void (*sub_1001C7E5C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001C7F14;
}

void sub_1001C7F48(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = v13 + *a5;
  swift_beginAccess();
  *v17 = v9;
  *(v17 + 4) = 0;

  free(v8);
}

BOOL sub_1001C8060(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t sub_1001C8110(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v8 + v9) = v12;
    v11 = v12;
  }

  v13 = v11 + *a4;
  result = swift_beginAccess();
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_1001C8254(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C828C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 20);
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

uint64_t sub_1001C8324()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C836C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C83A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 24);
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

uint64_t sub_1001C843C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C8484(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C84BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 28);
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

uint64_t sub_1001C8554()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C859C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C85D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 32);
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

uint64_t sub_1001C866C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C869C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C86C8(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1001C86F8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C8784()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  *(v0 + *(result + 36)) = 6;
  return result;
}

uint64_t sub_1001C87C4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C87FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 40);
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

uint64_t sub_1001C8894()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C88DC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8914(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 44);
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

uint64_t sub_1001C89AC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C89F4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8A2C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 48);
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

uint64_t sub_1001C8AC4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C8B0C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8B44(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0) + 52);
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

uint64_t sub_1001C8BDC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001C8C0C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
  *(a1 + result[9]) = 6;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1001C8CE0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8D18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 24);
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

uint64_t sub_1001C8DB0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C8DF8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8E30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 28);
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

uint64_t sub_1001C8EC8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C8F10(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C8F48(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0) + 32);
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

uint64_t sub_1001C8FE0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C9088@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
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
  return result;
}

uint64_t sub_1001C9100()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C912C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C915C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_1001C91E8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  *(v0 + *(result + 20)) = 7;
  return result;
}

uint64_t sub_1001C9210@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424020, &qword_1003834F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100424020, &qword_1003834F0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v9 = a1 + v7[6];
  *v9 = 0;
  v9[4] = 1;
  v10 = a1 + v7[7];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v7[8];
  *v11 = 0;
  v11[4] = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424020, &qword_1003834F0);
  }

  return result;
}

uint64_t sub_1001C93A8(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100424020, &qword_1003834F0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C9460(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424020, &qword_1003834F0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424020, &qword_1003834F0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v16 = v13 + v8[6];
    *v16 = 0;
    v16[4] = 1;
    v17 = v13 + v8[7];
    *v17 = 0;
    v17[4] = 1;
    v18 = v13 + v8[8];
    *v18 = 0;
    v18[4] = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424020, &qword_1003834F0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  }

  return sub_1001C96B0;
}

uint64_t sub_1001C97AC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001C97D8(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001C9808(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001C9894()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001C98D4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C990C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 24);
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

uint64_t sub_1001C99A4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C99EC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C9A24(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 28);
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

uint64_t sub_1001C9ABC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C9B04(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C9B3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 32);
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

uint64_t sub_1001C9BD4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C9C1C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001C9C54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 36);
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

uint64_t sub_1001C9CEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001C9D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(v1 + *(v6 + 40), v5, &qword_100424028, &qword_1003834F8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 6;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424028, &qword_1003834F8);
  }

  return result;
}

uint64_t sub_1001C9EC0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  sub_1000059A8(v1 + v3, &qword_100424028, &qword_1003834F8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001C9F78(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424028, &qword_1003834F8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 40);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424028, &qword_1003834F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 6;
    v16 = *(v8 + 24);
    v17 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424028, &qword_1003834F8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
  }

  return sub_1001CA1D4;
}

BOOL sub_1001CA24C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 40), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001CA384(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 40);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001CA448(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CA480(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 44);
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

uint64_t sub_1001CA518()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CA548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424030, &qword_100383500);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  sub_10000A0A4(v1 + *(v6 + 48), v5, &qword_100424030, &qword_100383500);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 7;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424030, &qword_100383500);
  }

  return result;
}

uint64_t sub_1001CA6EC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  sub_1000059A8(v1 + v3, &qword_100424030, &qword_100383500);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001CA7A4(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424030, &qword_100383500) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0) + 48);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424030, &qword_100383500);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 7;
    v16 = *(v8 + 24);
    v17 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424030, &qword_100383500);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  }

  return sub_1001CAA00;
}

uint64_t sub_1001CAAB4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  *(a1 + v2[5]) = 6;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v2[12];
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a1 + v10, 1, 1, v11);
}

uint64_t sub_1001CAC28(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CAC60(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 20);
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

uint64_t sub_1001CACF8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CAD40(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CAD78(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 24);
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

uint64_t sub_1001CAE10()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CAE58(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CAE90(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 28);
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

uint64_t sub_1001CAF28()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CAF70(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CAFA8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 32);
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

uint64_t sub_1001CB040()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CB088(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CB0C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 36);
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

uint64_t sub_1001CB158()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CB1A0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CB1D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 40);
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

uint64_t sub_1001CB270()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CB2A0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001CB2CC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1001CB2FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001CB388()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  *(v0 + *(result + 44)) = 6;
  return result;
}

uint64_t sub_1001CB3C8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CB400(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 48);
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

uint64_t sub_1001CB498()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001CB4E0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001CB518(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0) + 52);
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

uint64_t sub_1001CB5B0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001CB5E0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
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
  *(a1 + result[11]) = 6;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1001CB6F4(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v11 + 16) = a1;
  *(v11 + 20) = 0;
  return result;
}

void (*sub_1001CB7A4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CB850;
}

void sub_1001CB87C(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v11 + 16) = v7;
  *(v11 + 20) = 0;

  free(v6);
}

uint64_t sub_1001CB9B0(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
  *(v9 + 16) = 0;
  *(v9 + 20) = 1;
  return result;
}

uint64_t sub_1001CBA7C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 28))
  {
    return 0;
  }

  else
  {
    return *(v2 + 24);
  }
}

uint64_t sub_1001CBADC(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022547C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 28) = 0;
  return result;
}

void (*sub_1001CBB78(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CBC24;
}

void sub_1001CBC24(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_10022547C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 28) = 0;

  free(v2);
}

BOOL sub_1001CBD08(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 28) & 1) == 0;
}

uint64_t sub_1001CBD64()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    sub_10022547C(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 28) = 1;
  return result;
}

uint64_t sub_1001CBE10(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 36))
  {
    return 0;
  }

  else
  {
    return *(v2 + 32);
  }
}

uint64_t sub_1001CBE70(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022547C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 32) = a1;
  *(v6 + 36) = 0;
  return result;
}

void (*sub_1001CBF0C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CBFB8;
}

void sub_1001CBFB8(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_10022547C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 32) = v3;
  *(v7 + 36) = 0;

  free(v2);
}

BOOL sub_1001CC09C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 36) & 1) == 0;
}

uint64_t sub_1001CC0F8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    sub_10022547C(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 36) = 1;
  return result;
}

uint64_t sub_1001CC1A4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 44))
  {
    return 0;
  }

  else
  {
    return *(v2 + 40);
  }
}

uint64_t sub_1001CC204(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022547C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 44) = 0;
  return result;
}

void (*sub_1001CC2A0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CC34C;
}

void sub_1001CC34C(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_10022547C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 44) = 0;

  free(v2);
}

BOOL sub_1001CC430(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 44) & 1) == 0;
}

uint64_t sub_1001CC48C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v5 = swift_allocObject();
    sub_10022547C(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 40) = 0;
  *(v4 + 44) = 1;
  return result;
}

uint64_t sub_1001CC520()
{
  type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  swift_beginAccess();
}

uint64_t sub_1001CC570(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022547C(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 48) = a1;
}

void (*sub_1001CC610(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 48);

  return sub_1001CC6B8;
}

void sub_1001CC6B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v10 = swift_allocObject();
      v11 = v7;
      v7 = v10;
      sub_10022547C(v11);
      *(v9 + v8) = v10;
    }

    swift_beginAccess();
    *(v7 + 48) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v16 = swift_allocObject();
      v17 = v13;
      v13 = v16;
      sub_10022547C(v17);
      *(v15 + v14) = v16;
    }

    swift_beginAccess();
    *(v13 + 48) = v3;
  }

  free(v2);
}

uint64_t sub_1001CC7E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424038, &qword_100383508);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 6;
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424038, &qword_100383508);
  }

  return result;
}

uint64_t sub_1001CC9B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022547C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424038, &qword_100383508);
  return swift_endAccess();
}

void (*sub_1001CCB1C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424038, &qword_100383508) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424038, &qword_100383508);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 6;
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424038, &qword_100383508);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
  }

  return sub_1001CCDB8;
}

void sub_1001CCDB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022547C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424038, &qword_100383508);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
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
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022547C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424038, &qword_100383508);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001CD008()
{
  v1 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424038, &qword_100383508);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424038, &qword_100383508);
  return v7;
}

uint64_t sub_1001CD128()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424038, &qword_100383508);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022547C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__measuredTimeParams;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424038, &qword_100383508);
  return swift_endAccess();
}

void (*sub_1001CD29C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__codePhaseAmbiguity;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CD354;
}

uint64_t sub_1001CD3B8(int a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_10022547C(v10);
    *(v4 + v6) = v9;
  }

  v11 = v8 + *a2;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 4) = 0;
  return result;
}

void (*sub_1001CD460(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTodpresent;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CD518;
}

void sub_1001CD524(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v12 = swift_allocObject();
    v13 = v9;
    v9 = v12;
    sub_10022547C(v13);
    *(v11 + v10) = v12;
  }

  v14 = v9 + *a3;
  swift_beginAccess();
  *v14 = v5;
  *(v14 + 4) = 0;

  free(v4);
}

uint64_t sub_1001CD628(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022547C(v8);
    *(v3 + v4) = v7;
  }

  v9 = v6 + *a1;
  result = swift_beginAccess();
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_1001CD6D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F58, &qword_100383428);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F58, &qword_100383428);
  }

  return result;
}

uint64_t sub_1001CD87C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022547C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F58, &qword_100383428);
  return swift_endAccess();
}

void (*sub_1001CD9E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423F58, &qword_100383428) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F58, &qword_100383428);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F58, &qword_100383428);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return sub_1001CDC68;
}

void sub_1001CDC68(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022547C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F58, &qword_100383428);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
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
      type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022547C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F58, &qword_100383428);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001CDEB8()
{
  v1 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F58, &qword_100383428);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F58, &qword_100383428);
  return v7;
}

uint64_t sub_1001CDFD8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022547C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsTod;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F58, &qword_100383428);
  return swift_endAccess();
}

uint64_t sub_1001CE194(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 16) == 9)
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

uint64_t sub_1001CE230(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a1;
  return result;
}

void (*sub_1001CE2EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001CE394;
}

void sub_1001CE3C0(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 80);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 16) = v7;

  free(v6);
}

BOOL sub_1001CE4B8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return *(v2 + 16) != 9;
}

uint64_t sub_1001CE554(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 16) = 9;
  return result;
}

uint64_t sub_1001CE624(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 24))
  {
    return 0;
  }

  else
  {
    return *(v2 + 20);
  }
}

uint64_t sub_1001CE6C4(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    a4(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 20) = a1;
  *(v11 + 24) = 0;
  return result;
}

void (*sub_1001CE784(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001CE830;
}

void sub_1001CE85C(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 20) = v7;
  *(v11 + 24) = 0;

  free(v6);
}

BOOL sub_1001CE958(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 24) & 1) == 0;
}

uint64_t sub_1001CE9F4(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    a3(v9);

    *(v6 + v7) = v10;
    v9 = v10;
  }

  result = swift_beginAccess();
  *(v9 + 20) = 0;
  *(v9 + 24) = 1;
  return result;
}

uint64_t sub_1001CEAD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_100247F54(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

void (*sub_1001CEC44(uint64_t *a1))(uint64_t *a1, char a2)
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

  return sub_1001CEEBC;
}

void sub_1001CEEBC(uint64_t *a1, char a2)
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_100247F54(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_100247F54(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
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

BOOL sub_1001CF11C()
{
  v1 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FF8, &qword_1003834C8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FF8, &qword_1003834C8);
  return v7;
}

uint64_t sub_1001CF23C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_100247F54(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

uint64_t sub_1001CF3AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_100247F54(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424040, &qword_100383510);
  return swift_endAccess();
}

void (*sub_1001CF520(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424040, &qword_100383510) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424040, &qword_100383510);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100461320 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100461328;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100424040, &qword_100383510);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  return sub_1001CF7B8;
}

void sub_1001CF7B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_100247F54(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424040, &qword_100383510);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_100247F54(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424040, &qword_100383510);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001CFA18()
{
  v1 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424040, &qword_100383510);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424040, &qword_100383510);
  return v7;
}

uint64_t sub_1001CFB38()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_100247F54(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424040, &qword_100383510);
  return swift_endAccess();
}

uint64_t sub_1001CFC88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424048, &qword_100383518);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 6;
  v10 = a1 + v8[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[10];
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v8[12];
  v18 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424048, &qword_100383518);
  }

  return result;
}

uint64_t sub_1001CFEF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v10 = swift_allocObject();
    sub_100247F54(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100424048, &qword_100383518);
  return swift_endAccess();
}

void (*sub_1001D0064(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424048, &qword_100383518) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424048, &qword_100383518);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[9];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v8[10];
    v23 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    v24 = v13 + v8[11];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v8[12];
    v26 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
    (*(*(v26 - 8) + 56))(v13 + v25, 1, 1, v26);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424048, &qword_100383518);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
  }

  return sub_1001D0398;
}

void sub_1001D0398(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_100247F54(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424048, &qword_100383518);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_100247F54(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424048, &qword_100383518);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D05F8()
{
  v1 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424048, &qword_100383518);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424048, &qword_100383518);
  return v7;
}

uint64_t sub_1001D0718()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReport._StorageClass(0);
    v8 = swift_allocObject();
    sub_100247F54(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_100424048, &qword_100383518);
  return swift_endAccess();
}

void (*sub_1001D08D0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001D0988;
}

void (*sub_1001D0A8C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1001D0B38;
}

uint64_t sub_1001D0C48(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D0C80(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 28);
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

uint64_t sub_1001D0D18()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D0D60(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D0D98(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 32);
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

uint64_t sub_1001D0E30()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D0E78(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D0EB0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 36);
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

uint64_t sub_1001D0F48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D0F90(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D0FC8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 40);
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

uint64_t sub_1001D1060()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D10A8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D10E0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0) + 44);
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

uint64_t sub_1001D1178()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1250(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1288(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 20);
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

uint64_t sub_1001D1320()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1368(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D13A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0) + 24);
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

uint64_t sub_1001D1438()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeModelElem(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1498(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D14D0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 24);
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

uint64_t sub_1001D1568()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D15B0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D15E8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 28);
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

uint64_t sub_1001D1680()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D16C8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1700(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 32);
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

uint64_t sub_1001D1798()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D17E0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1818(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 36);
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

uint64_t sub_1001D18B0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D18F8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1930(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0) + 40);
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

uint64_t sub_1001D19C8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1A70@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
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
  return result;
}

uint64_t sub_1001D1B20(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1B58(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 20);
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

uint64_t sub_1001D1BF0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1C38(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1C70(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0) + 24);
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

uint64_t sub_1001D1D08()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1D68(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1DA0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 24);
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

uint64_t sub_1001D1E38()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1E80(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1EB8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 28);
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

uint64_t sub_1001D1F50()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D1F98(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D1FD0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 32);
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

uint64_t sub_1001D2068()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D20B0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D20E8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0) + 36);
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

uint64_t sub_1001D2180()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D2228@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
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
  return result;
}

uint64_t sub_1001D22C8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D2300(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 20);
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

uint64_t sub_1001D2398()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D23E0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D2418(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 24);
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

uint64_t sub_1001D24B0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D24F8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D2530(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 28);
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

uint64_t sub_1001D25C8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D2610(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D2648(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0) + 32);
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

uint64_t sub_1001D26E0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001D2728@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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
  v8 = a2 + result[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1001D27A0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1001D2834(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v11 + 16) = a1;
  return result;
}

void (*sub_1001D28E0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001D2988;
}

void sub_1001D29B4(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 84);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 80);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    v15 = v11;
    v11 = v14;
    a4(v15);
    *(v13 + v12) = v14;
  }

  swift_beginAccess();
  *(v11 + 16) = v7;

  free(v6);
}

BOOL sub_1001D2A8C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 7;
}

uint64_t sub_1001D2B24(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
{
  v8 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a3(v13);
    *(v8 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 16) = a4;
  return result;
}

void (*sub_1001D2C2C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001D2CD8;
}

uint64_t sub_1001D2D5C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
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

uint64_t sub_1001D2DB4(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022C1AC(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 28) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*sub_1001D2E50(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001D2EFC;
}

void sub_1001D2EFC(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_10022C1AC(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 28) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL sub_1001D2FC8()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_1001D301C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v5 = swift_allocObject();
    sub_10022C1AC(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 28) = 0;
  *(v4 + 32) = 1;
  return result;
}

uint64_t sub_1001D30B0()
{
  type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0);
  swift_beginAccess();
}

uint64_t sub_1001D3100(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_10022C1AC(v8);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  *(v6 + 40) = a1;
}

void (*sub_1001D31A0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 40);

  return sub_1001D3248;
}

void sub_1001D3248(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v10 = swift_allocObject();
      v11 = v7;
      v7 = v10;
      sub_10022C1AC(v11);
      *(v9 + v8) = v10;
    }

    swift_beginAccess();
    *(v7 + 40) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v16 = swift_allocObject();
      v17 = v13;
      v13 = v16;
      sub_10022C1AC(v17);
      *(v15 + v14) = v16;
    }

    swift_beginAccess();
    *(v13 + 40) = v3;
  }

  free(v2);
}

uint64_t sub_1001D3378@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424050, &qword_100383520);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424050, &qword_100383520);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
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
  v14 = a1 + v8[10];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424050, &qword_100383520);
  }

  return result;
}

uint64_t sub_1001D3554(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424050, &qword_100383520);
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

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424050, &qword_100383520);
  return swift_endAccess();
}

void (*sub_1001D36C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424050, &qword_100383520) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
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
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424050, &qword_100383520);
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
    v22 = v13 + v8[10];
    *v22 = 0;
    v22[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424050, &qword_100383520);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
  }

  return sub_1001D3970;
}

void sub_1001D3970(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
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
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424050, &qword_100383520);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
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
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424050, &qword_100383520);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D3BC0()
{
  v1 = sub_100024A2C(&qword_100424050, &qword_100383520);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424050, &qword_100383520);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424050, &qword_100383520);
  return v7;
}

uint64_t sub_1001D3CE0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424050, &qword_100383520);
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

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssDataBitAssist;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424050, &qword_100383520);
  return swift_endAccess();
}