void sub_100063968(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_100094134(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DA8, &qword_10036D918);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
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
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_100094134(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DA8, &qword_10036D918);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100063BB8()
{
  v1 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DA8, &qword_10036D918);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DA8, &qword_10036D918);
  return v7;
}

uint64_t sub_100063CD8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100094134(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DA8, &qword_10036D918);
  return swift_endAccess();
}

uint64_t sub_100063E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100418DB0, &qword_10036D920);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + *(v8 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100418DB0, &qword_10036D920);
  }

  return result;
}

uint64_t sub_100063FF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100094134(v11);
    *(v2 + v7) = v10;
  }

  sub_10009E724(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418DB0, &qword_10036D920);
  return swift_endAccess();
}

void (*sub_100064164(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DB0, &qword_10036D920) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DB0, &qword_10036D920);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + *(v8 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DB0, &qword_10036D920);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  return sub_100064408;
}

void sub_100064408(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_100094134(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DB0, &qword_10036D920);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
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
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_100094134(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DB0, &qword_10036D920);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100064658()
{
  v1 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DB0, &qword_10036D920);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DB0, &qword_10036D920);
  return v7;
}

uint64_t sub_100064778()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100094134(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DB0, &qword_10036D920);
  return swift_endAccess();
}

uint64_t sub_100064934(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10006496C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
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

uint64_t sub_100064A04()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100064A4C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064A84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100064B20()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100064B68(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064BA0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100064C3C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_100064C84(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064CBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100064D58()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100064DA0(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100064DE0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064E18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100064EB4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100064EE4()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100064F1C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100064F54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100064FF0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100065020()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100065058(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100065090(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_10006512C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_10006515C()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100065194(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000651CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_100065268()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

float sub_100065298()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000652D0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_100065308(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  *(a1 + 12) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 4))
  {
    v5 = 0.0;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1000653A4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1000653D4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
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
  return result;
}

uint64_t sub_1000654AC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000654E4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 20);
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

uint64_t sub_100065580()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000655C8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100065600(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 24);
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

uint64_t sub_10006569C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000656E4(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_10006571C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 28);
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

uint64_t sub_1000657B8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100065800@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100418D10, &qword_10036D880);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = *(v7 + 24);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100418D10, &qword_10036D880);
  }

  return result;
}

uint64_t sub_1000659AC(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100418D10, &qword_10036D880);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_100065A64(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418D10, &qword_10036D880) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418D10, &qword_10036D880);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = *(v8 + 24);
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return sub_100065CC8;
}

uint64_t sub_100065D7C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24));
  if (v1 == 13)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100065DA8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_100065DD8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 13)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100065E64()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v0 + *(result + 24)) = 13;
  return result;
}

uint64_t sub_100065E8C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100065EB8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_100065EE8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_100065F74()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v0 + *(result + 28)) = 4;
  return result;
}

uint64_t sub_100065F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_100418DB8, &qword_10036D928);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100418DB8, &qword_10036D928);
  }

  return result;
}

uint64_t sub_100066124(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418DB8, &qword_10036D928);
  sub_10009E724(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1000661DC(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DB8, &qword_10036D928) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418DB8, &qword_10036D928);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DB8, &qword_10036D928);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  return sub_10006641C;
}

void sub_100066458(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_10009E78C(v12, v11, a6);
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10009E724(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_10009E7F4(v12, a6);
  }

  else
  {
    sub_1000059A8(v15 + v10, a3, a4);
    sub_10009E724(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t sub_10006660C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 13;
  *(a1 + v2[7]) = 4;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_100066740(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100066778(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 20);
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

uint64_t sub_100066814()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_10006685C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_100066894(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 24);
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

uint64_t sub_100066930()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100066978(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000669B0(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 28);
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

uint64_t sub_100066A4C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_100066A94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100418DC0, &qword_10036D930);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
    return sub_1000059A8(v5, &qword_100418DC0, &qword_10036D930);
  }

  return result;
}

uint64_t sub_100066C40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10009973C(v11);
    *(v2 + v7) = v10;
  }

  sub_10009E724(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418DC0, &qword_10036D930);
  return swift_endAccess();
}

void (*sub_100066DAC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DC0, &qword_10036D930) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DC0, &qword_10036D930);
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
      sub_1000059A8(v7, &qword_100418DC0, &qword_10036D930);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  return sub_10006702C;
}

void sub_10006702C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      sub_10009973C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DC0, &qword_10036D930);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v22 = swift_allocObject();
      sub_10009973C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DC0, &qword_10036D930);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10006727C()
{
  v1 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DC0, &qword_10036D930);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DC0, &qword_10036D930);
  return v7;
}

uint64_t sub_10006739C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10009973C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DC0, &qword_10036D930);
  return swift_endAccess();
}

uint64_t sub_1000674E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100418DC8, &qword_10036D938);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_1004370B0 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1004370B8;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v5, &qword_100418DC8, &qword_10036D938);
  }

  return result;
}

uint64_t sub_1000676B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10009973C(v11);
    *(v2 + v7) = v10;
  }

  sub_10009E724(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418DC8, &qword_10036D938);
  return swift_endAccess();
}

void (*sub_10006781C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DC8, &qword_10036D938) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DC8, &qword_10036D938);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_1004370B0 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_1004370B8;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418DC8, &qword_10036D938);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  return sub_100067AB4;
}

void sub_100067AB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      sub_10009973C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DC8, &qword_10036D938);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
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
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v22 = swift_allocObject();
      sub_10009973C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DC8, &qword_10036D938);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100067D04()
{
  v1 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DC8, &qword_10036D938);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DC8, &qword_10036D938);
  return v7;
}

uint64_t sub_100067E24()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10009973C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DC8, &qword_10036D938);
  return swift_endAccess();
}

void (*sub_100067FD4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100068084;
}

void (*sub_100068120(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000681D0;
}

uint64_t sub_100068204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100418DD0, &qword_10036D940);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100437168 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100437170;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v5, &qword_100418DD0, &qword_10036D940);
  }

  return result;
}

uint64_t sub_1000683D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10009973C(v11);
    *(v2 + v7) = v10;
  }

  sub_10009E724(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418DD0, &qword_10036D940);
  return swift_endAccess();
}

void (*sub_10006853C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DD0, &qword_10036D940) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DD0, &qword_10036D940);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100437168 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100437170;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_100418DD0, &qword_10036D940);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  return sub_1000687D4;
}

void sub_1000687D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      sub_10009973C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DD0, &qword_10036D940);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
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
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v22 = swift_allocObject();
      sub_10009973C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DD0, &qword_10036D940);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100068A24()
{
  v1 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DD0, &qword_10036D940);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DD0, &qword_10036D940);
  return v7;
}

uint64_t sub_100068B44()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10009973C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DD0, &qword_10036D940);
  return swift_endAccess();
}

void (*sub_100068CB8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100068D74;
}

uint64_t sub_100068E3C(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v9 = swift_allocObject();
    v10 = v8;
    v8 = v9;
    sub_10009973C(v10);
    *(v4 + v6) = v9;
  }

  v11 = v8 + *a1;
  result = swift_beginAccess();
  *v11 = a2;
  *(v11 + 8) = 0;
  return result;
}

void (*sub_100068EEC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_100068FA8;
}

uint64_t sub_100069044@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100418DD8, &qword_10036D948);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_10009E724(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
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
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v8[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100418DD8, &qword_10036D948);
  }

  return result;
}

uint64_t sub_100069250(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10009973C(v11);
    *(v2 + v7) = v10;
  }

  sub_10009E724(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100418DD8, &qword_10036D948);
  return swift_endAccess();
}

void (*sub_1000693BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418DD8, &qword_10036D948) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100418DD8, &qword_10036D948);
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
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[11];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[12];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[13];
    *v26 = 0;
    *(v26 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418DD8, &qword_10036D948);
    }
  }

  else
  {
    sub_10009E724(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  return sub_10006969C;
}

void sub_10006969C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_10009E78C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      sub_10009973C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100418DD8, &qword_10036D948);
    swift_endAccess();
    sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
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
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v22 = swift_allocObject();
      sub_10009973C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_10009E724(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100418DD8, &qword_10036D948);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000698EC()
{
  v1 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100418DD8, &qword_10036D948);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100418DD8, &qword_10036D948);
  return v7;
}

uint64_t sub_100069A0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10009973C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100418DD8, &qword_10036D948);
  return swift_endAccess();
}

void (*sub_100069BBC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_100069C6C;
}

uint64_t sub_100069CFC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_100069D5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329D0);
  sub_100005DF0(v0, qword_1004329D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GLONASS_SLOT_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GLONASS_SLOT_SOURCE_UNSET";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GLONASS_SLOT_SOURCE_UNCLEAR";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GLONASS_SLOT_SOURCE_DECODED_OVER_THE_AIR";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "GLONASS_SLOT_SOURCE_POSITION_KNOWLEDGE";
  *(v15 + 8) = 38;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A058()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004329E8);
  sub_100005DF0(v0, qword_1004329E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SATELLITE_SYSTEM_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SATELLITE_SYSTEM_GPS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SATELLITE_SYSTEM_GLONASS";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SATELLITE_SYSTEM_BEIDOU";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "SATELLITE_SYSTEM_GALILEO";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "SATELLITE_SYSTEM_QZSS";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "SATELLITE_SYSTEM_SBAS";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "SATELLITE_SYSTEM_NAVIC";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A410()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A00);
  sub_100005DF0(v0, qword_100432A00);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "BAND_PROTOBUF_DEFAULT";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "BAND_UNSET";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BAND_GPS_QZSS_L1CA";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "BAND_GPS_QZSS_L2C";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "BAND_GPS_QZSS_L5";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "BAND_GLONASS_L1F";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "BAND_BEIDOU_B1i";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "BAND_BEIDOU_B2a";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "BAND_GALILEO_E1";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "BAND_GALILEO_E5a";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "BAND_SBAS_L1";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "BAND_BEIDOU_B1c";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "BAND_NAVIC_L5";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006A8E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A18);
  sub_100005DF0(v0, qword_100432A18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FULL_SV_TIME_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FULL_SV_TIME_SOURCE_UNSET";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FULL_SV_TIME_SOURCE_NEWLY_DECODED_FROM_SV";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FULL_SV_TIME_SOURCE_PREV_DECODED_FROM_SV";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FULL_SV_TIME_SOURCE_POSITION_AND_OTHER_SV_TIME";
  *(v16 + 1) = 46;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FULL_SV_TIME_SOURCE_POSITION_ONLY";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006AC14()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A30);
  sub_100005DF0(v0, qword_100432A30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEASUREMENT_DETECTION_METHOD_PROTOBUF_DEFAULT";
  *(v6 + 8) = 45;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MEASUREMENT_DETECTION_METHOD_UNSET";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MEASUREMENT_DETECTION_METHOD_NOT_DETECTED";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MEASUREMENT_DETECTION_METHOD_ENERGY_BINS";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MEASUREMENT_DETECTION_METHOD_CODE_TRACKING";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "MEASUREMENT_DETECTION_METHOD_FREQUENCY_TRACKING";
  *(v18 + 1) = 47;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "MEASUREMENT_DETECTION_METHOD_PHASE_TRACKING";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006AF84()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A48);
  sub_100005DF0(v0, qword_100432A48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "MULTIPATH_INDICATOR_PROTOBUF_DEFAULT";
  *(v5 + 8) = 36;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "MULTIPATH_INDICATOR_UNSET";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MULTIPATH_INDICATOR_UNKNOWN";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MULTIPATH_INDICATOR_PRESENT";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "MULTIPATH_INDICATOR_NOT_PRESENT";
  *(v14 + 8) = 31;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B278()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A60);
  sub_100005DF0(v0, qword_100432A60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SV_POSITION_SOURCE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SV_POSITION_SOURCE_UNSET";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SV_POSITION_SOURCE_EPHEMERIS_OVER_THE_AIR";
  *(v12 + 1) = 41;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SV_POSITION_SOURCE_BROADCAST_EPHEMERIS_FILE";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SV_POSITION_SOURCE_LONG_TERM_ORBIT_MOBILE_CALC_deprecated";
  *(v16 + 1) = 57;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SV_POSITION_SOURCE_LONG_TERM_PREDICTIONS_FILE";
  *(v18 + 1) = 45;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SV_POSITION_SOURCE_SHORT_TERM_PREDICTIONS_FILE";
  *(v20 + 1) = 46;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B5E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A78);
  sub_100005DF0(v0, qword_100432A78);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "SV_HEALTH_INDICATION_PROTOBUF_DEFAULT";
  *(v5 + 8) = 37;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SV_HEALTH_INDICATION_UNSET";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SV_HEALTH_INDICATION_UNKNOWN";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SV_HEALTH_INDICATION_HEALTHY";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "SV_HEALTH_INDICATION_UNHEALTHY";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006B8DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432A90);
  sub_100005DF0(v0, qword_100432A90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IONO_CORR_SOURCE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IONO_CORR_SOURCE_KLOBUCHAR_MODEL";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IONO_CORR_SOURCE_GLOBAL_PREDICTIONS";
  *(v11 + 8) = 35;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006BB58()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AA8);
  sub_100005DF0(v0, qword_100432AA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_DEFAULT";
  *(v6 + 8) = 45;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_UNSET";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_UNKNOWN";
  *(v12 + 1) = 45;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_NOT_CHANGING";
  *(v14 + 1) = 50;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "LEAP_SECOND_CHANGE_KNOWLEDGE_PROTOBUF_CHANGING";
  *(v15 + 8) = 46;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006BE54()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AC0);
  sub_100005DF0(v0, qword_100432AC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "GLONASS_LEAP_SECOND_PROTOBUF_DEFAULT";
  *(v4 + 8) = 36;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "GLONASS_LEAP_SECOND_UNSET";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "GLONASS_LEAP_SECOND_NONE";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "GLONASS_LEAP_SECOND_POSITIVE";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "GLONASS_LEAP_SECOND_NEGATIVE";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "GLONASS_LEAP_SECOND_NOT_YET_DEFINED";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006C180()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432AD8);
  sub_100005DF0(v0, qword_100432AD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SV_REFERENCE_POINT_UNKNOWN";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SV_REFERENCE_POINT_CENTER_OF_MASS";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SV_REFERENCE_POINT_L1_ANTENNA";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SV_REFERENCE_POINT_L5_ANTENNA";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006C4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
        sub_1000AEADC();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006C5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 5)
  {
    sub_1000AEADC();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006C6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 5;
  return result;
}

uint64_t sub_10006C74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C418, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &unk_10036E988);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006C7EC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &unk_10036E910);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C858(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &unk_10036E910);

  return Message.hash(into:)();
}

uint64_t sub_10006C920(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  sub_100036108(v7, a2);
  sub_100005DF0(v7, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v8 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10036C830;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.standard(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006CB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
        sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &unk_10036E910);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418C90, &qword_10036D800);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418C90, &qword_10036D800);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418C90, &qword_10036D800);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  sub_1000A5BD8(&qword_100419158, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &unk_10036E910);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
}

uint64_t sub_10006CF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C410, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &unk_10036EAF0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006CFCC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &unk_10036EA78);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006D038(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &unk_10036EA78);

  return Message.hash(into:)();
}

uint64_t sub_10006D0E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B20);
  sub_100005DF0(v0, qword_100432B20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10036C820;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "gps_prn";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "glonass_id";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "beidou_ranging_code";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "galileo_spreading_code";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "qzss_prn";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sbas_prn";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "navic_prn";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006D428(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
            sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &unk_10036EA78);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      else if (result <= 6 || result == 7)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006D5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10006D72C(v5, a1, a2, a3);
  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10006D948(v5, a1, a2, a3);
  sub_10006D9C0(v5, a1, a2, a3);
  sub_10006DA38(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418C98, &qword_10036D808);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418C98, &qword_10036D808);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418C98, &qword_10036D808);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  sub_1000A5BD8(&qword_100419170, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &unk_10036EA78);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
}

uint64_t sub_10006D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006DAFC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_10006DBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C408, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &unk_10036EC58);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006DC98(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &unk_10036EBE0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006DD04(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &unk_10036EBE0);

  return Message.hash(into:)();
}

uint64_t sub_10006DDAC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B38);
  sub_100005DF0(v0, qword_100432B38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "constel_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006DFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
        type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
        sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &unk_10036EBE0);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10006E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = a4(0);
  v15 = (v10 + *(result + 20));
  if (v15[1])
  {
    if (v7)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v15, 1, a2, a3);
    if (v7)
    {
      return result;
    }
  }

  a6(v10, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418CA0, &qword_10036D810);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418CA0, &qword_10036D810);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CA0, &qword_10036D810);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  sub_1000A5BD8(&qword_100419188, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &unk_10036EBE0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
}

uint64_t sub_10006E47C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = a3 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a3 + v7, 1, 1, v9);
}

uint64_t sub_10006E52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C400, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036EDC0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006E5CC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E638(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);

  return Message.hash(into:)();
}

uint64_t sub_10006E804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3F8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &unk_10036EF28);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006E8A4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &unk_10036EEB0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E910(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &unk_10036EEB0);

  return Message.hash(into:)();
}

uint64_t sub_10006E9B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B68);
  sub_100005DF0(v0, qword_100432B68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cm_code_lock";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cl_code_lock";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "c_nav_bit";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "c_nav_frame";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "tow_decoded";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006ED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3F0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &unk_10036F090);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006EE18(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &unk_10036F018);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006EE84(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &unk_10036F018);

  return Message.hash(into:)();
}

uint64_t sub_10006EF28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B80);
  sub_100005DF0(v0, qword_100432B80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "code_lock";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "c_nav_bit";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "c_nav_frame";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tow_decoded";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          a4(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10006F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + result[5]) == 2)
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v4 + v7[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v4 + v7[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006F4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &unk_10036F1F8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006F540(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &unk_10036F180);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006F5AC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &unk_10036F180);

  return Message.hash(into:)();
}

uint64_t sub_10006F650()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432B98);
  sub_100005DF0(v0, qword_100432B98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "code_lock";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "symbol";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "nav_bit";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "string";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "tod_decoded";
  *(v14 + 8) = 11;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10006F960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v7)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          a4(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10006FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = v5;
  result = a4(0);
  v13 = result;
  if (*(v8 + result[5]) == 2)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v6)
    {
      return result;
    }
  }

  if (*(v8 + v13[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v8 + v13[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10006FBFC(v8, a1, a2, a3, a5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10006FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10006FCF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_10006FD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3E0, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &unk_10036F360);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10006FDDC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &unk_10036F2E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10006FE48(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &unk_10036F2E8);

  return Message.hash(into:)();
}

uint64_t sub_100070010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3D8, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &unk_10036F4C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000700B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &unk_10036F450);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007011C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &unk_10036F450);

  return Message.hash(into:)();
}

uint64_t sub_1000701CC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_100036108(v3, a2);
  sub_100005DF0(v3, a2);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v4 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10036D7B0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "code_lock";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = enum case for _NameMap.NameDescription.standard(_:);
  v11 = type metadata accessor for _NameMap.NameDescription();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "nav_bit";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "subframe";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v12();
  v16 = (v8 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "tow_decoded";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v12();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100070530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3D0, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &unk_10036F630);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000705D0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &unk_10036F5B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007063C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &unk_10036F5B8);

  return Message.hash(into:)();
}

uint64_t sub_1000706E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432BE0);
  sub_100005DF0(v0, qword_100432BE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "e1bc_code_lock";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "e1c_code_lock";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "e1b_page";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tow_decoded";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100070A40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  return result;
}

uint64_t sub_100070A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3C8, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &unk_10036F798);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100070B24(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &unk_10036F720);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100070B90(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &unk_10036F720);

  return Message.hash(into:)();
}

uint64_t sub_100070C34()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432BF8);
  sub_100005DF0(v0, qword_100432BF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10036C7F0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "e5b_prim_code_lock";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "e5a_prim_code_lock";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "e5_alt_boc_prim_code_lock";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "e5b_data_bit";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "e5a_data_bit";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "e5b_sec_code_lock";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "e5a_sec_code_lock";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "e5b_page_sync";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "e5a_page_sync";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "tow_decoded";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100071030(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 5)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_10;
      }

LABEL_11:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 10)
    {
      goto LABEL_11;
    }

LABEL_10:
    type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
    dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    goto LABEL_11;
  }

  return result;
}

int *sub_1000711D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  sub_100071388(v5, a1, a2, a3);
  sub_100071400(v5, a1, a2, a3);
  sub_100071478(v5, a1, a2, a3);
  sub_1000714F0(v5, a1, a2, a3);
  sub_100071568(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100071388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000714F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100071568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10007162C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  v8 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[14];
  *(a2 + a1[13]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t sub_1000716C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3C0, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &unk_10036F900);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100071764(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &unk_10036F888);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000717D0(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &unk_10036F888);

  return Message.hash(into:)();
}

uint64_t sub_100071874()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C10);
  sub_100005DF0(v0, qword_100432C10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "code_lock";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "message";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100071ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_100071BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v3 + *(v6 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100071CD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_100071D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3B8, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &unk_10036FA68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100071DE4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &unk_10036F9F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100071E50(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &unk_10036F9F0);

  return Message.hash(into:)();
}

uint64_t sub_100071EF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C28);
  sub_100005DF0(v0, qword_100432C28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "band";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "gps_l1";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "gps_l2c";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gps_l5";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "glonass_l1f";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "beidou_b1";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "beidou_b2";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "galileo_e1";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "galileo_e5";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sbas_l1";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "navic_l5";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100072338()
{
  type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 13;
  v1 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v15 - 8) + 56))(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  result = (v3)(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v2);
  qword_100437018 = v0;
  return result;
}

uint64_t sub_10007263C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  __chkstk_darwin(v3 - 8);
  v86 = &v69 - v4;
  v5 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  __chkstk_darwin(v5 - 8);
  v85 = &v69 - v6;
  v7 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  __chkstk_darwin(v7 - 8);
  v84 = &v69 - v8;
  v9 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  __chkstk_darwin(v9 - 8);
  v83 = &v69 - v10;
  v11 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  __chkstk_darwin(v11 - 8);
  v82 = &v69 - v12;
  v13 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  __chkstk_darwin(v13 - 8);
  v81 = &v69 - v14;
  v15 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  __chkstk_darwin(v15 - 8);
  v79 = &v69 - v16;
  v17 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  __chkstk_darwin(v17 - 8);
  v74 = &v69 - v18;
  v19 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  __chkstk_darwin(v19 - 8);
  v70 = &v69 - v20;
  *(v1 + 16) = 13;
  v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v1 + v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v71 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v72 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v73 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v75 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v76 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v77 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v78 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  v39 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v80 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  v23(v1 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, 1, 1, v22);
  swift_beginAccess();
  v40 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v40;
  v41 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  v42 = v70;
  sub_10000A0A4(a1 + v41, v70, &qword_100418CA8, &qword_10036D818);
  swift_beginAccess();
  sub_10000AD64(v42, v1 + v21, &qword_100418CA8, &qword_10036D818);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  v44 = v74;
  sub_10000A0A4(a1 + v43, v74, &qword_100418CB0, &qword_10036D820);
  swift_beginAccess();
  sub_10000AD64(v44, v1 + v24, &qword_100418CB0, &qword_10036D820);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  v46 = v79;
  sub_10000A0A4(a1 + v45, v79, &qword_100418CB8, &qword_10036D828);
  v47 = v71;
  swift_beginAccess();
  sub_10000AD64(v46, v1 + v47, &qword_100418CB8, &qword_10036D828);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  v49 = v81;
  sub_10000A0A4(a1 + v48, v81, &qword_100418CC0, &qword_10036D830);
  v50 = v72;
  swift_beginAccess();
  sub_10000AD64(v49, v1 + v50, &qword_100418CC0, &qword_10036D830);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  v52 = v82;
  sub_10000A0A4(a1 + v51, v82, &qword_100418CC8, &qword_10036D838);
  v53 = v73;
  swift_beginAccess();
  sub_10000AD64(v52, v1 + v53, &qword_100418CC8, &qword_10036D838);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  v55 = v83;
  sub_10000A0A4(a1 + v54, v83, &qword_100418CD0, &qword_10036D840);
  v56 = v75;
  swift_beginAccess();
  sub_10000AD64(v55, v1 + v56, &qword_100418CD0, &qword_10036D840);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  v58 = v84;
  sub_10000A0A4(a1 + v57, v84, &qword_100418CD8, &qword_10036D848);
  v59 = v76;
  swift_beginAccess();
  sub_10000AD64(v58, v1 + v59, &qword_100418CD8, &qword_10036D848);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  v61 = v85;
  sub_10000A0A4(a1 + v60, v85, &qword_100418CE0, &qword_10036D850);
  v62 = v77;
  swift_beginAccess();
  sub_10000AD64(v61, v1 + v62, &qword_100418CE0, &qword_10036D850);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  v64 = v86;
  sub_10000A0A4(a1 + v63, v86, &qword_100418CE8, &qword_10036D858);
  v65 = v78;
  swift_beginAccess();
  sub_10000AD64(v64, v1 + v65, &qword_100418CE8, &qword_10036D858);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v66, v42, &qword_100418CA8, &qword_10036D818);

  v67 = v80;
  swift_beginAccess();
  sub_10000AD64(v42, v1 + v67, &qword_100418CA8, &qword_10036D818);
  swift_endAccess();
  return v1;
}

uint64_t sub_100073104()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1, &qword_100418CA8, &qword_10036D818);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C, &qword_100418CB0, &qword_10036D820);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5, &qword_100418CB8, &qword_10036D828);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F, &qword_100418CC0, &qword_10036D830);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1, &qword_100418CC8, &qword_10036D838);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2, &qword_100418CD0, &qword_10036D840);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1, &qword_100418CD8, &qword_10036D848);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5, &qword_100418CE0, &qword_10036D850);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1, &qword_100418CE8, &qword_10036D858);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, &qword_100418CA8, &qword_10036D818);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000732A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v9 = swift_allocObject();
    sub_10007263C(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 5)
      {
        break;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState;
          v14 = &unk_10036F018;
          v15 = &qword_1004191D0;
        }

        else
        {
          v12 = v4;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState;
            v14 = &unk_10036F180;
            v15 = &qword_1004191E8;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState;
            v14 = &unk_10036F2E8;
            v15 = &qword_100419200;
          }
        }

        goto LABEL_29;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_31;
        }

LABEL_21:
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState;
        v14 = &unk_10036EEB0;
        v15 = &qword_1004191B8;
        goto LABEL_29;
      }

      swift_beginAccess();
      sub_1000AEA34();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_30:
      swift_endAccess();
LABEL_31:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 8)
    {
      switch(result)
      {
        case 9:
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState;
          v14 = &unk_10036F888;
          v15 = &qword_100419260;
          break;
        case 10:
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState;
          v14 = &unk_10036F9F0;
          v15 = &qword_100419278;
          break;
        case 11:
          goto LABEL_21;
        default:
          goto LABEL_31;
      }
    }

    else if (result == 6)
    {
      v12 = v4;
      swift_beginAccess();
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
      v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState;
      v14 = &unk_10036F450;
      v15 = &qword_100419218;
    }

    else
    {
      v12 = v4;
      if (result == 7)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState;
        v14 = &unk_10036F5B8;
        v15 = &qword_100419230;
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState;
        v14 = &unk_10036F720;
        v15 = &qword_100419248;
      }
    }

LABEL_29:
    sub_1000A5BD8(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1000737D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10007398C(v9, a1, a2, a3);
  sub_100073BB4(v9, a1, a2, a3);
  sub_100073DDC(v9, a1, a2, a3);
  sub_100074004(v9, a1, a2, a3);
  sub_10007422C(v9, a1, a2, a3);
  sub_100074454(v9, a1, a2, a3);
  sub_10007467C(v9, a1, a2, a3);
  sub_1000748A4(v9, a1, a2, a3);
  sub_100074ACC(v9, a1, a2, a3);
  sub_100074CF4(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CA8, &qword_10036D818);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CA8, &qword_10036D818);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &unk_10036EEB0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

uint64_t sub_100073BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CB0, &qword_10036D820);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CB0, &qword_10036D820);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  sub_1000A5BD8(&qword_1004191D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &unk_10036F018);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
}

uint64_t sub_100073DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CB8, &qword_10036D828);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CB8, &qword_10036D828);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  sub_1000A5BD8(&qword_1004191E8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &unk_10036F180);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
}

uint64_t sub_100074004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CC0, &qword_10036D830);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CC0, &qword_10036D830);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  sub_1000A5BD8(&qword_100419200, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &unk_10036F2E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
}

uint64_t sub_10007422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CC8, &qword_10036D838);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CC8, &qword_10036D838);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  sub_1000A5BD8(&qword_100419218, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &unk_10036F450);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
}

uint64_t sub_100074454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CD0, &qword_10036D840);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CD0, &qword_10036D840);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  sub_1000A5BD8(&qword_100419230, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &unk_10036F5B8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
}

uint64_t sub_10007467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CD8, &qword_10036D848);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CD8, &qword_10036D848);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  sub_1000A5BD8(&qword_100419248, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &unk_10036F720);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
}

uint64_t sub_1000748A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CE0, &qword_10036D850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CE0, &qword_10036D850);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  sub_1000A5BD8(&qword_100419260, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &unk_10036F888);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
}

uint64_t sub_100074ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CE8, &qword_10036D858);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CE8, &qword_10036D858);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  sub_1000A5BD8(&qword_100419278, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &unk_10036F9F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
}

uint64_t sub_100074CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CA8, &qword_10036D818);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CA8, &qword_10036D818);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  sub_1000A5BD8(&qword_1004191B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &unk_10036EEB0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

BOOL sub_100074F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v217 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_100024A2C(&qword_10041C4E0, &qword_100373CD0);
  __chkstk_darwin(v216);
  v8 = &v206 - v7;
  v9 = sub_100024A2C(&qword_100418CE8, &qword_10036D858);
  v10 = __chkstk_darwin(v9 - 8);
  v212 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v219 = &v206 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v221 = *(v13 - 8);
  v222 = v13;
  __chkstk_darwin(v13);
  v213 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_100024A2C(&qword_10041C4E8, &qword_100373CD8);
  __chkstk_darwin(v220);
  v223 = &v206 - v15;
  v16 = sub_100024A2C(&qword_100418CE0, &qword_10036D850);
  v17 = __chkstk_darwin(v16 - 8);
  v238 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v225 = &v206 - v19;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v228 = *(v20 - 8);
  v229 = v20;
  __chkstk_darwin(v20);
  v218 = &v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_100024A2C(&qword_10041C4F0, &qword_100373CE0);
  __chkstk_darwin(v227);
  v230 = &v206 - v22;
  v23 = sub_100024A2C(&qword_100418CD8, &qword_10036D848);
  v24 = __chkstk_darwin(v23 - 8);
  v224 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v232 = &v206 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v235 = *(v27 - 8);
  v236 = v27;
  __chkstk_darwin(v27);
  v226 = &v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_100024A2C(&qword_10041C4F8, &qword_100373CE8);
  __chkstk_darwin(v234);
  v237 = &v206 - v29;
  v30 = sub_100024A2C(&qword_100418CD0, &qword_10036D840);
  v31 = __chkstk_darwin(v30 - 8);
  v231 = &v206 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v240 = &v206 - v33;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v243 = *(v34 - 8);
  v244 = v34;
  __chkstk_darwin(v34);
  v233 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_100024A2C(&qword_10041C500, &qword_100373CF0);
  __chkstk_darwin(v242);
  v245 = &v206 - v36;
  v37 = sub_100024A2C(&qword_100418CC8, &qword_10036D838);
  v38 = __chkstk_darwin(v37 - 8);
  v239 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v257 = &v206 - v40;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v249 = *(v41 - 8);
  v250 = v41;
  __chkstk_darwin(v41);
  v241 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_100024A2C(&qword_10041C508, &qword_100373CF8);
  __chkstk_darwin(v248);
  v251 = &v206 - v43;
  v44 = sub_100024A2C(&qword_100418CC0, &qword_10036D830);
  v45 = __chkstk_darwin(v44 - 8);
  v246 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v258 = &v206 - v47;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v254 = *(v48 - 8);
  v255 = v48;
  __chkstk_darwin(v48);
  v247 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_100024A2C(&qword_10041C510, &qword_100373D00);
  __chkstk_darwin(v253);
  v256 = &v206 - v50;
  v51 = sub_100024A2C(&qword_100418CB8, &qword_10036D828);
  v52 = __chkstk_darwin(v51 - 8);
  v265 = &v206 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v266 = &v206 - v54;
  v55 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v262 = *(v55 - 8);
  v263 = v55;
  __chkstk_darwin(v55);
  v252 = &v206 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_100024A2C(&qword_10041C518, &qword_100373D08);
  __chkstk_darwin(v261);
  v264 = &v206 - v57;
  v58 = sub_100024A2C(&qword_100418CB0, &qword_10036D820);
  v59 = __chkstk_darwin(v58 - 8);
  v259 = &v206 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v267 = &v206 - v61;
  v62 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v63 = *(v62 - 8);
  v269 = v62;
  v270 = v63;
  __chkstk_darwin(v62);
  v260 = &v206 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_100024A2C(&qword_10041C520, &qword_100373D10);
  v65 = __chkstk_darwin(v268);
  v215 = &v206 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v68 = &v206 - v67;
  v69 = sub_100024A2C(&qword_100418CA8, &qword_10036D818);
  v70 = __chkstk_darwin(v69 - 8);
  v211 = &v206 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __chkstk_darwin(v70);
  v214 = &v206 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v206 - v75;
  __chkstk_darwin(v74);
  v78 = &v206 - v77;
  swift_beginAccess();
  v79 = *(a1 + 16);
  swift_beginAccess();
  v80 = *(a2 + 16);
  if (v79 == 13)
  {
    if (v80 != 13)
    {
      return 0;
    }

LABEL_6:
    v208 = v6;
    v209 = v4;
    v210 = v8;
    v82 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v83 = a1;
    sub_10000A0A4(a1 + v82, v78, &qword_100418CA8, &qword_10036D818);
    v84 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v85 = *(v268 + 48);
    sub_10000A0A4(v78, v68, &qword_100418CA8, &qword_10036D818);
    sub_10000A0A4(a2 + v84, &v68[v85], &qword_100418CA8, &qword_10036D818);
    v86 = v269;
    v87 = v270 + 48;
    v88 = *(v270 + 48);
    if (v88(v68, 1, v269) == 1)
    {

      sub_1000059A8(v78, &qword_100418CA8, &qword_10036D818);
      v207 = v88;
      v89 = v88(&v68[v85], 1, v86);
      v90 = v83;
      if (v89 == 1)
      {
        v270 = v87;
        sub_1000059A8(v68, &qword_100418CA8, &qword_10036D818);
LABEL_13:
        v96 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v97 = v267;
        sub_10000A0A4(v90 + v96, v267, &qword_100418CB0, &qword_10036D820);
        v98 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v99 = *(v261 + 48);
        v100 = v264;
        sub_10000A0A4(v97, v264, &qword_100418CB0, &qword_10036D820);
        v101 = v100;
        sub_10000A0A4(a2 + v98, v100 + v99, &qword_100418CB0, &qword_10036D820);
        v102 = *(v262 + 48);
        v103 = v100;
        v104 = v263;
        if (v102(v103, 1, v263) == 1)
        {
          sub_1000059A8(v97, &qword_100418CB0, &qword_10036D820);
          v105 = v102(v101 + v99, 1, v104);
          v106 = v265;
          v107 = v266;
          if (v105 == 1)
          {
            sub_1000059A8(v101, &qword_100418CB0, &qword_10036D820);
            goto LABEL_20;
          }
        }

        else
        {
          v108 = v259;
          sub_10000A0A4(v101, v259, &qword_100418CB0, &qword_10036D820);
          v109 = v102(v101 + v99, 1, v104);
          v110 = v265;
          v107 = v266;
          if (v109 != 1)
          {
            v111 = v101 + v99;
            v112 = v252;
            sub_10009E724(v111, v252, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            LODWORD(v263) = sub_1000A1C88(v108, v112, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_10009E7F4(v112, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_1000059A8(v267, &qword_100418CB0, &qword_10036D820);
            sub_10009E7F4(v108, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            sub_1000059A8(v101, &qword_100418CB0, &qword_10036D820);
            v106 = v110;
            if ((v263 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_20:
            v113 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            sub_10000A0A4(v90 + v113, v107, &qword_100418CB8, &qword_10036D828);
            v114 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            v115 = *(v253 + 48);
            v116 = v256;
            sub_10000A0A4(v107, v256, &qword_100418CB8, &qword_10036D828);
            v117 = v116;
            sub_10000A0A4(a2 + v114, v116 + v115, &qword_100418CB8, &qword_10036D828);
            v118 = v255;
            v119 = *(v254 + 48);
            if (v119(v116, 1, v255) == 1)
            {
              sub_1000059A8(v107, &qword_100418CB8, &qword_10036D828);
              v120 = v119(v116 + v115, 1, v118);
              v122 = v257;
              v121 = v258;
              if (v120 == 1)
              {
                sub_1000059A8(v117, &qword_100418CB8, &qword_10036D828);
                goto LABEL_27;
              }
            }

            else
            {
              sub_10000A0A4(v116, v106, &qword_100418CB8, &qword_10036D828);
              v123 = v119(v116 + v115, 1, v118);
              v124 = v257;
              v121 = v258;
              if (v123 != 1)
              {
                v125 = v117 + v115;
                v126 = v247;
                sub_10009E724(v125, v247, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                LODWORD(v267) = sub_1000A3FAC(v106, v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_10009E7F4(v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_1000059A8(v266, &qword_100418CB8, &qword_10036D828);
                v127 = v106;
                v122 = v124;
                sub_10009E7F4(v127, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                sub_1000059A8(v117, &qword_100418CB8, &qword_10036D828);
                if ((v267 & 1) == 0)
                {
                  goto LABEL_70;
                }

LABEL_27:
                v128 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                sub_10000A0A4(v90 + v128, v121, &qword_100418CC0, &qword_10036D830);
                v129 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                v130 = *(v248 + 48);
                v117 = v251;
                sub_10000A0A4(v121, v251, &qword_100418CC0, &qword_10036D830);
                sub_10000A0A4(a2 + v129, v117 + v130, &qword_100418CC0, &qword_10036D830);
                v131 = v250;
                v132 = *(v249 + 48);
                if (v132(v117, 1, v250) == 1)
                {
                  sub_1000059A8(v121, &qword_100418CC0, &qword_10036D830);
                  if (v132(v117 + v130, 1, v131) == 1)
                  {
                    sub_1000059A8(v117, &qword_100418CC0, &qword_10036D830);
                    goto LABEL_34;
                  }
                }

                else
                {
                  v133 = v246;
                  sub_10000A0A4(v117, v246, &qword_100418CC0, &qword_10036D830);
                  if (v132(v117 + v130, 1, v131) != 1)
                  {
                    v134 = v117 + v130;
                    v135 = v241;
                    sub_10009E724(v134, v241, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    v136 = sub_1000A1C88(v133, v135, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_10009E7F4(v135, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_1000059A8(v258, &qword_100418CC0, &qword_10036D830);
                    sub_10009E7F4(v133, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    sub_1000059A8(v117, &qword_100418CC0, &qword_10036D830);
                    if ((v136 & 1) == 0)
                    {
                      goto LABEL_70;
                    }

LABEL_34:
                    v137 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    sub_10000A0A4(v90 + v137, v122, &qword_100418CC8, &qword_10036D838);
                    v138 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    v139 = *(v242 + 48);
                    v140 = v245;
                    sub_10000A0A4(v122, v245, &qword_100418CC8, &qword_10036D838);
                    v117 = v140;
                    sub_10000A0A4(a2 + v138, v140 + v139, &qword_100418CC8, &qword_10036D838);
                    v141 = v244;
                    v142 = *(v243 + 48);
                    if (v142(v140, 1, v244) == 1)
                    {
                      sub_1000059A8(v122, &qword_100418CC8, &qword_10036D838);
                      if (v142(v140 + v139, 1, v141) == 1)
                      {
                        sub_1000059A8(v140, &qword_100418CC8, &qword_10036D838);
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      v143 = v239;
                      sub_10000A0A4(v140, v239, &qword_100418CC8, &qword_10036D838);
                      if (v142(v140 + v139, 1, v141) != 1)
                      {
                        v144 = v140 + v139;
                        v145 = v233;
                        sub_10009E724(v144, v233, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        v146 = sub_1000A3FAC(v143, v145, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_10009E7F4(v145, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_1000059A8(v257, &qword_100418CC8, &qword_10036D838);
                        sub_10009E7F4(v143, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        sub_1000059A8(v140, &qword_100418CC8, &qword_10036D838);
                        if ((v146 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_41:
                        v147 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v148 = v240;
                        sub_10000A0A4(v90 + v147, v240, &qword_100418CD0, &qword_10036D840);
                        v149 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v150 = *(v234 + 48);
                        v117 = v237;
                        sub_10000A0A4(v148, v237, &qword_100418CD0, &qword_10036D840);
                        sub_10000A0A4(a2 + v149, v117 + v150, &qword_100418CD0, &qword_10036D840);
                        v151 = v236;
                        v152 = *(v235 + 48);
                        if (v152(v117, 1, v236) == 1)
                        {
                          sub_1000059A8(v148, &qword_100418CD0, &qword_10036D840);
                          v153 = v152(v117 + v150, 1, v151);
                          v154 = v238;
                          if (v153 == 1)
                          {
                            sub_1000059A8(v117, &qword_100418CD0, &qword_10036D840);
                            goto LABEL_48;
                          }
                        }

                        else
                        {
                          v155 = v231;
                          sub_10000A0A4(v117, v231, &qword_100418CD0, &qword_10036D840);
                          v156 = v150;
                          v157 = v152(v117 + v150, 1, v151);
                          v154 = v238;
                          if (v157 != 1)
                          {
                            v158 = v117 + v156;
                            v159 = v226;
                            sub_10009E724(v158, v226, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            v160 = sub_1000A3FAC(v155, v159, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_10009E7F4(v159, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_1000059A8(v240, &qword_100418CD0, &qword_10036D840);
                            sub_10009E7F4(v155, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            sub_1000059A8(v117, &qword_100418CD0, &qword_10036D840);
                            if ((v160 & 1) == 0)
                            {
                              goto LABEL_70;
                            }

LABEL_48:
                            v161 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v162 = v232;
                            sub_10000A0A4(v90 + v161, v232, &qword_100418CD8, &qword_10036D848);
                            v163 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v164 = *(v227 + 48);
                            v165 = v230;
                            sub_10000A0A4(v162, v230, &qword_100418CD8, &qword_10036D848);
                            v117 = v165;
                            sub_10000A0A4(a2 + v163, v165 + v164, &qword_100418CD8, &qword_10036D848);
                            v166 = v229;
                            v167 = *(v228 + 48);
                            if (v167(v165, 1, v229) == 1)
                            {
                              sub_1000059A8(v162, &qword_100418CD8, &qword_10036D848);
                              if (v167(v165 + v164, 1, v166) == 1)
                              {
                                sub_1000059A8(v165, &qword_100418CD8, &qword_10036D848);
LABEL_55:
                                v172 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v173 = v225;
                                sub_10000A0A4(v90 + v172, v225, &qword_100418CE0, &qword_10036D850);
                                v174 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v175 = *(v220 + 48);
                                v176 = v223;
                                sub_10000A0A4(v173, v223, &qword_100418CE0, &qword_10036D850);
                                v117 = v176;
                                sub_10000A0A4(a2 + v174, v176 + v175, &qword_100418CE0, &qword_10036D850);
                                v177 = v222;
                                v178 = *(v221 + 48);
                                if (v178(v176, 1, v222) == 1)
                                {
                                  sub_1000059A8(v173, &qword_100418CE0, &qword_10036D850);
                                  if (v178(v176 + v175, 1, v177) == 1)
                                  {
                                    sub_1000059A8(v176, &qword_100418CE0, &qword_10036D850);
LABEL_62:
                                    v182 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v183 = v219;
                                    sub_10000A0A4(v90 + v182, v219, &qword_100418CE8, &qword_10036D858);
                                    v184 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v185 = *(v216 + 48);
                                    v186 = v183;
                                    v187 = v210;
                                    sub_10000A0A4(v186, v210, &qword_100418CE8, &qword_10036D858);
                                    v117 = v187;
                                    sub_10000A0A4(a2 + v184, v187 + v185, &qword_100418CE8, &qword_10036D858);
                                    v188 = *(v217 + 48);
                                    v189 = v209;
                                    if (v188(v187, 1, v209) == 1)
                                    {
                                      sub_1000059A8(v219, &qword_100418CE8, &qword_10036D858);
                                      if (v188(v187 + v185, 1, v189) == 1)
                                      {
                                        sub_1000059A8(v187, &qword_100418CE8, &qword_10036D858);
LABEL_74:
                                        v194 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v195 = v214;
                                        sub_10000A0A4(v90 + v194, v214, &qword_100418CA8, &qword_10036D818);
                                        v196 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v197 = *(v268 + 48);
                                        v198 = v215;
                                        sub_10000A0A4(v195, v215, &qword_100418CA8, &qword_10036D818);
                                        sub_10000A0A4(a2 + v196, v198 + v197, &qword_100418CA8, &qword_10036D818);
                                        v199 = v269;
                                        v200 = v207;
                                        if (v207(v198, 1, v269) == 1)
                                        {

                                          sub_1000059A8(v214, &qword_100418CA8, &qword_10036D818);
                                          if (v200(v198 + v197, 1, v199) == 1)
                                          {
                                            sub_1000059A8(v215, &qword_100418CA8, &qword_10036D818);
                                            return 1;
                                          }

                                          goto LABEL_79;
                                        }

                                        sub_10000A0A4(v198, v211, &qword_100418CA8, &qword_10036D818);
                                        if (v200(v198 + v197, 1, v199) == 1)
                                        {

                                          sub_1000059A8(v214, &qword_100418CA8, &qword_10036D818);
                                          sub_10009E7F4(v211, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
LABEL_79:
                                          sub_1000059A8(v215, &qword_10041C520, &qword_100373D10);
                                          return 0;
                                        }

                                        v201 = v215;
                                        v202 = v215 + v197;
                                        v203 = v260;
                                        sub_10009E724(v202, v260, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        v204 = v211;
                                        v205 = sub_1000A3FAC(v211, v203, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

                                        sub_10009E7F4(v203, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        sub_1000059A8(v214, &qword_100418CA8, &qword_10036D818);
                                        sub_10009E7F4(v204, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        sub_1000059A8(v201, &qword_100418CA8, &qword_10036D818);
                                        return (v205 & 1) != 0;
                                      }

                                      goto LABEL_67;
                                    }

                                    v190 = v212;
                                    sub_10000A0A4(v187, v212, &qword_100418CE8, &qword_10036D858);
                                    if (v188(v187 + v185, 1, v189) == 1)
                                    {
                                      sub_1000059A8(v219, &qword_100418CE8, &qword_10036D858);
                                      sub_10009E7F4(v190, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
LABEL_67:
                                      v91 = &qword_10041C4E0;
                                      v92 = &qword_100373CD0;
                                      goto LABEL_68;
                                    }

                                    v191 = v187 + v185;
                                    v192 = v208;
                                    sub_10009E724(v191, v208, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    v193 = sub_1000A1A28(v190, v192);
                                    sub_10009E7F4(v192, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    sub_1000059A8(v219, &qword_100418CE8, &qword_10036D858);
                                    sub_10009E7F4(v190, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    sub_1000059A8(v187, &qword_100418CE8, &qword_10036D858);
                                    if (v193)
                                    {
                                      goto LABEL_74;
                                    }

LABEL_70:

                                    return 0;
                                  }
                                }

                                else
                                {
                                  sub_10000A0A4(v176, v154, &qword_100418CE0, &qword_10036D850);
                                  if (v178(v176 + v175, 1, v177) != 1)
                                  {
                                    v179 = v176 + v175;
                                    v180 = v213;
                                    sub_10009E724(v179, v213, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    v181 = sub_1000A1284(v154, v180);
                                    sub_10009E7F4(v180, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    sub_1000059A8(v225, &qword_100418CE0, &qword_10036D850);
                                    sub_10009E7F4(v154, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    sub_1000059A8(v176, &qword_100418CE0, &qword_10036D850);
                                    if ((v181 & 1) == 0)
                                    {
                                      goto LABEL_70;
                                    }

                                    goto LABEL_62;
                                  }

                                  sub_1000059A8(v225, &qword_100418CE0, &qword_10036D850);
                                  sub_10009E7F4(v154, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                }

                                v91 = &qword_10041C4E8;
                                v92 = &qword_100373CD8;
LABEL_68:
                                v93 = v117;
                                goto LABEL_69;
                              }
                            }

                            else
                            {
                              v168 = v224;
                              sub_10000A0A4(v165, v224, &qword_100418CD8, &qword_10036D848);
                              if (v167(v165 + v164, 1, v166) != 1)
                              {
                                v169 = v165 + v164;
                                v170 = v218;
                                sub_10009E724(v169, v218, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                v171 = sub_1000A3FAC(v168, v170, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_10009E7F4(v170, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_1000059A8(v232, &qword_100418CD8, &qword_10036D848);
                                sub_10009E7F4(v168, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                sub_1000059A8(v165, &qword_100418CD8, &qword_10036D848);
                                if ((v171 & 1) == 0)
                                {
                                  goto LABEL_70;
                                }

                                goto LABEL_55;
                              }

                              sub_1000059A8(v232, &qword_100418CD8, &qword_10036D848);
                              sub_10009E7F4(v168, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                            }

                            v91 = &qword_10041C4F0;
                            v92 = &qword_100373CE0;
                            goto LABEL_68;
                          }

                          sub_1000059A8(v240, &qword_100418CD0, &qword_10036D840);
                          sub_10009E7F4(v155, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                        }

                        v91 = &qword_10041C4F8;
                        v92 = &qword_100373CE8;
                        goto LABEL_68;
                      }

                      sub_1000059A8(v257, &qword_100418CC8, &qword_10036D838);
                      sub_10009E7F4(v143, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                    }

                    v91 = &qword_10041C500;
                    v92 = &qword_100373CF0;
                    goto LABEL_68;
                  }

                  sub_1000059A8(v258, &qword_100418CC0, &qword_10036D830);
                  sub_10009E7F4(v133, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                }

                v91 = &qword_10041C508;
                v92 = &qword_100373CF8;
                goto LABEL_68;
              }

              sub_1000059A8(v266, &qword_100418CB8, &qword_10036D828);
              sub_10009E7F4(v106, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
            }

            v91 = &qword_10041C510;
            v92 = &qword_100373D00;
            goto LABEL_68;
          }

          sub_1000059A8(v267, &qword_100418CB0, &qword_10036D820);
          sub_10009E7F4(v108, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
        }

        v91 = &qword_10041C518;
        v92 = &qword_100373D08;
        v93 = v101;
LABEL_69:
        sub_1000059A8(v93, v91, v92);
        goto LABEL_70;
      }
    }

    else
    {
      sub_10000A0A4(v68, v76, &qword_100418CA8, &qword_10036D818);
      if (v88(&v68[v85], 1, v86) != 1)
      {
        v207 = v88;
        v270 = v87;
        v94 = v260;
        sub_10009E724(&v68[v85], v260, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        v90 = v83;

        v95 = sub_1000A3FAC(v76, v94, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_10009E7F4(v94, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_1000059A8(v78, &qword_100418CA8, &qword_10036D818);
        sub_10009E7F4(v76, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        sub_1000059A8(v68, &qword_100418CA8, &qword_10036D818);
        if ((v95 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_13;
      }

      sub_1000059A8(v78, &qword_100418CA8, &qword_10036D818);
      sub_10009E7F4(v76, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    }

    v91 = &qword_10041C520;
    v92 = &qword_100373D10;
    v93 = v68;
    goto LABEL_69;
  }

  result = 0;
  if (v80 != 13 && v79 == v80)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000773E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3B0, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &unk_10036FBD0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100077484(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &unk_10036FB58);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000774F0(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &unk_10036FB58);

  return Message.hash(into:)();
}

uint64_t sub_100077594()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C40);
  sub_100005DF0(v0, qword_100432C40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time_nanoseconds";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_unc_nanoseconds";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_adjusted_by_external_tool";
  *(v11 + 8) = 37;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000778C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &unk_10036FD38);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100077968(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &unk_10036FCC0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000779D4(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &unk_10036FCC0);

  return Message.hash(into:)();
}

uint64_t sub_100077A78()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C58);
  sub_100005DF0(v0, qword_100432C58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "frequency_offset_ppb";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset_unc_ppb";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty_adjusted_by_external_tool";
  *(v11 + 8) = 37;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100077D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_100077E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + *(v7 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v4 + *(v7 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100077F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C3A0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FEA0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078018(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FE28);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100078084(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FE28);

  return Message.hash(into:)();
}

uint64_t sub_100078128()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C70);
  sub_100005DF0(v0, qword_100432C70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_offset_ppb";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset_unc_ppb";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cycle_slip_detected";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uncertainty_adjusted_by_external_tool";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000783B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

int *sub_1000784B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100078610@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_100078698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C398, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &unk_100370008);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078738(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &unk_10036FF90);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000787A4(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &unk_10036FF90);

  return Message.hash(into:)();
}

uint64_t sub_100078848()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432C88);
  sub_100005DF0(v0, qword_100432C88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "phase_start_time_nanoseconds";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "phase_end_time_nanoseconds";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "accumulated_phase_nanoseconds";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "accumulated_phase_unc_nanoseconds";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "cycle_slips_detected";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100078B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 5)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

int *sub_100078C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100078DDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100078E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C390, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &unk_100370170);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100078F1C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &unk_1003700F8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100078F88(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &unk_1003700F8);

  return Message.hash(into:)();
}

uint64_t sub_10007902C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CA0);
  sub_100005DF0(v0, qword_100432CA0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sv_time";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency_offset";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "cn0_dbhz";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100079288(uint64_t a1, uint64_t a2, uint64_t a3)
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

      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v8 = &unk_10036FE28;
          v9 = &qword_1004192C0;
          break;
        case 1:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v8 = &unk_10036FCC0;
          v9 = &qword_1004192A8;
          break;
        default:
          goto LABEL_5;
      }

      sub_1000A5BD8(v9, v7, v8);
      v3 = v6;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100079408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1000794C8(v5, a1, a2, a3);
  if (!v4)
  {
    sub_1000796E4(v5, a1, a2, a3);
    if ((*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000794C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100418CF0, &qword_10036D860);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CF0, &qword_10036D860);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &unk_10036FCC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t sub_1000796E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418CF8, &qword_10036D868);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FE28);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_10007994C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_100079A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C388, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &unk_1003702D8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100079AE8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &unk_100370260);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100079B54(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &unk_100370260);

  return Message.hash(into:)();
}

uint64_t sub_100079BFC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CB8);
  sub_100005DF0(v0, qword_100432CB8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "derived_full_sv_time_nanoseconds";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "derived_full_sv_time_unc_nanoseconds";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "full_sv_time_source";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100079E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
        sub_1000AE9E0();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100079F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v3 + *(v6 + 28)) != 6)
  {
    sub_1000AE9E0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007A0B8@<X0>(int *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  result = UnknownStorage.init()();
  v7 = a1[6];
  v8 = a3 + a1[5];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a3 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a3 + a1[7]) = a2;
  return result;
}

uint64_t sub_10007A144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C380, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &unk_100370440);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007A1E4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &unk_1003703C8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A250(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &unk_1003703C8);

  return Message.hash(into:)();
}

uint64_t sub_10007A2F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CD0);
  sub_100005DF0(v0, qword_100432CD0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "innovation";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "residual";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "final_uncertainty";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10007A558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t sub_10007A61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007A750@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_10007A7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C378, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_1003705A8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007A878(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_100370530);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A8E4(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_100370530);

  return Message.hash(into:)();
}

uint64_t sub_10007A988()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432CE8);
  sub_100005DF0(v0, qword_100432CE8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10036D7D0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "jammer_cn0_dbHz";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "snr_at_correlator_output";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "full_sv_time";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sv_time_usage_nanoseconds";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "frequency_offset_usage_ppb";
  *(v15 + 1) = 26;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "carrier_phase_usage_nanoseconds";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "noncoherent_interval_count";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coherent_integration_ms";
  *(v21 + 1) = 23;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sv_time_detection_method";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "frequency_detection_method";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "channel_id";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "code_lock_duration_seconds";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "frequency_lock_duration_seconds";
  *(v30 + 1) = 31;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "metadata";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "metadata_format";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "top_correlation_peaks";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

double sub_10007AF08()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v4);
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v10 = 0;
  *(v10 + 4) = 1;
  result = 0.0;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_10036D770;
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = &_swiftEmptyArrayStorage;
  qword_100437068 = v0;
  return result;
}

uint64_t sub_10007B100(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  __chkstk_darwin(v3 - 8);
  v61 = &v57 - v4;
  v5 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  __chkstk_darwin(v5 - 8);
  v60 = &v57 - v6;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  v7 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v58 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v59 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  v62 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  v11(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, 1, 1, v10);
  v63 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v11(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, 1, 1, v10);
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  *v13 = 0;
  *(v13 + 4) = 1;
  v64 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod) = 7;
  v14 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod) = 7;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  v65 = v14;
  v66 = v15;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  v67 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  v68 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  *v17 = 0;
  *(v17 + 4) = 1;
  v69 = (v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_10036D770;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v18 = 0;
  *(v18 + 4) = 1;
  v71 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = &_swiftEmptyArrayStorage;
  swift_beginAccess();
  v19 = *(a1 + 16);
  v20 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v19;
  *(v1 + 20) = v20;
  swift_beginAccess();
  v21 = *(a1 + 24);
  LOBYTE(v19) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v21;
  *(v1 + 28) = v19;
  v22 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v23 = v60;
  sub_10000A0A4(a1 + v22, v60, &qword_100418D00, &qword_10036D870);
  v24 = v58;
  swift_beginAccess();
  sub_10000AD64(v23, v1 + v24, &qword_100418D00, &qword_10036D870);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v26 = v61;
  sub_10000A0A4(a1 + v25, v61, &qword_100418D08, &qword_10036D878);
  v27 = v59;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v26, &qword_100418D08, &qword_10036D878);
  v29 = v62;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v29, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v30, v26, &qword_100418D08, &qword_10036D878);
  v31 = v63;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v31, &qword_100418D08, &qword_10036D878);
  swift_endAccess();
  v32 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 4);
  swift_beginAccess();
  *v12 = v33;
  *(v12 + 4) = v32;
  v34 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  LODWORD(v32) = *v34;
  LOBYTE(v34) = *(v34 + 4);
  swift_beginAccess();
  *v13 = v32;
  *(v13 + 4) = v34;
  v35 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v64;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  LOBYTE(v37) = *(a1 + v37);
  v38 = v65;
  swift_beginAccess();
  *(v1 + v38) = v37;
  v39 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
  swift_beginAccess();
  LODWORD(v38) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  v40 = v66;
  swift_beginAccess();
  *v40 = v38;
  *(v40 + 4) = v39;
  v41 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v38) = *v41;
  LOBYTE(v41) = *(v41 + 4);
  v42 = v67;
  swift_beginAccess();
  *v42 = v38;
  *(v42 + 4) = v41;
  v43 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
  swift_beginAccess();
  LODWORD(v38) = *v43;
  LOBYTE(v43) = *(v43 + 4);
  v44 = v68;
  swift_beginAccess();
  *v44 = v38;
  *(v44 + 4) = v43;
  v45 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v69;
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  *v48 = v47;
  v48[1] = v46;
  sub_10000BE4C(v47, v46);
  sub_10000CA64(v49, v50);
  v51 = a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  swift_beginAccess();
  LODWORD(v47) = *v51;
  LOBYTE(v51) = *(v51 + 4);
  v52 = v70;
  swift_beginAccess();
  *v52 = v47;
  *(v52 + 4) = v51;
  v53 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  v54 = *(a1 + v53);

  v55 = v71;
  swift_beginAccess();
  *(v1 + v55) = v54;

  return v1;
}

uint64_t sub_10007B8CC()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime, &qword_100418D00, &qword_10036D870);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds, &qword_100418D08, &qword_10036D878);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, &qword_100418D08, &qword_10036D878);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, &qword_100418D08, &qword_10036D878);
  sub_10000CA64(*(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata), *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata + 8));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10007B9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = swift_allocObject();
    sub_10007B100(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime;
          v13 = &unk_1003703C8;
          v14 = &qword_100419320;
          goto LABEL_11;
        case 4:
        case 5:
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage;
          v13 = &unk_100370530;
          v14 = &qword_100419338;
LABEL_11:
          sub_1000A5BD8(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_16;
        case 7:
        case 8:
        case 15:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_16;
        case 9:
        case 10:
          swift_beginAccess();
          sub_1000AE98C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_16;
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_16;
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
          goto LABEL_16;
        case 16:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &unk_100370260);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_16:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10007BDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10007C188(v9, a1, a2, a3);
  sub_10007C3B0(v9, a1, a2, a3);
  sub_10007C5D8(v9, a1, a2, a3);
  sub_10007C800(v9, a1, a2, a3);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount, 7, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs, 8, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  sub_10007CA28(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod, 9);
  sub_10007CA28(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod, 10);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID, 11, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
  sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds, 12);
  sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds, 13);
  sub_10007CAD8(v9, a1, a2, a3);
  sub_10007CB8C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat, 15, &dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:));
  v11 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  if (*(*(v9 + v11) + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
    sub_1000A5BD8(&qword_100419308, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &unk_100370260);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10007C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D00, &qword_10036D870);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D00, &qword_10036D870);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000A5BD8(&qword_100419320, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &unk_1003703C8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
}

uint64_t sub_10007C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D08, &qword_10036D878);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_100370530);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007C5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D08, &qword_10036D878);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_100370530);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D08, &qword_10036D878);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D08, &qword_10036D878);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000A5BD8(&qword_100419338, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &unk_100370530);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t sub_10007CA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 7)
  {
    sub_1000AE98C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10007CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  result = swift_beginAccess();
  v6 = v4[1];
  if (v6 >> 60 != 15)
  {
    v7 = *v4;
    sub_1000150EC(v7, v6);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return sub_10000CA64(v7, v6);
  }

  return result;
}

uint64_t sub_10007CB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t sub_10007CC70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v147 = *(v4 - 8);
  v148 = v4;
  __chkstk_darwin(v4);
  v140 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_100024A2C(&qword_10041C528, &qword_100373D18);
  v6 = __chkstk_darwin(v149);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v139 = &v136 - v10;
  __chkstk_darwin(v9);
  v146 = &v136 - v11;
  v12 = sub_100024A2C(&qword_100418D08, &qword_10036D878);
  v13 = __chkstk_darwin(v12 - 8);
  v137 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v142 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v138 = &v136 - v18;
  v19 = __chkstk_darwin(v17);
  v143 = &v136 - v20;
  v21 = __chkstk_darwin(v19);
  v141 = &v136 - v22;
  __chkstk_darwin(v21);
  v145 = &v136 - v23;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v150 = *(v24 - 8);
  __chkstk_darwin(v24);
  v144 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100024A2C(&qword_10041C530, &qword_100373D20);
  __chkstk_darwin(v26);
  v28 = &v136 - v27;
  v29 = sub_100024A2C(&qword_100418D00, &qword_10036D870);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v136 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  v152 = a1;
  LOBYTE(a1) = *(a1 + 20);
  swift_beginAccess();
  v36 = *(a2 + 20);
  if (a1)
  {
    if (!*(a2 + 20))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v35 != *(a2 + 16))
    {
      v36 = 1;
    }

    if (v36)
    {
      goto LABEL_35;
    }
  }

  v37 = v152;
  swift_beginAccess();
  v38 = *(v37 + 24);
  LOBYTE(v37) = *(v37 + 28);
  swift_beginAccess();
  v39 = *(a2 + 28);
  if (v37)
  {
    if (!*(a2 + 28))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v38 != *(a2 + 24))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_35;
    }
  }

  v136 = v8;
  v151 = a2;
  v40 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  v41 = v152;
  swift_beginAccess();
  sub_10000A0A4(v41 + v40, v34, &qword_100418D00, &qword_10036D870);
  v42 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v43 = *(v26 + 48);
  sub_10000A0A4(v34, v28, &qword_100418D00, &qword_10036D870);
  sub_10000A0A4(v151 + v42, &v28[v43], &qword_100418D00, &qword_10036D870);
  v44 = *(v150 + 6);
  if (v44(v28, 1, v24) == 1)
  {

    sub_1000059A8(v34, &qword_100418D00, &qword_10036D870);
    if (v44(&v28[v43], 1, v24) == 1)
    {
      sub_1000059A8(v28, &qword_100418D00, &qword_10036D870);
      goto LABEL_20;
    }

LABEL_18:
    v45 = &qword_10041C530;
    v46 = &qword_100373D20;
    v47 = v28;
LABEL_33:
    sub_1000059A8(v47, v45, v46);
    goto LABEL_34;
  }

  sub_10000A0A4(v28, v32, &qword_100418D00, &qword_10036D870);
  if (v44(&v28[v43], 1, v24) == 1)
  {

    sub_1000059A8(v34, &qword_100418D00, &qword_10036D870);
    sub_10009E7F4(v32, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    goto LABEL_18;
  }

  v48 = v144;
  sub_10009E724(&v28[v43], v144, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v41 = v152;

  v49 = sub_1000A3E88(v32, v48);
  sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000059A8(v34, &qword_100418D00, &qword_10036D870);
  sub_10009E7F4(v32, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  sub_1000059A8(v28, &qword_100418D00, &qword_10036D870);
  if ((v49 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v50 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v51 = v145;
  sub_10000A0A4(v41 + v50, v145, &qword_100418D08, &qword_10036D878);
  v52 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v53 = *(v149 + 48);
  v54 = v146;
  sub_10000A0A4(v51, v146, &qword_100418D08, &qword_10036D878);
  sub_10000A0A4(v151 + v52, v54 + v53, &qword_100418D08, &qword_10036D878);
  v55 = v148;
  v56 = *(v147 + 48);
  if (v56(v54, 1, v148) == 1)
  {
    sub_1000059A8(v51, &qword_100418D08, &qword_10036D878);
    if (v56(v54 + v53, 1, v55) == 1)
    {
      v150 = v56;
      sub_1000059A8(v54, &qword_100418D08, &qword_10036D878);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v57 = v141;
  sub_10000A0A4(v54, v141, &qword_100418D08, &qword_10036D878);
  if (v56(v54 + v53, 1, v55) == 1)
  {
    sub_1000059A8(v51, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_25:
    v45 = &qword_10041C528;
    v46 = &qword_100373D18;
    v47 = v54;
    goto LABEL_33;
  }

  v150 = v56;
  v58 = v54 + v53;
  v59 = v140;
  sub_10009E724(v58, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  LODWORD(v147) = sub_1000A0FF0(v57, v59);
  sub_10009E7F4(v59, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v51, &qword_100418D08, &qword_10036D878);
  sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v54, &qword_100418D08, &qword_10036D878);
  if ((v147 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v60 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v61 = v143;
  sub_10000A0A4(v41 + v60, v143, &qword_100418D08, &qword_10036D878);
  v62 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v63 = *(v149 + 48);
  v64 = v139;
  sub_10000A0A4(v61, v139, &qword_100418D08, &qword_10036D878);
  v65 = v64;
  sub_10000A0A4(v151 + v62, v64 + v63, &qword_100418D08, &qword_10036D878);
  v66 = v150;
  if (v150(v64, 1, v55) == 1)
  {
    sub_1000059A8(v61, &qword_100418D08, &qword_10036D878);
    v67 = v66(v64 + v63, 1, v55);
    v68 = v142;
    if (v67 == 1)
    {
      v150 = v66;
      sub_1000059A8(v65, &qword_100418D08, &qword_10036D878);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v69 = v64;
  v70 = v66;
  v71 = v138;
  sub_10000A0A4(v69, v138, &qword_100418D08, &qword_10036D878);
  v150 = v70;
  v72 = v70(v65 + v63, 1, v55);
  v68 = v142;
  if (v72 == 1)
  {
    sub_1000059A8(v143, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_32:
    v45 = &qword_10041C528;
    v46 = &qword_100373D18;
    v47 = v65;
    goto LABEL_33;
  }

  v75 = v65 + v63;
  v76 = v140;
  sub_10009E724(v75, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v77 = sub_1000A0FF0(v71, v76);
  sub_10009E7F4(v76, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v143, &qword_100418D08, &qword_10036D878);
  sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  sub_1000059A8(v65, &qword_100418D08, &qword_10036D878);
  if ((v77 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v78 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  sub_10000A0A4(v41 + v78, v68, &qword_100418D08, &qword_10036D878);
  v79 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v80 = v68;
  v81 = v151;
  swift_beginAccess();
  v82 = *(v149 + 48);
  v83 = v80;
  v84 = v136;
  sub_10000A0A4(v83, v136, &qword_100418D08, &qword_10036D878);
  sub_10000A0A4(v81 + v79, v84 + v82, &qword_100418D08, &qword_10036D878);
  v85 = v150;
  if (v150(v84, 1, v55) != 1)
  {
    v86 = v137;
    sub_10000A0A4(v84, v137, &qword_100418D08, &qword_10036D878);
    if (v85(v84 + v82, 1, v55) != 1)
    {
      v87 = v140;
      sub_10009E724(v84 + v82, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      v88 = sub_1000A0FF0(v86, v87);
      sub_10009E7F4(v87, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      sub_1000059A8(v142, &qword_100418D08, &qword_10036D878);
      sub_10009E7F4(v86, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      sub_1000059A8(v84, &qword_100418D08, &qword_10036D878);
      if ((v88 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    sub_1000059A8(v142, &qword_100418D08, &qword_10036D878);
    sub_10009E7F4(v86, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_43:
    sub_1000059A8(v84, &qword_10041C528, &qword_100373D18);
    goto LABEL_34;
  }

  sub_1000059A8(v142, &qword_100418D08, &qword_10036D878);
  if (v85(v84 + v82, 1, v55) != 1)
  {
    goto LABEL_43;
  }

  sub_1000059A8(v84, &qword_100418D08, &qword_10036D878);
LABEL_46:
  v89 = v41 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  v90 = *v89;
  v91 = *(v89 + 4);
  v92 = v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount;
  swift_beginAccess();
  if (v91)
  {
    if ((*(v92 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*(v92 + 4) & 1) != 0 || v90 != *v92)
  {
    goto LABEL_34;
  }

  v93 = v41 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  v94 = *v93;
  v95 = *(v93 + 4);
  v96 = v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs;
  swift_beginAccess();
  if (v95)
  {
    v97 = v151;
    if ((*(v96 + 4) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (*(v96 + 4))
    {
      goto LABEL_34;
    }

    v97 = v151;
    if (v94 != *v96)
    {
      goto LABEL_34;
    }
  }

  v98 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v99 = *(v41 + v98);
  v100 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod;
  swift_beginAccess();
  v101 = *(v97 + v100);
  if (v99 == 7)
  {
    if (v101 != 7)
    {
      goto LABEL_34;
    }
  }

  else if (v101 == 7 || v99 != v101)
  {
    goto LABEL_34;
  }

  v102 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v103 = *(v41 + v102);
  v104 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod;
  swift_beginAccess();
  v105 = *(v97 + v104);
  if (v103 != 7)
  {
    if (v105 == 7 || v103 != v105)
    {
      goto LABEL_34;
    }

LABEL_66:
    v106 = v41 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
    swift_beginAccess();
    v107 = *v106;
    v108 = v97;
    v109 = *(v106 + 4);
    v110 = v108 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID;
    swift_beginAccess();
    if (v109)
    {
      if ((*(v110 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v110 + 4) & 1) != 0 || v107 != *v110)
    {
      goto LABEL_34;
    }

    v111 = v152 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    v112 = *v111;
    v113 = *(v111 + 4);
    v114 = v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds;
    swift_beginAccess();
    if (v113)
    {
      if ((*(v114 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v114 + 4) & 1) != 0 || v112 != *v114)
    {
      goto LABEL_34;
    }

    v115 = v152 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    v116 = *v115;
    v117 = *(v115 + 4);
    v118 = v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds;
    swift_beginAccess();
    if (v117)
    {
      if ((*(v118 + 4) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else if ((*(v118 + 4) & 1) != 0 || v116 != *v118)
    {
      goto LABEL_34;
    }

    v119 = (v152 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v121 = *v119;
    v120 = v119[1];
    v122 = (v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
    swift_beginAccess();
    v123 = *v122;
    v124 = v122[1];
    sub_10000BE4C(v121, v120);
    sub_10000BE4C(v123, v124);
    if (v120 >> 60 == 15)
    {
      if (v124 >> 60 == 15)
      {
        sub_10000CA64(v121, v120);
        goto LABEL_89;
      }
    }

    else
    {
      sub_10000BE4C(v121, v120);
      sub_10000BE4C(v123, v124);
      if (v124 >> 60 != 15)
      {
        v125 = sub_10009F948(v121, v120, v123, v124);
        sub_10000CA64(v123, v124);
        sub_10000CA64(v121, v120);
        sub_10000CA64(v123, v124);
        sub_10000CA64(v121, v120);
        if (!v125)
        {
          goto LABEL_34;
        }

LABEL_89:
        v126 = v152 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
        swift_beginAccess();
        v127 = *v126;
        v128 = *(v126 + 4);
        v129 = v151 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
        swift_beginAccess();
        if (v128)
        {
          if ((*(v129 + 4) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else if ((*(v129 + 4) & 1) != 0 || v127 != *v129)
        {
          goto LABEL_34;
        }

        v130 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v131 = v152;
        swift_beginAccess();
        v132 = *(v131 + v130);
        v133 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
        v134 = v151;
        swift_beginAccess();
        v135 = *(v134 + v133);

        v73 = sub_10009C63C(v132, v135);

        return v73 & 1;
      }

      sub_10000CA64(v123, v124);
      sub_10000CA64(v121, v120);
    }

    sub_10000CA64(v121, v120);
    sub_10000CA64(v123, v124);
    goto LABEL_35;
  }

  if (v105 == 7)
  {
    goto LABEL_66;
  }

LABEL_34:

LABEL_35:
  v73 = 0;
  return v73 & 1;
}

uint64_t sub_10007E000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C370, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &unk_100370710);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10007E0A0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &unk_100370698);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10007E10C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &unk_100370698);

  return Message.hash(into:)();
}

uint64_t sub_10007E1B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D00);
  sub_100005DF0(v0, qword_100432D00);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sync_state";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "start_time_nanoseconds";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "end_time_nanoseconds";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "applicability_time_nanoseconds";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sv_time";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "frequency_offset";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "phase_tracking";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "extension";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cn0_dbHz";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "multipath_indicator";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "averaged_frequency_offset";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "is_usable";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "averaged_frequency_offset_from_phase_tracking";
  *(v32 + 1) = 45;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10007E6AC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v0 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v17 = 0;
  *(v17 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v12(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v18 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  result = (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  qword_100437080 = v0;
  return result;
}

uint64_t sub_10007E98C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  __chkstk_darwin(v3 - 8);
  v90 = &v73 - v4;
  v5 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  __chkstk_darwin(v5 - 8);
  v89 = &v73 - v6;
  v7 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  __chkstk_darwin(v7 - 8);
  v88 = &v73 - v8;
  v9 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  __chkstk_darwin(v13 - 8);
  v77 = &v73 - v14;
  v15 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v15 - 8);
  v74 = &v73 - v16;
  v17 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v73 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v75 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v78 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  v25 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v79 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v1 + v26, 1, 1, v27);
  v29 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v80 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  (*(*(v30 - 8) + 56))(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v81 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  v32 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  (*(*(v32 - 8) + 56))(v1 + v31, 1, 1, v32);
  v33 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  v82 = v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  *v33 = 0;
  *(v33 + 4) = 1;
  v34 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator) = 5;
  v83 = v34;
  v84 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v28(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, 1, 1, v27);
  v76 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable) = 2;
  v35 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v86 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  (*(*(v36 - 8) + 56))(v1 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v38 = v74;
  sub_10000A0A4(a1 + v37, v74, &qword_100418D10, &qword_10036D880);
  v39 = v73;
  swift_beginAccess();
  sub_10000AD64(v38, v1 + v39, &qword_100418D10, &qword_10036D880);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v41 = v77;
  sub_10000A0A4(a1 + v40, v77, &qword_100418D18, &qword_10036D888);
  v42 = v75;
  swift_beginAccess();
  sub_10000AD64(v41, v1 + v42, &qword_100418D18, &qword_10036D888);
  swift_endAccess();
  v43 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  swift_beginAccess();
  *v21 = v44;
  *(v21 + 8) = v43;
  v45 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  swift_beginAccess();
  *v22 = v46;
  *(v22 + 8) = v45;
  v47 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v48 = *v47;
  LOBYTE(v47) = *(v47 + 8);
  swift_beginAccess();
  *v23 = v48;
  *(v23 + 8) = v47;
  v49 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v50 = v85;
  sub_10000A0A4(a1 + v49, v85, &qword_100418CF0, &qword_10036D860);
  v51 = v78;
  swift_beginAccess();
  sub_10000AD64(v50, v1 + v51, &qword_100418CF0, &qword_10036D860);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v53 = v87;
  sub_10000A0A4(a1 + v52, v87, &qword_100418CF8, &qword_10036D868);
  v54 = v79;
  swift_beginAccess();
  sub_10000AD64(v53, v1 + v54, &qword_100418CF8, &qword_10036D868);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v56 = v88;
  sub_10000A0A4(a1 + v55, v88, &qword_100418D20, &qword_10036D890);
  v57 = v80;
  swift_beginAccess();
  sub_10000AD64(v56, v1 + v57, &qword_100418D20, &qword_10036D890);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v59 = v89;
  sub_10000A0A4(a1 + v58, v89, &qword_100418D28, &qword_10036D898);
  v60 = v81;
  swift_beginAccess();
  sub_10000AD64(v59, v1 + v60, &qword_100418D28, &qword_10036D898);
  swift_endAccess();
  v61 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  LODWORD(v48) = *v61;
  LOBYTE(v61) = *(v61 + 4);
  v62 = v82;
  swift_beginAccess();
  *v62 = v48;
  *(v62 + 4) = v61;
  v63 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v83;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v65, v53, &qword_100418CF8, &qword_10036D868);
  v66 = v84;
  swift_beginAccess();
  sub_10000AD64(v53, v1 + v66, &qword_100418CF8, &qword_10036D868);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  LOBYTE(v67) = *(a1 + v67);
  v68 = v76;
  swift_beginAccess();
  *(v1 + v68) = v67;
  v69 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v70 = v90;
  sub_10000A0A4(a1 + v69, v90, &qword_100418D30, &qword_10036D8A0);

  v71 = v86;
  swift_beginAccess();
  sub_10000AD64(v70, v1 + v71, &qword_100418D30, &qword_10036D8A0);
  swift_endAccess();
  return v1;
}

uint64_t sub_10007F40C()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &qword_100418D10, &qword_10036D880);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState, &qword_100418D18, &qword_10036D888);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime, &qword_100418CF0, &qword_10036D860);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset, &qword_100418CF8, &qword_10036D868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking, &qword_100418D20, &qword_10036D890);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension, &qword_100418D28, &qword_10036D898);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, &qword_100418CF8, &qword_10036D868);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking, &qword_100418D30, &qword_10036D8A0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10007F570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v9 = swift_allocObject();
    sub_10007E98C(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v13 = &unk_10036ED48;
          v14 = &qword_1004191A0;
          goto LABEL_18;
        case 2:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState;
          v13 = &unk_10036FB58;
          v14 = &qword_100419290;
          goto LABEL_18;
        case 3:
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_19;
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v13 = &unk_10036FCC0;
          v14 = &qword_1004192A8;
          goto LABEL_18;
        case 7:
        case 12:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v13 = &unk_10036FE28;
          v14 = &qword_1004192C0;
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking;
          v13 = &unk_1003700F8;
          v14 = &qword_1004192F0;
          goto LABEL_18;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension;
          v13 = &unk_100370698;
          v14 = &qword_100419350;
          goto LABEL_18;
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 11:
          swift_beginAccess();
          sub_1000AE938();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_19;
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_19;
        case 14:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
          v13 = &unk_10036FF90;
          v14 = &qword_1004192D8;
LABEL_18:
          sub_1000A5BD8(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_19:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10007FA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  result = sub_10007FCF8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10007FF20(v8, a1, a2, a3);
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v11 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
    swift_beginAccess();
    if ((*(v11 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    v12 = v8 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
    swift_beginAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    sub_100080148(v8, a1, a2, a3);
    sub_100080370(v8, a1, a2, a3);
    sub_100080598(v8, a1, a2, a3);
    sub_1000807C0(v8, a1, a2, a3);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz, 10);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator, sub_1000AE938, 11, &type metadata for CLP_LogEntry_PrivateData_MultipathIndicator);
    sub_1000809E8(v8, a1, a2, a3);
    sub_100080C10(v8, a1, a2, a3);
    sub_100080CA0(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10007FCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D10, &qword_10036D880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_10007FF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D18, &qword_10036D888);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D18, &qword_10036D888);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  sub_1000A5BD8(&qword_100419290, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &unk_10036FB58);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
}

uint64_t sub_100080148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CF0, &qword_10036D860);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CF0, &qword_10036D860);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000A5BD8(&qword_1004192A8, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &unk_10036FCC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t sub_100080370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CF8, &qword_10036D868);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FE28);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_100080598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D20, &qword_10036D890);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D20, &qword_10036D890);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000A5BD8(&qword_1004192F0, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &unk_1003700F8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
}

uint64_t sub_1000807C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D28, &qword_10036D898);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D28, &qword_10036D898);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000A5BD8(&qword_100419350, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &unk_100370698);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
}

uint64_t sub_1000809E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418CF8, &qword_10036D868);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418CF8, &qword_10036D868);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000A5BD8(&qword_1004192C0, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &unk_10036FE28);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t sub_100080C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100080CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D30, &qword_10036D8A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D30, &qword_10036D8A0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000A5BD8(&qword_1004192D8, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &unk_10036FF90);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
}

BOOL sub_100080F0C(uint64_t a1, uint64_t a2)
{
  v247 = a2;
  v204 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v202 = *(v204 - 8);
  __chkstk_darwin(v204);
  v199 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_100024A2C(&qword_10041C4A8, &qword_100373C98);
  __chkstk_darwin(v200);
  v205 = &v199 - v4;
  v5 = sub_100024A2C(&qword_100418D30, &qword_10036D8A0);
  v6 = __chkstk_darwin(v5 - 8);
  v201 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v203 = &v199 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v213 = *(v9 - 8);
  v214 = v9;
  __chkstk_darwin(v9);
  v209 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_100024A2C(&qword_10041C4B0, &qword_100373CA0);
  __chkstk_darwin(v212);
  v215 = &v199 - v11;
  v12 = sub_100024A2C(&qword_100418D28, &qword_10036D898);
  v13 = __chkstk_darwin(v12 - 8);
  v210 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v241 = &v199 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v219 = *(v16 - 8);
  v220 = v16;
  __chkstk_darwin(v16);
  v211 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_100024A2C(&qword_10041C4B8, &qword_100373CA8);
  __chkstk_darwin(v218);
  v221 = &v199 - v18;
  v19 = sub_100024A2C(&qword_100418D20, &qword_10036D890);
  v20 = __chkstk_darwin(v19 - 8);
  v216 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v237 = &v199 - v22;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v24 = *(v23 - 8);
  v226 = v23;
  v227 = v24;
  __chkstk_darwin(v23);
  v217 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  v26 = __chkstk_darwin(v225);
  v208 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v224 = &v199 - v28;
  v29 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  v30 = __chkstk_darwin(v29 - 8);
  v206 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v207 = &v199 - v33;
  v34 = __chkstk_darwin(v32);
  v223 = &v199 - v35;
  __chkstk_darwin(v34);
  v242 = &v199 - v36;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v230 = *(v37 - 8);
  v231 = v37;
  __chkstk_darwin(v37);
  v222 = &v199 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  __chkstk_darwin(v228);
  v232 = &v199 - v39;
  v40 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  v41 = __chkstk_darwin(v40 - 8);
  v229 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v233 = &v199 - v43;
  v44 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v239 = *(v44 - 8);
  v240 = v44;
  __chkstk_darwin(v44);
  v234 = &v199 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_100024A2C(&qword_10041C4D0, &qword_100373CC0);
  __chkstk_darwin(v238);
  v243 = &v199 - v46;
  v47 = sub_100024A2C(&qword_100418D18, &qword_10036D888);
  v48 = __chkstk_darwin(v47 - 8);
  v235 = &v199 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v245 = &v199 - v50;
  v246 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v51 = *(v246 - 8);
  __chkstk_darwin(v246);
  v236 = &v199 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v54 = v53 - 8;
  __chkstk_darwin(v53);
  v56 = &v199 - v55;
  v57 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v58 = __chkstk_darwin(v57 - 8);
  v244 = &v199 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v199 - v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v63 = a1 + v62;
  v64 = v247;
  sub_10000A0A4(v63, v61, &qword_100418D10, &qword_10036D880);
  v65 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v66 = *(v54 + 56);
  sub_10000A0A4(v61, v56, &qword_100418D10, &qword_10036D880);
  v67 = v64 + v65;
  v68 = v246;
  sub_10000A0A4(v67, &v56[v66], &qword_100418D10, &qword_10036D880);
  v69 = *(v51 + 48);
  if (v69(v56, 1, v68) == 1)
  {

    sub_1000059A8(v61, &qword_100418D10, &qword_10036D880);
    if (v69(&v56[v66], 1, v68) == 1)
    {
      sub_1000059A8(v56, &qword_100418D10, &qword_10036D880);
      goto LABEL_8;
    }

LABEL_6:
    v71 = &qword_10041C4D8;
    v72 = &qword_100373CC8;
    v73 = v56;
LABEL_14:
    sub_1000059A8(v73, v71, v72);
    goto LABEL_15;
  }

  v70 = v244;
  sub_10000A0A4(v56, v244, &qword_100418D10, &qword_10036D880);
  if (v69(&v56[v66], 1, v68) == 1)
  {

    sub_1000059A8(v61, &qword_100418D10, &qword_10036D880);
    sub_10009E7F4(v70, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v74 = v236;
  sub_10009E724(&v56[v66], v236, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v75 = sub_1000A5750(v70, v74);
  sub_10009E7F4(v74, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v61, &qword_100418D10, &qword_10036D880);
  sub_10009E7F4(v70, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v56, &qword_100418D10, &qword_10036D880);
  if ((v75 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v76 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v77 = v245;
  sub_10000A0A4(a1 + v76, v245, &qword_100418D18, &qword_10036D888);
  v78 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v79 = *(v238 + 48);
  v80 = v243;
  sub_10000A0A4(v77, v243, &qword_100418D18, &qword_10036D888);
  v81 = v80;
  sub_10000A0A4(v64 + v78, v80 + v79, &qword_100418D18, &qword_10036D888);
  v82 = v240;
  v83 = *(v239 + 48);
  if (v83(v80, 1, v240) == 1)
  {
    sub_1000059A8(v77, &qword_100418D18, &qword_10036D888);
    v84 = v83(v80 + v79, 1, v82);
    v86 = v241;
    v85 = v242;
    v87 = v237;
    if (v84 == 1)
    {
      sub_1000059A8(v81, &qword_100418D18, &qword_10036D888);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v88 = v80;
  v89 = v235;
  sub_10000A0A4(v88, v235, &qword_100418D18, &qword_10036D888);
  v90 = v83(v81 + v79, 1, v82);
  v86 = v241;
  v85 = v242;
  if (v90 == 1)
  {
    sub_1000059A8(v245, &qword_100418D18, &qword_10036D888);
    sub_10009E7F4(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
LABEL_13:
    v71 = &qword_10041C4D0;
    v72 = &qword_100373CC0;
    v73 = v81;
    goto LABEL_14;
  }

  v92 = v81 + v79;
  v93 = v234;
  sub_10009E724(v92, v234, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v94 = *(v82 + 20);
  v95 = *(v89 + v94);
  v96 = *(v93 + v94);
  if (v95 != v96)
  {

    v97 = sub_100074F60(v95, v96);

    if (!v97)
    {
      sub_10009E7F4(v93, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      sub_1000059A8(v245, &qword_100418D18, &qword_10036D888);
      sub_10009E7F4(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      v73 = v243;
      v71 = &qword_100418D18;
      v72 = &qword_10036D888;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v93, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  sub_1000059A8(v245, &qword_100418D18, &qword_10036D888);
  sub_10009E7F4(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v87 = v237;
  sub_1000059A8(v243, &qword_100418D18, &qword_10036D888);
  if ((v98 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_20:
  v99 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds);
  swift_beginAccess();
  v100 = *v99;
  v101 = *(v99 + 8);
  v102 = v64 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__startTimeNanoseconds;
  swift_beginAccess();
  if (v101)
  {
    if ((*(v102 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v102 + 8) & 1) != 0 || v100 != *v102)
  {
    goto LABEL_15;
  }

  v103 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds);
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 8);
  v106 = v64 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__endTimeNanoseconds;
  swift_beginAccess();
  if (v105)
  {
    if ((*(v106 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v106 + 8) & 1) != 0 || v104 != *v106)
  {
    goto LABEL_15;
  }

  v107 = (a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds);
  swift_beginAccess();
  v108 = *v107;
  v109 = *(v107 + 8);
  v110 = v64 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__applicabilityTimeNanoseconds;
  swift_beginAccess();
  if (v109)
  {
    if ((*(v110 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v110 + 8) & 1) != 0 || v108 != *v110)
  {
    goto LABEL_15;
  }

  v111 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v112 = v233;
  sub_10000A0A4(a1 + v111, v233, &qword_100418CF0, &qword_10036D860);
  v113 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v114 = *(v228 + 48);
  v115 = v232;
  sub_10000A0A4(v112, v232, &qword_100418CF0, &qword_10036D860);
  v246 = v114;
  sub_10000A0A4(v64 + v113, v115 + v114, &qword_100418CF0, &qword_10036D860);
  v116 = v231;
  v245 = *(v230 + 48);
  if ((v245)(v115, 1, v231) == 1)
  {
    sub_1000059A8(v112, &qword_100418CF0, &qword_10036D860);
    if ((v245)(v115 + v246, 1, v116) == 1)
    {
      sub_1000059A8(v115, &qword_100418CF0, &qword_10036D860);
      goto LABEL_43;
    }

LABEL_41:
    v71 = &qword_10041C4C8;
    v72 = &qword_100373CB8;
LABEL_49:
    v73 = v115;
    goto LABEL_14;
  }

  sub_10000A0A4(v115, v229, &qword_100418CF0, &qword_10036D860);
  if ((v245)(v115 + v246, 1, v116) == 1)
  {
    sub_1000059A8(v233, &qword_100418CF0, &qword_10036D860);
    sub_10009E7F4(v229, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_41;
  }

  v117 = v222;
  sub_10009E724(v115 + v246, v222, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v118 = v229;
  LODWORD(v246) = sub_1000A423C(v229, v117, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_10009E7F4(v117, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v233, &qword_100418CF0, &qword_10036D860);
  sub_10009E7F4(v118, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  sub_1000059A8(v115, &qword_100418CF0, &qword_10036D860);
  if ((v246 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v119 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  sub_10000A0A4(a1 + v119, v85, &qword_100418CF8, &qword_10036D868);
  v120 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v121 = *(v225 + 48);
  v122 = v85;
  v123 = v224;
  sub_10000A0A4(v122, v224, &qword_100418CF8, &qword_10036D868);
  v115 = v123;
  sub_10000A0A4(v64 + v120, v123 + v121, &qword_100418CF8, &qword_10036D868);
  v124 = v226;
  v126 = v227 + 48;
  v125 = *(v227 + 48);
  if (v125(v115, 1, v226) == 1)
  {
    sub_1000059A8(v242, &qword_100418CF8, &qword_10036D868);
    if (v125(v115 + v121, 1, v124) == 1)
    {
      v246 = v125;
      v227 = v126;
      sub_1000059A8(v115, &qword_100418CF8, &qword_10036D868);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  sub_10000A0A4(v115, v223, &qword_100418CF8, &qword_10036D868);
  v246 = v125;
  if (v125(v115 + v121, 1, v124) == 1)
  {
    sub_1000059A8(v242, &qword_100418CF8, &qword_10036D868);
    sub_10009E7F4(v223, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_48:
    v71 = &qword_10041C4C0;
    v72 = &qword_100373CB0;
    goto LABEL_49;
  }

  v227 = v126;
  v127 = v115 + v121;
  v128 = v217;
  sub_10009E724(v127, v217, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v129 = v223;
  LODWORD(v245) = sub_1000A423C(v223, v128, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_10009E7F4(v128, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v242, &qword_100418CF8, &qword_10036D868);
  sub_10009E7F4(v129, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v115, &qword_100418CF8, &qword_10036D868);
  if ((v245 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_51:
  v130 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  sub_10000A0A4(a1 + v130, v87, &qword_100418D20, &qword_10036D890);
  v131 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v132 = *(v218 + 48);
  v133 = v221;
  sub_10000A0A4(v87, v221, &qword_100418D20, &qword_10036D890);
  sub_10000A0A4(v64 + v131, v133 + v132, &qword_100418D20, &qword_10036D890);
  v134 = v220;
  v135 = *(v219 + 48);
  if (v135(v133, 1, v220) == 1)
  {
    sub_1000059A8(v87, &qword_100418D20, &qword_10036D890);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      sub_1000059A8(v133, &qword_100418D20, &qword_10036D890);
      goto LABEL_58;
    }

LABEL_56:
    v71 = &qword_10041C4B8;
    v72 = &qword_100373CA8;
    v73 = v133;
    goto LABEL_14;
  }

  v136 = v216;
  sub_10000A0A4(v133, v216, &qword_100418D20, &qword_10036D890);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    sub_1000059A8(v237, &qword_100418D20, &qword_10036D890);
    sub_10009E7F4(v136, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    goto LABEL_56;
  }

  v137 = v133 + v132;
  v138 = v211;
  sub_10009E724(v137, v211, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v139 = sub_1000A2D24(v136, v138);
  sub_10009E7F4(v138, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000059A8(v237, &qword_100418D20, &qword_10036D890);
  sub_10009E7F4(v136, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  sub_1000059A8(v133, &qword_100418D20, &qword_10036D890);
  if ((v139 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_58:
  v140 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  sub_10000A0A4(a1 + v140, v86, &qword_100418D28, &qword_10036D898);
  v141 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v142 = *(v212 + 48);
  v143 = v86;
  v144 = v86;
  v145 = v215;
  sub_10000A0A4(v143, v215, &qword_100418D28, &qword_10036D898);
  v115 = v145;
  sub_10000A0A4(v64 + v141, v145 + v142, &qword_100418D28, &qword_10036D898);
  v146 = v214;
  v147 = *(v213 + 48);
  if (v147(v145, 1, v214) == 1)
  {
    sub_1000059A8(v144, &qword_100418D28, &qword_10036D898);
    if (v147(v145 + v142, 1, v146) == 1)
    {
      sub_1000059A8(v145, &qword_100418D28, &qword_10036D898);
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v148 = v210;
  sub_10000A0A4(v115, v210, &qword_100418D28, &qword_10036D898);
  if (v147(v115 + v142, 1, v146) == 1)
  {
    sub_1000059A8(v241, &qword_100418D28, &qword_10036D898);
    sub_10009E7F4(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
LABEL_63:
    v71 = &qword_10041C4B0;
    v72 = &qword_100373CA0;
    goto LABEL_49;
  }

  v149 = v146;
  v150 = v209;
  sub_10009E724(v115 + v142, v209, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v151 = *(v149 + 20);
  v152 = *(v148 + v151);
  v153 = *(v150 + v151);
  if (v152 != v153)
  {

    v154 = sub_10007CC70(v152, v153);

    if ((v154 & 1) == 0)
    {
      sub_10009E7F4(v150, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      sub_1000059A8(v241, &qword_100418D28, &qword_10036D898);
      sub_10009E7F4(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      v73 = v215;
      v71 = &qword_100418D28;
      v72 = &qword_10036D898;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v155 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v150, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000059A8(v241, &qword_100418D28, &qword_10036D898);
  sub_10009E7F4(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  sub_1000059A8(v215, &qword_100418D28, &qword_10036D898);
  if ((v155 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_67:
  v156 = a1;
  v157 = a1 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  v158 = *v157;
  v159 = *(v157 + 4);
  v160 = v64 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz;
  swift_beginAccess();
  if (v159)
  {
    if ((*(v160 + 4) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((*(v160 + 4) & 1) != 0 || v158 != *v160)
  {
    goto LABEL_15;
  }

  v161 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  swift_beginAccess();
  v162 = *(a1 + v161);
  v163 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator;
  v164 = v247;
  swift_beginAccess();
  v165 = *(v164 + v163);
  if (v162 == 5)
  {
    if (v165 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v165 == 5 || v162 != v165)
  {
    goto LABEL_15;
  }

  v166 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  v167 = a1 + v166;
  v168 = v207;
  sub_10000A0A4(v167, v207, &qword_100418CF8, &qword_10036D868);
  v169 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v170 = v247;
  swift_beginAccess();
  v171 = *(v225 + 48);
  v172 = v168;
  v173 = v208;
  sub_10000A0A4(v172, v208, &qword_100418CF8, &qword_10036D868);
  sub_10000A0A4(v170 + v169, v173 + v171, &qword_100418CF8, &qword_10036D868);
  if ((v246)(v173, 1, v226) == 1)
  {
    sub_1000059A8(v207, &qword_100418CF8, &qword_10036D868);
    if ((v246)(v208 + v171, 1, v226) == 1)
    {
      sub_1000059A8(v208, &qword_100418CF8, &qword_10036D868);
      goto LABEL_86;
    }

LABEL_83:
    sub_1000059A8(v208, &qword_10041C4C0, &qword_100373CB0);
    goto LABEL_15;
  }

  v174 = v208;
  sub_10000A0A4(v208, v206, &qword_100418CF8, &qword_10036D868);
  if ((v246)(v174 + v171, 1, v226) == 1)
  {
    sub_1000059A8(v207, &qword_100418CF8, &qword_10036D868);
    sub_10009E7F4(v206, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_83;
  }

  v175 = v208;
  v176 = v208 + v171;
  v177 = v217;
  sub_10009E724(v176, v217, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v178 = v206;
  v179 = sub_1000A423C(v206, v177, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_10009E7F4(v177, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v207, &qword_100418CF8, &qword_10036D868);
  sub_10009E7F4(v178, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  sub_1000059A8(v175, &qword_100418CF8, &qword_10036D868);
  if ((v179 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_86:
  v180 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  swift_beginAccess();
  v181 = *(v156 + v180);
  v182 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  v183 = v247;
  swift_beginAccess();
  v184 = *(v183 + v182);
  if (v181 == 2)
  {
    if (v184 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v184 == 2 || ((v181 ^ v184) & 1) != 0)
  {
    goto LABEL_15;
  }

  v185 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  v186 = v203;
  sub_10000A0A4(v156 + v185, v203, &qword_100418D30, &qword_10036D8A0);
  v187 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v188 = v247;
  swift_beginAccess();
  v189 = *(v200 + 48);
  v190 = v186;
  v191 = v205;
  sub_10000A0A4(v190, v205, &qword_100418D30, &qword_10036D8A0);
  sub_10000A0A4(v188 + v187, v191 + v189, &qword_100418D30, &qword_10036D8A0);
  v192 = *(v202 + 48);
  if (v192(v191, 1, v204) == 1)
  {

    sub_1000059A8(v203, &qword_100418D30, &qword_10036D8A0);
    if (v192(v205 + v189, 1, v204) == 1)
    {
      sub_1000059A8(v205, &qword_100418D30, &qword_10036D8A0);
      return 1;
    }

LABEL_96:
    sub_1000059A8(v205, &qword_10041C4A8, &qword_100373C98);
    return 0;
  }

  v193 = v205;
  sub_10000A0A4(v205, v201, &qword_100418D30, &qword_10036D8A0);
  if (v192(v193 + v189, 1, v204) == 1)
  {

    sub_1000059A8(v203, &qword_100418D30, &qword_10036D8A0);
    sub_10009E7F4(v201, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    goto LABEL_96;
  }

  v194 = v205;
  v195 = v205 + v189;
  v196 = v199;
  sub_10009E724(v195, v199, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v197 = v201;
  v198 = sub_10009FAB0(v201, v196);

  sub_10009E7F4(v196, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000059A8(v203, &qword_100418D30, &qword_10036D8A0);
  sub_10009E7F4(v197, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  sub_1000059A8(v194, &qword_100418D30, &qword_10036D8A0);
  return (v198 & 1) != 0;
}

uint64_t sub_100083030(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &unk_100370878);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000830D0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &unk_100370800);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008313C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &unk_100370800);

  return Message.hash(into:)();
}

uint64_t sub_1000831E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D18);
  sub_100005DF0(v0, qword_100432D18);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_noise_ppb_per_second_per_rtHz";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "phase_noise_ppb_per_rtHz";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "frequency_variance_ppb2";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "phase_variance_nanoseconds2";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "clock_jump_detected";
  *(v15 + 8) = 19;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}