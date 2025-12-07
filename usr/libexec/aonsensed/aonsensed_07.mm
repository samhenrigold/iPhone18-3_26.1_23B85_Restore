uint64_t sub_1000BB108(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000BB140(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 24);
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

uint64_t sub_1000BB1DC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000BB224(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000BB25C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 28);
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

uint64_t sub_1000BB2F8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000BB328@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1000BB3E0(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
  sub_1000059A8(v1 + v3, &qword_10041CA30, &qword_100374460);
  sub_1000112AC(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1000BB498(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_10041CA30, &qword_100374460);
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
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_100198F94;
}

double sub_1000BB7F8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BB838(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000BB870(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0) + 20);
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

uint64_t sub_1000BB90C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000BB954(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BB994(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000BB9CC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0) + 24);
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

uint64_t sub_1000BBA68()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000BBAB0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

void (*sub_1000BBB44(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000BBBEC;
}

BOOL sub_1000BBC18()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 4;
}

uint64_t sub_1000BBCD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172298(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000BBE44(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA38, &qword_100374468) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA38, &qword_100374468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return sub_1000BC0B4;
}

void sub_1000BC0B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172298(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172298(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000BC314()
{
  v1 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA38, &qword_100374468);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA38, &qword_100374468);
  return v7;
}

uint64_t sub_1000BC434()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172298(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000BC5EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BC6A8;
}

double sub_1000BC764(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000BC81C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4, double a5)
{
  v9 = v5;
  v11 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v14 = swift_allocObject();
    a3(v13);

    *(v9 + v11) = v14;
    v13 = v14;
  }

  v15 = v13 + *a4;
  result = swift_beginAccess();
  *v15 = a5;
  *(v15 + 8) = 0;
  return result;
}

void (*sub_1000BC8F4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BC9B0;
}

void sub_1000BC9E4(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 88);
    v15 = *(v8 + 80);
    a3(0);
    v16 = swift_allocObject();
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = v13 + *a5;
  swift_beginAccess();
  *v17 = v9;
  *(v17 + 8) = 0;

  free(v8);
}

BOOL sub_1000BCAFC(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t sub_1000BCBAC(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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
  *(v13 + 8) = 1;
  return result;
}

void (*sub_1000BCCE4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BCDA0;
}

void (*sub_1000BCEA4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speed;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BCF60;
}

void (*sub_1000BD064(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__speedAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BD120;
}

void (*sub_1000BD224(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__course;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BD2E0;
}

void (*sub_1000BD3E4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BD4A0;
}

void (*sub_1000BD5A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BD660;
}

void (*sub_1000BD764(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__confidence;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000BD81C;
}

void (*sub_1000BD920(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lifespan;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BD9DC;
}

uint64_t sub_1000BDA78()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  if (*(v1 + v2) == 14)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*sub_1000BDB1C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 14)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000BDBCC;
}

BOOL sub_1000BDC00()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  return *(v1 + v2) != 14;
}

uint64_t sub_1000BDC5C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  result = swift_beginAccess();
  *(v4 + v6) = 14;
  return result;
}

uint64_t sub_1000BDD1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172298(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000BDE90(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA38, &qword_100374468) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA38, &qword_100374468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return sub_1000BE100;
}

void sub_1000BE100(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172298(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172298(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000BE360()
{
  v1 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA38, &qword_100374468);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA38, &qword_100374468);
  return v7;
}

uint64_t sub_1000BE480()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172298(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000BE638(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourse;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BE6F4;
}

uint64_t sub_1000BE7B0(uint64_t (*a1)(void), void *a2)
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

uint64_t sub_1000BE864(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

void (*sub_1000BE930(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__floor;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000BE9E8;
}

void sub_1000BEA1C(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL sub_1000BEB34(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t sub_1000BEBE4(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

void (*sub_1000BED1C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000BEDCC;
}

void sub_1000BEE00(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 80);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = *a5;
  swift_beginAccess();
  *(v13 + v17) = v9;

  free(v8);
}

uint64_t sub_1000BEF10()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  result = swift_beginAccess();
  *(v4 + v6) = 5;
  return result;
}

void (*sub_1000BF018(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000BF0C8;
}

uint64_t sub_1000BF11C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

uint64_t sub_1000BF1DC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 3)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

void (*sub_1000BF288(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000BF338;
}

BOOL sub_1000BF38C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 3;
}

uint64_t sub_1000BF3F0()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

void (*sub_1000BF4F8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 8)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000BF5A8;
}

uint64_t sub_1000BF5FC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  result = swift_beginAccess();
  *(v4 + v6) = 8;
  return result;
}

void (*sub_1000BF704(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__ellipsoidalAltitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000BF7C0;
}

void (*sub_1000BF8C4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000BF970;
}

uint64_t sub_1000BF9C4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172298(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

uint64_t sub_1000BFAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198808();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_1000BFAF8@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_100172BE4(a2);
  *a1 = result;
  return result;
}

unint64_t sub_1000BFB44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100172BE4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BFBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001987B4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000BFC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100172C20(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000BFC68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100172C20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BFD20(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000BFD58(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100026DCC;
}

uint64_t sub_1000BFDF4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000BFE3C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000BFE74(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 24);
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

uint64_t sub_1000BFF10()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000BFF68(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000BFF98(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_100025584;
}

uint64_t sub_1000C0020()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1000C0070(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000C00A0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000C0128()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v0 + *(result + 32)) = 2;
  return result;
}

int *sub_1000C0150@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t sub_1000C01CC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000C0204(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0) + 20);
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

uint64_t sub_1000C02A0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000C02E8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000C0320(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0) + 24);
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

uint64_t sub_1000C03BC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000C0404@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1000C045C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 20));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000C0488(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000C04B8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000C0544()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v0 + *(result + 20)) = 7;
  return result;
}

uint64_t sub_1000C0584(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000C05BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 24);
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

uint64_t sub_1000C0654()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000C069C(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000C06D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 28);
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

uint64_t sub_1000C0770()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000C07B8(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000C07F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 32);
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

uint64_t sub_1000C088C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000C08D4(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000C090C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 36);
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

uint64_t sub_1000C09A8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000C09F0(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000C0A28(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 40);
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

uint64_t sub_1000C0AC4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000C0B1C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1000C0B4C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000C0BD4()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1000C0C24(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1000C0C54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000C0CDC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

int *sub_1000C0D04@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(a1 + result[5]) = 7;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + result[11]) = 2;
  *(a1 + result[12]) = 2;
  return result;
}

uint64_t sub_1000C0DC4(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*sub_1000C0E68(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C0F18;
}

void sub_1000C0F18(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

uint64_t sub_1000C1004()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  return result;
}

void (*sub_1000C10F8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C11A8;
}

void (*sub_1000C1284(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C1334;
}

void (*sub_1000C1410(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C14C0;
}

double sub_1000C1544()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  result = *(v1 + 80);
  if (*(v1 + 88))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000C15A0(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  return result;
}

void (*sub_1000C1644(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 88))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C16F4;
}

void sub_1000C16F4(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 80) = v3;
  *(v7 + 88) = 0;

  free(v2);
}

BOOL sub_1000C17C8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return (*(v1 + 88) & 1) == 0;
}

uint64_t sub_1000C181C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
  return result;
}

uint64_t sub_1000C18D0(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 92) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*sub_1000C1974(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 92);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000C1A24;
}

void sub_1000C1A24(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 92) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

uint64_t sub_1000C1B10()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 92) = 0;
  *(v4 + 96) = 1;
  return result;
}

uint64_t sub_1000C1BC4(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 100) = a1;
  *(v6 + 104) = 0;
  return result;
}

void (*sub_1000C1C68(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 100);
  if (*(v6 + 104))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000C1D18;
}

void sub_1000C1D18(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 100) = v3;
  *(v7 + 104) = 0;

  free(v2);
}

uint64_t sub_1000C1E04()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 100) = 0;
  *(v4 + 104) = 1;
  return result;
}

uint64_t sub_1000C1EB8(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 108) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*sub_1000C1F5C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 108);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000C200C;
}

void sub_1000C200C(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 108) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

uint64_t sub_1000C20F8()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 108) = 0;
  *(v4 + 112) = 1;
  return result;
}

uint64_t sub_1000C2194()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 113) & 1;
}

uint64_t sub_1000C21E4(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 113) = a1 & 1;
  return result;
}

void (*sub_1000C2288(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 113) & 1;
  return sub_1000C232C;
}

void sub_1000C232C(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 113) = v5;

  free(v2);
}

BOOL sub_1000C23F8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 113) != 2;
}

uint64_t sub_1000C244C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 113) = 2;
  return result;
}

uint64_t sub_1000C24E4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  if (*(v1 + 114) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 114);
  }
}

uint64_t sub_1000C2538(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 114) = a1;
  return result;
}

void (*sub_1000C25D8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 114);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000C2680;
}

void sub_1000C2680(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 114) = v3;

  free(v2);
}

BOOL sub_1000C2750()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 114) != 4;
}

uint64_t sub_1000C27A4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 114) = 4;
  return result;
}

uint64_t sub_1000C285C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C29D0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA38, &qword_100374468) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA38, &qword_100374468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return sub_1000C2C40;
}

void sub_1000C2C40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C2EA0()
{
  v1 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA38, &qword_100374468);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA38, &qword_100374468);
  return v7;
}

uint64_t sub_1000C2FC0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C3178(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C3234;
}

void (*sub_1000C3338(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000C33F0;
}

void (*sub_1000C34F4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000C35AC;
}

uint64_t sub_1000C3668(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) & 1;
}

void (*sub_1000C3710(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000C37BC;
}

void sub_1000C37F0(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 72);
  v11 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 80);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    a4(v13);

    *(v15 + v14) = v16;
    v13 = v16;
  }

  v17 = *a5;
  swift_beginAccess();
  *(v13 + v17) = v11;

  free(v8);
}

BOOL sub_1000C38FC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 2;
}

uint64_t sub_1000C3960()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

uint64_t sub_1000C3A00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA40, &qword_100374470);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA40, &qword_100374470);
  }

  return result;
}

uint64_t sub_1000C3B9C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA40, &qword_100374470);
  return swift_endAccess();
}

void (*sub_1000C3D10(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA40, &qword_100374470) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA40, &qword_100374470);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA40, &qword_100374470);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  }

  return sub_1000C3F80;
}

void sub_1000C3F80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA40, &qword_100374470);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA40, &qword_100374470);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C41E0()
{
  v1 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA40, &qword_100374470);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA40, &qword_100374470);
  return v7;
}

uint64_t sub_1000C4300()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA40, &qword_100374470);
  return swift_endAccess();
}

void (*sub_1000C44A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000C4554;
}

uint64_t sub_1000C4594()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  result = swift_beginAccess();
  *(v4 + v6) = 4;
  return result;
}

void (*sub_1000C469C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return sub_1000C4758;
}

uint64_t sub_1000C4814(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C4988(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA38, &qword_100374468) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA38, &qword_100374468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return sub_1000C4BF8;
}

void sub_1000C4BF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C4E58()
{
  v1 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA38, &qword_100374468);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA38, &qword_100374468);
  return v7;
}

uint64_t sub_1000C4F78()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C5130(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C51EC;
}

void (*sub_1000C52F0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C53AC;
}

void (*sub_1000C54B0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000C5560;
}

uint64_t sub_1000C55B4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

void (*sub_1000C56BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000C5768;
}

uint64_t sub_1000C57BC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

uint64_t sub_1000C585C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA48, &qword_100374478);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA48, &qword_100374478);
  }

  return result;
}

uint64_t sub_1000C5A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA48, &qword_100374478);
  return swift_endAccess();
}

void (*sub_1000C5B80(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA48, &qword_100374478) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA48, &qword_100374478);
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
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA48, &qword_100374478);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  }

  return sub_1000C5E04;
}

void sub_1000C5E04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA48, &qword_100374478);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA48, &qword_100374478);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C6064()
{
  v1 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA48, &qword_100374478);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA48, &qword_100374478);
  return v7;
}

uint64_t sub_1000C6184()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA48, &qword_100374478);
  return swift_endAccess();
}

void (*sub_1000C633C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C63F8;
}

void (*sub_1000C64FC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C65B8;
}

void (*sub_1000C66BC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C6778;
}

void (*sub_1000C687C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C6938;
}

void (*sub_1000C6A3C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C6AF8;
}

void (*sub_1000C6BFC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C6CB8;
}

void (*sub_1000C6DBC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000C6E68;
}

uint64_t sub_1000C6EBC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000C6FC4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C7080;
}

void (*sub_1000C7184(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C7240;
}

void (*sub_1000C7344(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000C73F0;
}

uint64_t sub_1000C7444()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

uint64_t sub_1000C7504(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C7678(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA38, &qword_100374468) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA38, &qword_100374468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return sub_1000C78E8;
}

void sub_1000C78E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA38, &qword_100374468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C7B48()
{
  v1 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA38, &qword_100374468);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA38, &qword_100374468);
  return v7;
}

uint64_t sub_1000C7C68()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA38, &qword_100374468);
  return swift_endAccess();
}

void (*sub_1000C7E20(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C7EDC;
}

void (*sub_1000C7FE0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000C8090;
}

uint64_t sub_1000C80E4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

void (*sub_1000C81EC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C82A8;
}

void (*sub_1000C83AC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C8468;
}

void (*sub_1000C856C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C8628;
}

void (*sub_1000C872C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C87E8;
}

void (*sub_1000C88EC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C89A8;
}

void (*sub_1000C8AAC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000C8B58;
}

uint64_t sub_1000C8BAC()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000C8CB4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C8D70;
}

void (*sub_1000C8E74(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000C8F30;
}

uint64_t sub_1000C8FCC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  swift_beginAccess();
}

uint64_t sub_1000C9024(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    sub_100172D1C(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

void (*sub_1000C90D4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000C9184;
}

void sub_1000C9184(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v10 = swift_allocObject();
      sub_100172D1C(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v16 = swift_allocObject();
      sub_100172D1C(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

void (*sub_1000C933C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000C93EC;
}

uint64_t sub_1000C9440()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

uint64_t sub_1000C94E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA50, &qword_100374480);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
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
  *(a1 + v8[8]) = 4;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA50, &qword_100374480);
  }

  return result;
}

int *sub_1000C9698@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[8]) = 4;
  return result;
}

uint64_t sub_1000C9704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    sub_100172D1C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_10041CA50, &qword_100374480);
  return swift_endAccess();
}

void (*sub_1000C9878(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA50, &qword_100374480) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA50, &qword_100374480);
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
    *(v13 + v8[8]) = 4;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA50, &qword_100374480);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  }

  return sub_1000C9B04;
}

void sub_1000C9B04(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      sub_100172D1C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA50, &qword_100374480);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v22 = swift_allocObject();
      sub_100172D1C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA50, &qword_100374480);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000C9D64()
{
  v1 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA50, &qword_100374480);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA50, &qword_100374480);
  return v7;
}

uint64_t sub_1000C9E84()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    sub_100172D1C(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v10, &qword_10041CA50, &qword_100374480);
  return swift_endAccess();
}

void (*sub_1000CA03C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CA0EC;
}

uint64_t sub_1000CA140()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

void (*sub_1000CA248(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000CA304;
}

void (*sub_1000CA408(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000CA4C4;
}

uint64_t sub_1000CA56C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  if (*(v3 + v4) == 4)
  {
    return 0;
  }

  else
  {
    return *(v3 + v4);
  }
}

void (*sub_1000CA610(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CA6C0;
}

BOOL sub_1000CA700(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 4;
}

uint64_t sub_1000CA75C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  result = swift_beginAccess();
  *(v4 + v6) = 4;
  return result;
}

void (*sub_1000CA864(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000CA910;
}

uint64_t sub_1000CA964()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000CAA6C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CAB1C;
}

uint64_t sub_1000CAB70()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

uint64_t sub_1000CAC30(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  if (*(v4 + v5) == 5)
  {
    return 0;
  }

  else
  {
    return *(v4 + v5);
  }
}

void (*sub_1000CACDC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CAD8C;
}

BOOL sub_1000CADE0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 5;
}

uint64_t sub_1000CAE44()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  result = swift_beginAccess();
  *(v4 + v6) = 5;
  return result;
}

void (*sub_1000CAF4C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000CAFF8;
}

uint64_t sub_1000CB04C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000CB154(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000CB200;
}

uint64_t sub_1000CB254()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    sub_100172D1C(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

uint64_t sub_1000CB300(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198760();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB378(uint64_t a1, uint64_t a2)
{
  v4 = sub_10019870C();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB3C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10017440C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1000CB408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017440C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CB450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001986B8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198664();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB520(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198610();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001985BC();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198568();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CB664(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CB69C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 20);
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

uint64_t sub_1000CB738()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CB780(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CB7B8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 24);
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

uint64_t sub_1000CB854()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

double sub_1000CB89C(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000CB8DC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CB914(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 28);
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

uint64_t sub_1000CB9B0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CB9E0()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000CBA0C(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1000CBA3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_100025584;
}

uint64_t sub_1000CBAC8()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  *(v0 + *(result + 32)) = 4;
  return result;
}

uint64_t sub_1000CBB4C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 20));
  if (v1 == 14)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000CBB78(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000CBBA8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 14)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000CBC34()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v0 + *(result + 20)) = 14;
  return result;
}

uint64_t sub_1000CBC84(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000CBCB4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000CBD3C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1000CBDA4(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CBDDC(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 20);
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

uint64_t sub_1000CBE78()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CBEC0(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CBEF8(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 24);
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

uint64_t sub_1000CBF94()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CBFDC(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC014(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 28);
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

uint64_t sub_1000CC0B0()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC0F8(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC130(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 32);
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

uint64_t sub_1000CC1CC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC22C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC264(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0) + 20);
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

uint64_t sub_1000CC300()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC348(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC380(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0) + 24);
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

uint64_t sub_1000CC41C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC47C(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC4B4(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 20);
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

uint64_t sub_1000CC550()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t (*sub_1000CC5B0(uint64_t *a1))()
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 24);
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

  return sub_100198F98;
}

uint64_t sub_1000CC6A8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1000CC718(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC750(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 20);
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

uint64_t sub_1000CC7EC()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC834(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC86C(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 24);
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

uint64_t sub_1000CC908()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CC950(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1000CC988(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 28);
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

uint64_t sub_1000CCA24()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1000CCA8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000CCBF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA30, &qword_100374460) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA30, &qword_100374460);
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
      sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return sub_1000CCE78;
}

void sub_1000CCE78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA30, &qword_100374460);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000CD0C8()
{
  v1 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA30, &qword_100374460);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA30, &qword_100374460);
  return v7;
}

uint64_t sub_1000CD1E8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA30, &qword_100374460);
  return swift_endAccess();
}

void (*sub_1000CD398(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1000CD450;
}

uint64_t sub_1000CD4EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA58, &qword_100374488);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100443CF0 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100443CF8;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA58, &qword_100374488);
  }

  return result;
}

uint64_t sub_1000CD6B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA58, &qword_100374488);
  return swift_endAccess();
}

void (*sub_1000CD824(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA58, &qword_100374488) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA58, &qword_100374488);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100443CF0 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100443CF8;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA58, &qword_100374488);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  }

  return sub_1000CDABC;
}

void sub_1000CDABC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA58, &qword_100374488);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA58, &qword_100374488);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000CDD0C()
{
  v1 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA58, &qword_100374488);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA58, &qword_100374488);
  return v7;
}

uint64_t sub_1000CDE2C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA58, &qword_100374488);
  return swift_endAccess();
}

uint64_t sub_1000CDF74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA60, &qword_100374490);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100443D30 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100443D38;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA60, &qword_100374490);
  }

  return result;
}

uint64_t sub_1000CE140(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA60, &qword_100374490);
  return swift_endAccess();
}

void (*sub_1000CE2AC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA60, &qword_100374490) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA60, &qword_100374490);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100443D30 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100443D38;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_10041CA60, &qword_100374490);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  return sub_1000CE544;
}

void sub_1000CE544(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA60, &qword_100374490);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA60, &qword_100374490);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000CE794()
{
  v1 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA60, &qword_100374490);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA60, &qword_100374490);
  return v7;
}

uint64_t sub_1000CE8B4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA60, &qword_100374490);
  return swift_endAccess();
}

uint64_t sub_1000CE9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA68, &qword_100374498);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 14;
  *(a1 + *(v8 + 24)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA68, &qword_100374498);
  }

  return result;
}

uint64_t sub_1000CEB8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA68, &qword_100374498);
  return swift_endAccess();
}

void (*sub_1000CECF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA68, &qword_100374498) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA68, &qword_100374498);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 14;
    *(v13 + *(v8 + 24)) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA68, &qword_100374498);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  return sub_1000CEF5C;
}

void sub_1000CEF5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA68, &qword_100374498);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA68, &qword_100374498);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000CF1AC()
{
  v1 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA68, &qword_100374498);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA68, &qword_100374498);
  return v7;
}

uint64_t sub_1000CF2CC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA68, &qword_100374498);
  return swift_endAccess();
}

void (*sub_1000CF47C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1000CF528;
}

uint64_t sub_1000CF57C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    sub_10012A7D4(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  result = swift_beginAccess();
  *(v4 + v6) = 2;
  return result;
}

void (*sub_1000CF67C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1000CF738;
}

void (*sub_1000CF83C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000CF8EC;
}

uint64_t sub_1000CF940()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    sub_10012A7D4(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

uint64_t sub_1000CF9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA70, &qword_1003744A0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
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
    return sub_1000059A8(v5, &qword_10041CA70, &qword_1003744A0);
  }

  return result;
}

uint64_t sub_1000CFB94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA70, &qword_1003744A0);
  return swift_endAccess();
}

void (*sub_1000CFD00(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA70, &qword_1003744A0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA70, &qword_1003744A0);
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
      sub_1000059A8(v7, &qword_10041CA70, &qword_1003744A0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  }

  return sub_1000CFF90;
}

void sub_1000CFF90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA70, &qword_1003744A0);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA70, &qword_1003744A0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D01E0()
{
  v1 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA70, &qword_1003744A0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA70, &qword_1003744A0);
  return v7;
}

uint64_t sub_1000D0300()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA70, &qword_1003744A0);
  return swift_endAccess();
}

uint64_t sub_1000D0448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA78, &qword_1003744A8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA78, &qword_1003744A8);
  }

  return result;
}

uint64_t sub_1000D05E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA78, &qword_1003744A8);
  return swift_endAccess();
}

void (*sub_1000D0750(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA78, &qword_1003744A8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA78, &qword_1003744A8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA78, &qword_1003744A8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  return sub_1000D09C0;
}

void sub_1000D09C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA78, &qword_1003744A8);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA78, &qword_1003744A8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D0C10()
{
  v1 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA78, &qword_1003744A8);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA78, &qword_1003744A8);
  return v7;
}

uint64_t sub_1000D0D30()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA78, &qword_1003744A8);
  return swift_endAccess();
}

uint64_t sub_1000D0E78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA80, &qword_1003744B0);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10041CA80, &qword_1003744B0);
  }

  return result;
}

uint64_t sub_1000D1010(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA80, &qword_1003744B0);
  return swift_endAccess();
}

void (*sub_1000D117C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA80, &qword_1003744B0) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA80, &qword_1003744B0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v13 + *(v8 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10041CA80, &qword_1003744B0);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  return sub_1000D13E8;
}

void sub_1000D13E8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA80, &qword_1003744B0);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA80, &qword_1003744B0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D1638()
{
  v1 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA80, &qword_1003744B0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA80, &qword_1003744B0);
  return v7;
}

uint64_t sub_1000D1758()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA80, &qword_1003744B0);
  return swift_endAccess();
}

uint64_t sub_1000D1908(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

  v16 = *a5;
  result = swift_beginAccess();
  *(v13 + v16) = a1;
  return result;
}

void (*sub_1000D19C4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_1000D1A74;
}

void sub_1000D1AA8(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 80);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    v17 = v13;
    v13 = v16;
    a4(v17);
    *(v15 + v14) = v16;
  }

  v18 = *a5;
  swift_beginAccess();
  *(v13 + v18) = v9;

  free(v8);
}

uint64_t sub_1000D1BB0()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    sub_10012A7D4(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  result = swift_beginAccess();
  *(v4 + v6) = 3;
  return result;
}

uint64_t sub_1000D1C48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10041CA88, &qword_1003744B8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000112AC(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
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
    return sub_1000059A8(v5, &qword_10041CA88, &qword_1003744B8);
  }

  return result;
}

uint64_t sub_1000D1DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10012A7D4(v11);
    *(v2 + v7) = v10;
  }

  sub_1000112AC(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10041CA88, &qword_1003744B8);
  return swift_endAccess();
}

void (*sub_1000D1F60(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10041CA88, &qword_1003744B8) - 8) + 64);
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
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
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
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10041CA88, &qword_1003744B8);
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
      sub_1000059A8(v7, &qword_10041CA88, &qword_1003744B8);
    }
  }

  else
  {
    sub_1000112AC(v7, v13, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  }

  return sub_1000D21E0;
}

void sub_1000D21E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100172B7C(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      sub_10012A7D4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10041CA88, &qword_1003744B8);
    swift_endAccess();
    sub_100015F24(v10, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
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
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v22 = swift_allocObject();
      sub_10012A7D4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000112AC(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10041CA88, &qword_1003744B8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D2430()
{
  v1 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10041CA88, &qword_1003744B8);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10041CA88, &qword_1003744B8);
  return v7;
}

uint64_t sub_1000D2550()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10012A7D4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10041CA88, &qword_1003744B8);
  return swift_endAccess();
}

uint64_t sub_1000D26A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100198514();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001984C0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D283C@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
  return UnknownStorage.init()();
}

uint64_t sub_1000D287C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D28A8(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D28D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D2964()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 20)) = 3;
  return result;
}

uint64_t sub_1000D29B4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1000D29E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2A6C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1000D2A94()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28));
  if (v1 == 5)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000D2AC0(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1000D2AF0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 1;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1000D2B7C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 28)) = 5;
  return result;
}

uint64_t sub_1000D2BBC(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1000D2BF4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 32);
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

uint64_t sub_1000D2C8C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1000D2CE4(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1000D2D14(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2D9C()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

int *sub_1000D2DC4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(a1 + result[5]) = 3;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 5;
  v3 = a1 + result[8];
  *v3 = 0;
  *(v3 + 4) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_1000D2E58(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1000D2E88(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1000D2F10()
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1000D2F38@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(a1 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1000D2F70()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 16) == 72)
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_1000D3004(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
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

void (*sub_1000D30C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 72)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3168;
}

void sub_1000D3194(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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

BOOL sub_1000D3274()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 72;
}

uint64_t sub_1000D330C(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
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

  result = swift_beginAccess();
  *(v11 + 16) = a4;
  return result;
}

uint64_t sub_1000D33CC()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 17) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 17);
  }
}

uint64_t sub_1000D3420(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 17) = a1;
  return result;
}

void (*sub_1000D34C0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 17);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3568;
}

void sub_1000D3568(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 17) = v3;

  free(v2);
}

BOOL sub_1000D3638()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 4;
}

uint64_t sub_1000D368C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 17) = 4;
  return result;
}

uint64_t sub_1000D3724()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 18) == 3)
  {
    return 0;
  }

  else
  {
    return *(v1 + 18);
  }
}

uint64_t sub_1000D3778(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 18) = a1;
  return result;
}

void (*sub_1000D3818(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 18);
  if (v7 == 3)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D38C0;
}

void sub_1000D38C0(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 18) = v3;

  free(v2);
}

BOOL sub_1000D3990()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 18) != 3;
}

uint64_t sub_1000D39E4()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 18) = 3;
  return result;
}

uint64_t sub_1000D3A7C()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 19) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 19);
  }
}

uint64_t sub_1000D3AD0(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 19) = a1;
  return result;
}

void (*sub_1000D3B70(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 19);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1000D3C18;
}

void sub_1000D3C18(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    sub_1001745A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 19) = v3;

  free(v2);
}

BOOL sub_1000D3CE8()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 19) != 4;
}

uint64_t sub_1000D3D3C()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    sub_1001745A0(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 19) = 4;
  return result;
}

uint64_t sub_1000D3DD4()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) & 1;
}

uint64_t sub_1000D3E24(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    sub_1001745A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 20) = a1 & 1;
  return result;
}

void (*sub_1000D3EC8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 20) & 1;
  return sub_1000D3F6C;
}