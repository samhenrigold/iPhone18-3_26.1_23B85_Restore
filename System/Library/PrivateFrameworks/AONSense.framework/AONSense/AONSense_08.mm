uint64_t CLP_LogEntry_PrivateData_MotionActivity.exitState.setter(char a1)
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
  *(v6 + 42) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.exitState.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v7 = *(v6 + 42);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.exitState.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.exitState.modify(uint64_t *a1, char a2)
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
  *(v7 + 42) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasExitState.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 42) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearExitState()()
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
  *(v4 + 42) = 4;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistanceAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 48);
  if (*(v2 + 56))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistanceAccuracy.setter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
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
  *(v11 + 48) = a4;
  *(v11 + 56) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.estExitTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v7 = *(v6 + 48);
  if (*(v6 + 56))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.estExitTime.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.deltaDistanceAccuracy.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v11 + 48) = v7;
  *(v11 + 56) = 0;

  free(v6);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasDeltaDistanceAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 56) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearDeltaDistanceAccuracy()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  return result;
}

double CLP_LogEntry_PrivateData_DaemonLocationPrivate.timestampGps.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 64);
  if (*(v2 + 72))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.timestampGps.setter(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), double a4)
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
  *(v11 + 64) = a4;
  *(v11 + 72) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.startTimeDeprecated.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v7 = *(v6 + 64);
  if (*(v6 + 72))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.startTimeDeprecated.modify;
}

void CLP_LogEntry_PrivateData_DaemonLocationPrivate.timestampGps.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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
  *(v11 + 64) = v7;
  *(v11 + 72) = 0;

  free(v6);
}

BOOL CLP_LogEntry_PrivateData_DaemonLocationPrivate.hasTimestampGps.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 72) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocationPrivate.clearTimestampGps()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.rawType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 73) == 72)
  {
    return 0;
  }

  else
  {
    return *(v1 + 73);
  }
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.rawType.setter(char a1)
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
  *(v6 + 73) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.rawType.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v7 = *(v6 + 73);
  if (v7 == 72)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.rawType.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.rawType.modify(uint64_t *a1, char a2)
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
  *(v7 + 73) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasRawType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 73) != 72;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearRawType()()
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
  *(v4 + 73) = 72;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.rawConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  if (*(v1 + 74) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + 74);
  }
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.rawConfidence.setter(char a1)
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
  *(v6 + 74) = a1;
  return result;
}

void (*CLP_LogEntry_PrivateData_MotionActivity.rawConfidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v7 = *(v6 + 74);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_MotionActivity.rawConfidence.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.rawConfidence.modify(uint64_t *a1, char a2)
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
  *(v7 + 74) = v3;

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasRawConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  swift_beginAccess();
  return *(v1 + 74) != 4;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearRawConfidence()()
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
  *(v4 + 74) = 4;
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.timestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MotionActivity.timestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
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

  return CLP_LogEntry_PrivateData_MotionActivity.timestamp.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.timestamp.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
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

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasTimestamp.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearTimestamp()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.startTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MotionActivity.startTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
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

  return CLP_LogEntry_PrivateData_MotionActivity.startTime.modify;
}

void CLP_LogEntry_PrivateData_MotionActivity.startTime.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
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

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasStartTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearStartTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_MotionActivity._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MotionActivity.vehicularConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  if (*(v1 + v2) == 6)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*CLP_LogEntry_PrivateData_MotionActivity.vehicularConfidence.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 6)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_MotionActivity.vehicularConfidence.modify;
}

BOOL CLP_LogEntry_PrivateData_MotionActivity.hasVehicularConfidence.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  return *(v1 + v2) != 6;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionActivity.clearVehicularConfidence()()
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

  v6 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  *(v4 + v6) = 6;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_MotionState.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_ClientSatelliteInfo.satID.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t CLP_LogEntry_PrivateData_MotionState.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MotionState.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionState.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static CLP_LogEntry_PrivateData_MotionActivity._StorageClass.defaultInstance;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.activity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_MotionState.activity.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static CLP_LogEntry_PrivateData_MotionActivity._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return CLP_LogEntry_PrivateData_MotionState.activity.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.activityType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutUpdate.activityType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.startTimeDeprecated.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutUpdate.startTimeDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WorkoutUpdate.clearStartTimeDeprecated()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.startTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutUpdate.startTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

BOOL CLP_LogEntry_PrivateData_MotionState.hasActivity.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.clearActivity()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.predictedWorkoutType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32));
  if (v1 == 72)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.predictedWorkoutType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutUpdate.predictedWorkoutType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 72)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutUpdate.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  *(a1 + v2[5]) = 72;
  v3 = a1 + v2[6];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[8]) = 72;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MotionStateObserver.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateObserver.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MotionStateObserver.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionStateObserver.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateObserver.workoutUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 72;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v7[7];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v7[8]) = 72;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateObserver.workoutUpdate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_MotionStateObserver.workoutUpdate.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 72;
    v17 = v14 + v9[6];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v9[7];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    *(v14 + v9[8]) = 72;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  }

  return CLP_LogEntry_PrivateData_MotionStateObserver.workoutUpdate.modify;
}

uint64_t CLP_LogEntry_PrivateData_MotionState.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1(0);
  v7 = v6[5];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = a3 + v6[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = v6[7];
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v10, 1, 1, v11);
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.sessionID.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));
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

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.sessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutSettings.sessionID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WorkoutSettings.clearSessionID()()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.where.getter(uint64_t (*a1)(void))
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

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.where.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutSettings.overviewID.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 24);
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

uint64_t CLP_LogEntry_PrivateData_XtraFileAvailable.clearWhere()(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28));
  if (v1 == 67)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutSettings.workoutType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 67)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutLocationType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutLocationType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutSettings.workoutLocationType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutSettings.workoutMode.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutSettings.workoutMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_WorkoutSettings::WorkoutType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_WorkoutSettings::WorkoutType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

int *CLP_LogEntry_PrivateData_WorkoutSettings.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 67;
  *(a1 + result[8]) = 5;
  *(a1 + result[9]) = 3;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutEvent.startTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.endTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutEvent.endTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.eventType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28));
  if (v1 == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.eventType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutEvent.eventType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 19)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t (*CLP_LogEntry_PrivateData_WorkoutEvent.eventTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.workoutSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 36), v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  UnknownStorage.init()();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v7[7]) = 67;
  *(a1 + v7[8]) = 5;
  *(a1 + v7[9]) = 3;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.workoutSettings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_WorkoutEvent.workoutSettings.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[7]) = 67;
    *(v14 + v9[8]) = 5;
    *(v14 + v9[9]) = 3;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  }

  return CLP_LogEntry_PrivateData_WorkoutEvent.workoutSettings.modify;
}

BOOL CLP_LogEntry_PrivateData_WorkoutEvent.hasWorkoutSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 36), v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  return v6;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_WorkoutEvent.clearWorkoutSettings()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 36);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_WorkoutEvent::EventType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_WorkoutEvent.EventType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_WorkoutEvent::EventType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_WorkoutEvent.EventType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[6], 1, 1, v4);
  *(a1 + v2[7]) = 19;
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.eventReceiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MotionStateMediator.eventReceiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

  return CLP_LogEntry_PrivateData_MotionStateMediator.eventReceiptTime.modify;
}

void CLP_LogEntry_PrivateData_MotionStateMediator.eventReceiptTime.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v6);
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
    v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v19);
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
    v25 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

BOOL CLP_LogEntry_PrivateData_MotionStateMediator.hasEventReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionStateMediator.clearEventReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_Location.client.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

void (*CLP_LogEntry_PrivateData_MotionStateMediator.client.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MotionStateMediator.client.modify;
}

void CLP_LogEntry_PrivateData_Location.client.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

uint64_t CLP_LogEntry_PrivateData_Location.clearClient()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

  v14 = v11 + *a4;
  result = swift_beginAccess();
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.workoutEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + v8[6], 1, 1, v11);
  *(a1 + v8[7]) = 19;
  v12(a1 + v8[8], 1, 1, v11);
  v13 = v8[9];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MotionStateMediator.workoutEvent.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MotionStateMediator.workoutEvent.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v9[5];
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    v21 = *(*(v20 - 8) + 56);
    v21(v14 + v19, 1, 1, v20);
    v21(v14 + v9[6], 1, 1, v20);
    *(v14 + v9[7]) = 19;
    v21(v14 + v9[8], 1, 1, v20);
    v22 = v9[9];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  }

  return CLP_LogEntry_PrivateData_MotionStateMediator.workoutEvent.modify;
}

void CLP_LogEntry_PrivateData_MotionStateMediator.workoutEvent.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
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
      type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MotionStateMediator.hasWorkoutEvent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MotionStateMediator.clearWorkoutEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMd, &_s10ALProtobuf37CLP_LogEntry_PrivateData_WorkoutEventVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.startTimeCfatSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MediatedMotionActivity.startTimeCfatSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MediatedMotionActivity.clearStartTimeCfatSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static CLP_LogEntry_PrivateData_MotionActivity._StorageClass.defaultInstance;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.activity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_MediatedMotionActivity.activity.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static CLP_LogEntry_PrivateData_MotionActivity._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  }

  return CLP_LogEntry_PrivateData_MediatedMotionActivity.activity.modify;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.isHistoricalRecord.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MediatedMotionActivity.isHistoricalRecord.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_MediatedMotionActivity.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v2[7]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.gender.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.gender.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.gender.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.heightM.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.heightM.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearHeightM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.weightKg.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.weightKg.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearWeightKg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.vo2Max.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.vo2Max.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearVo2Max()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_ClientSatelliteInfo.l1Cn0.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.age.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.age.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearAge()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.hrmin.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.hrmin.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearHrmin()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.hrmax.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.hrmax.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearHrmax()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.hronset.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.hronset.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearHronset()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_BodyMetrics.pal.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.pal.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.pal.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearPal()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.condition.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.condition.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.condition.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 56);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

float CLP_LogEntry_PrivateData_BodyMetrics.runVo2Max.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BodyMetrics.runVo2Max.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BodyMetrics.runVo2Max.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BodyMetrics.clearRunVo2Max()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_BodyMetrics::UserConditionType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_BodyMetrics::UserConditionType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

int *CLP_LogEntry_PrivateData_BodyMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  *(a1 + result[5]) = 3;
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
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + result[14]) = 8;
  v11 = a1 + result[15];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Natalimetry.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_Natalimetry.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Natalimetry.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Natalimetry.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Natalimetry.bodyMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 3;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[7];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v7[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v7[12];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v7[13];
  *v16 = 0;
  *(v16 + 4) = 1;
  *(a1 + v7[14]) = 8;
  v17 = a1 + v7[15];
  *v17 = 0;
  *(v17 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Natalimetry.bodyMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_Natalimetry.bodyMetrics.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 3;
    v17 = v14 + v9[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[8];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[9];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[11];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[12];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[13];
    *v24 = 0;
    *(v24 + 4) = 1;
    *(v14 + v9[14]) = 8;
    v25 = v14 + v9[15];
    *v25 = 0;
    *(v25 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  }

  return CLP_LogEntry_PrivateData_Natalimetry.bodyMetrics.modify;
}

uint64_t (*CLP_LogEntry_PrivateData_Timer.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Timer(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.groundAltitudeAboveWgs84M.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.groundAltitudeAboveWgs84M.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearGroundAltitudeAboveWgs84M()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.groundAltitudeAboveWgs84UncM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.groundAltitudeAboveWgs84UncM.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearGroundAltitudeAboveWgs84UncM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.undulationM.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.undulationM.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearUndulationM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.slopeInDirectionOfTravel.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.slopeInDirectionOfTravel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearSlopeInDirectionOfTravel()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.maxAbsSlope.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.maxAbsSlope.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearMaxAbsSlope()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DigitalElevationModel.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DigitalElevationModel.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
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

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.latitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.latitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.longitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.longitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_VehicleSpeed.machAbsoluteTime.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.courseDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.courseDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearCourseDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.courseUncDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.courseUncDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearCourseUncDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.roadWidthM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.roadWidthM.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearRoadWidthM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.startLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.startLatitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearStartLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.startLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.startLongitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearStartLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 48);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_DirectionOfTravel.roadLengthM.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.roadLengthM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.roadLengthM.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearRoadLengthM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 52);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_DirectionOfTravel.speedMps.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.speedMps.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.speedMps.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DirectionOfTravel.clearSpeedMps()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.isOneWay.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.isOneWay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.isRailWay.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.isRailWay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 64);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.isTunnel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.isTunnel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 68);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.isBridge.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_DirectionOfTravel.isBridge.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0) + 72);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_DirectionOfTravel.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v2[15]) = 2;
  *(a1 + v2[16]) = 2;
  *(a1 + v2[17]) = 2;
  *(a1 + v2[18]) = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapVector.eventReceiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MapVector.eventReceiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

  return CLP_LogEntry_PrivateData_MapVector.eventReceiptTime.modify;
}

void CLP_LogEntry_PrivateData_MapVector.eventReceiptTime.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v6);
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
    v16 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v19);
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
    v25 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

BOOL CLP_LogEntry_PrivateData_MapVector.hasEventReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapVector.clearEventReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MapVector.client.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_MapVector.client.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapVector.dotData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + v8[6];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[9];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v8[12];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1 + v8[13];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a1 + v8[14];
  *v20 = 0;
  *(v20 + 8) = 1;
  *(a1 + v8[15]) = 2;
  *(a1 + v8[16]) = 2;
  *(a1 + v8[17]) = 2;
  *(a1 + v8[18]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapVector.dotData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  return swift_endAccess();
}

uint64_t (*CLP_LogEntry_PrivateData_MapVector.dotData.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v5[11] = v11;
  CLP_LogEntry_PrivateData_MapVector.dotData.getter(v11);
  return CLP_LogEntry_PrivateData_MapVector.dotData.modify;
}

void CLP_LogEntry_PrivateData_MapVector.dotData.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(v2[11], v2[10], type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v7 = swift_allocObject();
      CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v6);
      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v9, v12, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v6 + v13, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v8, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
      v18 = swift_allocObject();
      CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v17);
      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v12, type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v17 + v21, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MapVector.hasDotData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapVector.clearDotData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapVector(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MapVector._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MapVector._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_MapVectorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__dotData;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_DirectionOfTravelVSgMR);
  swift_endAccess();
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchPointLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchPointLatitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelBridgeAssistance.clearSearchPointLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchPointLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchPointLongitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelBridgeAssistance.clearSearchPointLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchRadiusM.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.searchRadiusM.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelBridgeAssistance.clearSearchRadiusM()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isCloseToTunnel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isCloseToTunnel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isCloseToBridge.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isCloseToBridge.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isTunnel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isTunnel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isBridge.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeAssistance.isBridge.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeAssistance.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a1 + v2[9]) = 2;
  *(a1 + v2[10]) = 2;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeNotification.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeNotification.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelBridgeNotification.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelBridgeNotification.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeNotification.tunnelBridgeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = a1 + v7[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v7[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v7[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a1 + v7[9]) = 2;
  *(a1 + v7[10]) = 2;
  *(a1 + v7[11]) = 2;
  *(a1 + v7[12]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TunnelBridgeNotification.tunnelBridgeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_TunnelBridgeNotification.tunnelBridgeData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    *(v14 + v9[11]) = 2;
    *(v14 + v9[12]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  }

  return CLP_LogEntry_PrivateData_TunnelBridgeNotification.tunnelBridgeData.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPointAssistance.applicableTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.applicableTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
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

  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.applicableTime.modify;
}

void CLP_LogEntry_PrivateData_TunnelEndPointAssistance.applicableTime.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
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
      type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
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

BOOL CLP_LogEntry_PrivateData_TunnelEndPointAssistance.hasApplicableTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelEndPointAssistance.clearApplicableTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__applicableTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.latitudeDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__latitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.latitudeDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.longitudeDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__longitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.longitudeDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.horizontalUncM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__horizontalUncM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.horizontalUncM.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.altitudeM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__altitudeM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.altitudeM.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.verticalUncM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__verticalUncM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.verticalUncM.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.referenceFrame.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.referenceFrame.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelEndPointAssistance.clearReferenceFrame()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__referenceFrame;
  swift_beginAccess();
  *(v4 + v6) = 3;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.courseAtExitDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.courseAtExitDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.courseAtExitUncDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__courseAtExitUncDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.courseAtExitUncDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.tunnelWidthAtExitM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelWidthAtExitM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.tunnelWidthAtExitM.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.isTunnelCurved.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.isTunnelCurved.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelEndPointAssistance.clearIsTunnelCurved()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isTunnelCurved;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.startLatitudeDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLatitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.startLatitudeDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.startLongitudeDeg.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startLongitudeDeg;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.startLongitudeDeg.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.tunnelLengthM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__tunnelLengthM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.tunnelLengthM.modify;
}

void (*CLP_LogEntry_PrivateData_TunnelEndPointAssistance.endPointDistanceFromCurrentSolutionM.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceP33_993346AF53650622B255AB1E3C41340D13_StorageClass__endPointDistanceFromCurrentSolutionM;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return CLP_LogEntry_PrivateData_TunnelEndPointAssistance.endPointDistanceFromCurrentSolutionM.modify;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelEndPoint.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPoint.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TunnelEndPoint.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TunnelEndPoint.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPoint.tunnelEndPointData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.defaultInstance;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TunnelEndPoint.tunnelEndPointData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_TunnelEndPoint.tunnelEndPointData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static CLP_LogEntry_PrivateData_TunnelEndPointAssistance._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  }

  return CLP_LogEntry_PrivateData_TunnelEndPoint.tunnelEndPointData.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.roadID.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapsRouteHintData.roadID.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 20);
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapsRouteHintData.clearRoadID()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.startLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapsRouteHintData.startLatitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapsRouteHintData.clearStartLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.startLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapsRouteHintData.startLongitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapsRouteHintData.clearStartLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.endLatitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapsRouteHintData.endLatitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapsRouteHintData.clearEndLatitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_PrivateData_DirectionOfTravel.courseUncDeg.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapsRouteHintData.endLongitudeDeg.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapsRouteHintData.endLongitudeDeg.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MapsRouteHintData.clearEndLongitudeDeg()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_MapsRouteHintData.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatchingRouteHint.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.applicableTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatchingRouteHint.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.routeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.routeType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatchingRouteHint.routeType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.stepType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.stepType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MapMatchingRouteHint.stepType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MapMatchingRouteHint.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  UnknownStorage.init()();
  v3 = v2[6];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  result = (v5)(&a1[v2[7]], 1, 1, v4);
  a1[v2[8]] = 7;
  a1[v2[9]] = 7;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

BOOL CLP_LogEntry_PrivateData_WorkoutEvent.hasEventTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t CLP_LogEntry_PrivateData_WorkoutEvent.clearEventTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 36);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.transmissionState.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.transmissionState.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.transmissionState.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_DigitalElevationModel.client.getter(uint64_t (*a1)(void))
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

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.sampleCount.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.sampleCount.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 44);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.clearSampleCount()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.slipDetected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.slipDetected.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.sensorType.setter(char a1)
{
  v2 = a1 & 1;
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.sensorType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CLP_LogEntry_PrivateData_BatchedLocations.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

ALProtobuf::CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification::SensorType_optional __swiftcall CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = ALProtobuf_CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification_SensorType_stCombined;
  }

  else
  {
    v1.value = ALProtobuf_CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification_SensorType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification(0);
  UnknownStorage.init()();
  v4 = v3[7];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a1[v4], 1, 1, v5);
  result = (v6)(&a1[v3[8]], 1, 1, v5);
  v8 = &a1[v3[9]];
  *v8 = 0;
  v8[4] = 1;
  a1[v3[10]] = 5;
  v9 = &a1[v3[11]];
  *v9 = 0;
  v9[4] = 1;
  a1[v3[12]] = 2;
  a1[v3[13]] = 2;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.previous.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.previous.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReachabilityState.previous.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.current.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.current.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReachabilityState.current.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.aboutToSleep.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReachabilityState.aboutToSleep.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_ReachabilityState.recentlyWoke.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReachabilityState.recentlyWoke.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *CLP_LogEntry_PrivateData_ReachabilityState.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  *(a1 + result[5]) = 5;
  *(a1 + result[6]) = 5;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

double CLP_LogEntry_PrivateData_Battery.level.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return -1.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Battery.level.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.level.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = -1.0;
  }

  *a1 = v5;
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Battery.clearLevel()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Battery.charged.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.charged.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_Battery.connected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.connected.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_Battery.chargerType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_Battery.chargerType.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.chargerType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_Battery.wasConnected.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.wasConnected.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_Battery.chargerFamily.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_Battery.chargerFamily.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_Battery.chargerFamily.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40);
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
  return CLP_LogEntry_AONLoc_Request.ResultOptions.minimalRssiDb.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_Battery.clearChargerFamily()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_Battery(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_Battery.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 5;
  *(a1 + result[9]) = 2;
  v4 = a1 + result[10];
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.eventReceiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.eventReceiptTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

  return CLP_LogEntry_PrivateData_DeviceStatus.eventReceiptTime.modify;
}

void CLP_LogEntry_PrivateData_DeviceStatus.eventReceiptTime.modify(uint64_t *a1, char a2)
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
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v6);

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
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v19);

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
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
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

BOOL CLP_LogEntry_PrivateData_DeviceStatus.hasEventReceiptTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearEventReceiptTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.client.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_DeviceStatus.client.modify;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.notificationData.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  if (*(v1 + v2) == 20)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.notificationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 20)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return CLP_LogEntry_PrivateData_DeviceStatus.notificationData.modify;
}

BOOL CLP_LogEntry_PrivateData_DeviceStatus.hasNotificationData.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  return *(v1 + v2) != 20;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearNotificationData()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__notificationData;
  swift_beginAccess();
  *(v4 + v6) = 20;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.reachability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 5;
  *(a1 + v8[6]) = 5;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.reachability.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.reachability.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 5;
    *(v14 + v9[6]) = 5;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
  }

  return CLP_LogEntry_PrivateData_DeviceStatus.reachability.modify;
}

void CLP_LogEntry_PrivateData_DeviceStatus.reachability.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DeviceStatus.hasReachability.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearReachability()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__reachability;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReachabilityStateVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.battery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 5;
  *(a1 + v8[9]) = 2;
  v11 = a1 + v8[10];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_DeviceStatus.battery.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v10 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.battery.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 5;
    *(v14 + v9[9]) = 2;
    v20 = v14 + v9[10];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
  }

  return CLP_LogEntry_PrivateData_DeviceStatus.battery.modify;
}

void CLP_LogEntry_PrivateData_DeviceStatus.battery.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_TimeStamp(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v9 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
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
      type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
      v22 = swift_allocObject();
      specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_Battery);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_DeviceStatus.hasBattery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearBattery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v8 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__battery;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_BatteryVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.airplaneMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.airplaneMode.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearAirplaneMode()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__airplaneMode;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.displayOn.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.displayOn.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearDisplayOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__displayOn;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.lockScreen.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.lockScreen.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearLockScreen()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__lockScreen;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.isBatterySaverModeEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.isBatterySaverModeEnabled.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearIsBatterySaverModeEnabled()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isBatterySaverModeEnabled;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.pushServiceConnected.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.pushServiceConnected.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearPushServiceConnected()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pushServiceConnected;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.wirelessModemClients.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__wirelessModemClients;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_DeviceStatus.wirelessModemClients.modify;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.thermalLevel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__thermalLevel;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_DeviceStatus.thermalLevel.modify;
}

void (*CLP_LogEntry_PrivateData_DeviceStatus.restrictedMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return CLP_LogEntry_PrivateData_DeviceStatus.restrictedMode.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_DeviceStatus.clearRestrictedMode()()
{
  v1 = v0;
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DeviceStatus._StorageClass(0);
    v5 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_DeviceStatus._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf37CLP_LogEntry_PrivateData_DeviceStatusP33_993346AF53650622B255AB1E3C41340D13_StorageClass__restrictedMode;
  swift_beginAccess();
  *(v4 + v6) = 2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DeviceStatus::NotificationType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DeviceStatus.NotificationType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DeviceStatus::NotificationType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DeviceStatus.NotificationType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironment.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.coarseSignalEnvironment.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 24));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.coarseSignalEnvironment.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironment.coarseSignalEnvironment.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.highResolutionSignalEnvironment.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 28));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.highResolutionSignalEnvironment.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironment.highResolutionSignalEnvironment.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.currentModesOfOperation.getter(uint64_t (*a1)(void))
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

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.client.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironment.client.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SignalEnvironment.clearClient()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf42CLP_LogEntry_PrivateData_SignalEnvironmentV0gH4TypeO8rawValueAESgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf42CLP_LogEntry_PrivateData_SignalEnvironmentV0gH4TypeO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironment.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  v3 = v2[5];
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 8;
  *(a1 + v2[7]) = 8;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.type.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 20));
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.type.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironmentInfo.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.fidelityLevel.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 24));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CLP_LogEntry_PrivateData_SignalEnvironmentInfo.fidelityLevel.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SignalEnvironmentInfo.fidelityLevel.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_TechnologyStatus.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MagSample.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  return CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify;
}

uint64_t CLP_LogEntry_PrivateData_MagSample.xUT.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MagSample.xUT.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MagSample.clearXUT()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MagSample.yUT.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MagSample.yUT.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MagSample.clearYUT()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MagSample.zUT.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_MagSample.zUT.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MagSample.clearZUT()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MagSample(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}