BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasSuitability.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 4;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.coordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.coordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_DaemonLocation.coordinate.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.coordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__coordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.horizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.horizontalAccuracy.modify;
}

double CLP_LogEntry_PrivateData_DaemonLocation.horizontalAccuracy.getter(uint64_t (*a1)(void), void *a2)
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.horizontalAccuracy.setter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4, double a5)
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.altitude.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.altitude.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.horizontalAccuracy.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasHorizontalAccuracy.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.clearHorizontalAccuracy()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.verticalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.verticalAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.speed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.speed.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.speedAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.speedAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.course.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.course.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.courseAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.courseAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.timestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.timestamp.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.confidence.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.confidence.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.lifespan.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.lifespan.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.type.getter()
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.type.modify;
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  return *(v1 + v2) != 14;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__type;
  swift_beginAccess();
  *(v4 + v6) = 14;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.rawCoordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.rawCoordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_DaemonLocation.rawCoordinate.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.rawCoordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasRawCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearRawCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.rawCourse.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.rawCourse.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.confidence.getter(uint64_t (*a1)(void), void *a2)
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.confidence.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.floor.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.floor.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.confidence.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasConfidence.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 4) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.clearConfidence()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.type.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

  v15 = *a5;
  result = swift_beginAccess();
  *(v13 + v15) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.integrity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.integrity.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.type.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearIntegrity()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__integrity;
  swift_beginAccess();
  *(v4 + v6) = 5;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.referenceFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.referenceFrame.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.referenceFrame.getter(uint64_t (*a1)(void), uint64_t *a2)
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.rawReferenceFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.rawReferenceFrame.modify;
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasReferenceFrame.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 3;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearRawReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawReferenceFrame;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.signalEnvironmentType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.signalEnvironmentType.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearSignalEnvironmentType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalEnvironmentType;
  swift_beginAccess();
  *(v4 + v6) = 8;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.ellipsoidalAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.ellipsoidalAltitude.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocation.fromSimulationController.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocation.fromSimulationController.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocation.clearFromSimulationController()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fromSimulationController;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocation::ClientLocationSuitabilityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocation::ClientLocationSuitabilityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType@<X0>(Swift::Int a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocation::LocationIntegrityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocation::LocationIntegrityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.rawUnmodifiedCourse.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatcherData.rawUnmodifiedCourse.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapMatcherData.clearRawUnmodifiedCourse()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.rawUnmodifiedCourseUnc.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatcherData.rawUnmodifiedCourseUnc.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapMatcherData.clearRawUnmodifiedCourseUnc()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.isStatic.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatcherData.isStatic.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapMatcherData.isMounted.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatcherData.isMounted.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_MapMatcherData.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_PressureSample.value.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PressureSample.value.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PressureSample.clearValue()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_PressureSample.std.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_PressureSample.std.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_PressureSample.clearStd()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.constellation.getter()
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

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.constellation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.constellation.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.satID.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.satID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientSatelliteInfo.clearSatID()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.elevationDeg.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.elevationDeg.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientSatelliteInfo.clearElevationDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.azimuthDeg.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.azimuthDeg.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientSatelliteInfo.clearAzimuthDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.l1Cn0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.l1Cn0.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientSatelliteInfo.clearL1Cn0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.l5Cn0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.l5Cn0.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientSatelliteInfo.clearL5Cn0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.isTracked.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.isTracked.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.isPhaseTracked.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientSatelliteInfo.isPhaseTracked.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_ClientSatelliteInfo.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.odometer.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearOdometer()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistance.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistanceAccuracy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistanceAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.timestampGps.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.timestampGps.modify;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.machTime.getter()
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.machTime.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.machTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.machTime.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.machTime.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 80) = v3;
  *(v7 + 88) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasMachTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return (*(v1 + 88) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMachTime()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 80) = 0;
  *(v4 + 88) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 92) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMaj.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 92) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearHorzUncSemiMaj()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 92) = 0;
  *(v4 + 96) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 100) = a1;
  *(v6 + 104) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMin.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 100) = v3;
  *(v7 + 104) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearHorzUncSemiMin()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 100) = 0;
  *(v4 + 104) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 108) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.horzUncSemiMajAz.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 108) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearHorzUncSemiMajAz()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 108) = 0;
  *(v4 + 112) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.isFitnessMatch.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 113) & 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.isFitnessMatch.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 113) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isFitnessMatch.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isFitnessMatch.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.isFitnessMatch.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 113) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasIsFitnessMatch.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 113) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsFitnessMatch()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 113) = 2;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchQuality.getter()
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchQuality.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 114) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchQuality.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchQuality.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchQuality.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 114) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasMatchQuality.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  swift_beginAccess();
  return *(v1 + 114) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMatchQuality()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 114) = 4;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCoordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCoordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCoordinate.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCoordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasMatchCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMatchCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCourse.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchCourse.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchFormOfWay.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchFormOfWay.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchRoadClass.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchRoadClass.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.fromSimulationController.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

  v15 = *a5;
  result = swift_beginAccess();
  *(v13 + v15) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchShifted.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.matchShifted.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.fromSimulationController.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMatchShifted()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.pressure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.pressure.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.pressure.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.pressure.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.pressure.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasPressure.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearPressure()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_PressureSampleVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.undulationModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.undulationModel.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearUndulationModel()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
  swift_beginAccess();
  *(v4 + v6) = 4;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.undulation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.undulation.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialCoordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialCoordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialCoordinate.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialCoordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasSpecialCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearSpecialCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialHorizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.specialHorizontalAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.machContinuousTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.machContinuousTime.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.originDevice.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.originDevice.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearOriginDevice()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isMatcherPropagatedCoordinates.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isMatcherPropagatedCoordinates.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsMatcherPropagatedCoordinates()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherData.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasMapMatcherData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMapMatcherData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMd, &_s10ALProtobuf035CLP_LogEntry_PrivateData_MapMatcherF0VSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.slope.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.slope.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.maxAbsSlope.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.maxAbsSlope.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.groundAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.groundAltitude.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.groundAltitudeUncertainty.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.groundAltitudeUncertainty.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.smoothedGpsAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.smoothedGpsAltitude.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.smoothedGpsAltitudeUncertainty.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.smoothedGpsAltitudeUncertainty.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isSimulatedOrSpoofed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isSimulatedOrSpoofed.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsSimulatedOrSpoofed()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawHorizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawHorizontalAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawCourseAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawCourseAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isCoordinateFused.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isCoordinateFused.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsCoordinateFused()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCoordinate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCoordinate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCoordinate.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCoordinate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasFusedCoordinate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearFusedCoordinate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ClientLocationCoordinateVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedHorizontalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedHorizontalAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedReferenceFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedReferenceFrame.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearFusedReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCourse.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCourse.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCourseAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedCourseAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedWorstCaseError.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedWorstCaseError.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.preFusingAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.preFusingAltitude.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.preFusingVerticalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.preFusingVerticalAccuracy.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isCoordinateFusedWithVl.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isCoordinateFusedWithVl.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsCoordinateFusedWithVl()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedAltitude.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedVerticalAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.fusedVerticalAccuracy.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.satelliteVisibilityReport.getter()
{
  type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  swift_beginAccess();
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.satelliteVisibilityReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.satelliteVisibilityReport.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.satelliteVisibilityReport.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.satelliteVisibilityReport.modify(uint64_t *a1, char a2)
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.gnssContent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.gnssContent.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearGnssContent()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawAltitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  }

  return result;
}

int *CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawAltitude.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawAltitude.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    *(v14 + v9[8]) = 4;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  }

  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawAltitude.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.rawAltitude.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
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
      specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasRawAltitude.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearRawAltitude()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0V12AltitudeInfoVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextState.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearEstimatedPositionContextState()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextStateProbabilityIndoor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextStateProbabilityIndoor.modify;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextStateProbabilityOutdoor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.estimatedPositionContextStateProbabilityOutdoor.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.undulationModel.getter(uint64_t *a1)
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

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.mapMatcherType.modify;
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasUndulationModel.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearMapMatcherType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
  swift_beginAccess();
  *(v4 + v6) = 4;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isRouteHintsTriggeredMapMatching.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isRouteHintsTriggeredMapMatching.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsRouteHintsTriggeredMapMatching()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.loiLocationSourceAccuracy.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.loiLocationSourceAccuracy.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearLoiLocationSourceAccuracy()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.integrity.getter(uint64_t (*a1)(void), uint64_t *a2)
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

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.batchedLocationFixType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.batchedLocationFixType.modify;
}

BOOL CLP_LogEntry_PrivateData_DaemonLocation.hasIntegrity.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 5;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearBatchedLocationFixType()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
  swift_beginAccess();
  *(v4 + v6) = 5;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isWifiFixWithAssociatedAp.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isWifiFixWithAssociatedAp.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsWifiFixWithAssociatedAp()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.isGnssFromRavenEstimators.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_DaemonLocationPrivate.isGnssFromRavenEstimators.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearIsGnssFromRavenEstimators()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType(uint64_t a1, uint64_t a2)
{
  matched = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType();

  return MEMORY[0x28217E238](a1, a2, matched);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType@<X0>(Swift::Int a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocationPrivate::UndulationModelType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DaemonLocationPrivate::UndulationModelType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.altitude.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.altitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.verticalAccuracy.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.verticalAccuracy.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.clearVerticalAccuracy()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.undulation.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.undulation.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.clearUndulation()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.undulationModel.getter()
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.undulationModel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.undulationModel.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.locationType.getter()
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

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.locationType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TechnologyStatus.locationType.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.active.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TechnologyStatus.active.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.timestamp.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleSpeed.timestamp.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleSpeed.clearTimestamp()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.speed.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleSpeed.speed.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleSpeed.clearSpeed()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.machContinuousTime.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleSpeed.machContinuousTime.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleSpeed.clearMachContinuousTime()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_VehicleSpeed.machAbsoluteTime.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleSpeed.machAbsoluteTime.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleSpeed.clearMachAbsoluteTime()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_VehicleHeading.timestamp.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleHeading.timestamp.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleHeading.clearTimestamp()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_VehicleHeading.trueHeading.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_VehicleHeading.trueHeading.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_VehicleHeading.clearTrueHeading()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.when.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_XtraFileAvailable.when.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_XtraFileAvailable.clearWhen()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_LocationDerivedSpeed.timestamp.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LocationDerivedSpeed.timestamp.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LocationDerivedSpeed.clearTimestamp()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LocationDerivedSpeed.speed.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LocationDerivedSpeed.speed.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LocationDerivedSpeed.clearSpeed()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_LocationDerivedSpeed.uncertainty.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_LocationDerivedSpeed.uncertainty.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_LocationDerivedSpeed.clearUncertainty()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_TimeStamp.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_Location.eventReceiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.eventReceiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_Location.eventReceiptTime.modify;
}

void CLP_LogEntry_PrivateData_Location.eventReceiptTime.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasEventReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearEventReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.client.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_Location.client.modify;
}

uint64_t CLP_LogEntry_PrivateData_Location.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.location.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.location.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_DaemonLocation._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  }

  return CLP_LogEntry_PrivateData_Location.location.modify;
}

void CLP_LogEntry_PrivateData_Location.location.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_DaemonLocationVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.locationPrivate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.locationPrivate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.locationPrivate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  }

  return CLP_LogEntry_PrivateData_Location.locationPrivate.modify;
}

void CLP_LogEntry_PrivateData_Location.locationPrivate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasLocationPrivate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearLocationPrivate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMd, &_s10ALProtobuf039CLP_LogEntry_PrivateData_DaemonLocationE0VSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.status.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 14;
  *(a1 + *(v8 + 24)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.status.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.status.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 14;
    *(v14 + *(v9 + 24)) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  }

  return CLP_LogEntry_PrivateData_Location.status.modify;
}

void CLP_LogEntry_PrivateData_Location.status.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasStatus.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearStatus()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_TechnologyStatusVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.active.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_Location.active.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearActive()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_Location.odometer.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_Location.odometer.modify;
}

void (*CLP_LogEntry_PrivateData_Location.signalQuality.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_Location.signalQuality.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearSignalQuality()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

uint64_t CLP_LogEntry_PrivateData_Location.vehicleSpeed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.vehicleSpeed.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.vehicleSpeed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  }

  return CLP_LogEntry_PrivateData_Location.vehicleSpeed.modify;
}

void CLP_LogEntry_PrivateData_Location.vehicleSpeed.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasVehicleSpeed.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearVehicleSpeed()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_VehicleSpeedVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.vehicleHeading.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.vehicleHeading.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.vehicleHeading.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + *(v9 + 24);
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  }

  return CLP_LogEntry_PrivateData_Location.vehicleHeading.modify;
}

void CLP_LogEntry_PrivateData_Location.vehicleHeading.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasVehicleHeading.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearVehicleHeading()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_VehicleHeadingVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.xtraFileAvailable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.xtraFileAvailable.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.xtraFileAvailable.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = (v14 + *(v9 + 24));
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  }

  return CLP_LogEntry_PrivateData_Location.xtraFileAvailable.modify;
}

void CLP_LogEntry_PrivateData_Location.xtraFileAvailable.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasXtraFileAvailable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearXtraFileAvailable()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_XtraFileAvailableVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.signalQuality.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

void (*CLP_LogEntry_PrivateData_Location.motionDetected.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_Location.motionDetected.modify;
}

void CLP_LogEntry_PrivateData_Location.signalQuality.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearMotionDetected()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v5 = swift_allocObject();
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

uint64_t CLP_LogEntry_PrivateData_Location.locationDerivedSpeed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Location.locationDerivedSpeed.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_Location.locationDerivedSpeed.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  }

  return CLP_LogEntry_PrivateData_Location.locationDerivedSpeed.modify;
}

void CLP_LogEntry_PrivateData_Location.locationDerivedSpeed.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
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
      CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_Location.hasLocationDerivedSpeed.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Location.clearLocationDerivedSpeed()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_Location._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_LocationDerivedSpeedVSgMR);
  swift_endAccess();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Location.SignalQualityType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
  return UnknownStorage.init()();
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.gnssModeOfOperation.getter()
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

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.gnssModeOfOperation.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.gnssModeOfOperation.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.activeGnssSession.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.activeGnssSession.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.rhythmicMode.getter()
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

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.rhythmicMode.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.rhythmicMode.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.currentModesOfOperation.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.currentModesOfOperation.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.clearCurrentModesOfOperation()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.hasSubscribedRhythmicClient_p.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.hasSubscribedRhythmicClient_p.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.allowStreaming.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_RhythmicStreamingControl.allowStreaming.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicStreamingControl.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  *(a1 + *(result + 20)) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.type.getter()
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

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.suitability.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
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

void (*CLP_LogEntry_PrivateData_MotionActivity.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_MotionActivity.type.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocation.suitability.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 16) != 72;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.clearSuitability()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), char a4)
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

uint64_t CLP_LogEntry_PrivateData_MotionActivity.confidence.getter()
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

uint64_t CLP_LogEntry_PrivateData_MotionActivity.confidence.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 17) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.confidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_MotionActivity.confidence.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.confidence.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 17) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 17) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearConfidence()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 17) = 4;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.mountedState.getter()
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

uint64_t CLP_LogEntry_PrivateData_MotionActivity.mountedState.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 18) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.mountedState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_MotionActivity.mountedState.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.mountedState.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 18) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasMountedState.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 18) != 3;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearMountedState()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 18) = 3;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.mountedConfidence.getter()
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

uint64_t CLP_LogEntry_PrivateData_MotionActivity.mountedConfidence.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 19) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.mountedConfidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_MotionActivity.mountedConfidence.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.mountedConfidence.modify(uint64_t *a1, char a2)
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
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 19) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasMountedConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 19) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearMountedConfidence()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 19) = 4;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.isStanding.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) & 1;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.isStanding.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 20) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.isStanding.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return CLP_LogEntry_PrivateData_MotionActivity.isStanding.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.isStanding.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 20) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasIsStanding.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 20) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearIsStanding()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 20) = 2;
}

float CLP_LogEntry_PrivateData_MotionActivity.tilt.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 28))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.tilt.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 28) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.tilt.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0.0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.tilt.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.tilt.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 28) = 0;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasTilt.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearTilt()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 28) = 1;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistance.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 32);
  if (*(v2 + 40))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistance.setter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
{
  v7 = v4;
  v9 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    a3(v11);

    *(v7 + v9) = v12;
    v11 = v12;
  }

  result = swift_beginAccess();
  *(v11 + 32) = a4;
  *(v11 + 40) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.timestampDeprecated.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 40))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.timestampDeprecated.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistance.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 88);
    v13 = *(v6 + 80);
    a3(0);
    v14 = swift_allocObject();
    a4(v11);

    *(v13 + v12) = v14;
    v11 = v14;
  }

  swift_beginAccess();
  *(v11 + 32) = v7;
  *(v11 + 40) = 0;

  free(v6);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasDeltaDistance.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 40) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearDeltaDistance()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.isVehicleConnected.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) & 1;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.isVehicleConnected.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v7 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 41) = a1 & 1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.isVehicleConnected.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v4 + 84) = *(v6 + 41) & 1;
  return CLP_LogEntry_PrivateData_MotionActivity.isVehicleConnected.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.isVehicleConnected.modify(uint64_t *a1, char a2)
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
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 41) = v5;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasIsVehicleConnected.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 41) != 2;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearIsVehicleConnected()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 41) = 2;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.exitState.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 42) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 42);
  }
}