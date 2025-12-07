uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  }

  return CLP_LogEntry_PrivateData_GlonassTimeInfo.utcConversionDeprecated.modify;
}

BOOL CLP_LogEntry_PrivateData_GlonassTimeInfo.hasUtcConversionDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 36), v3, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  return v6;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GlonassTimeInfo.clearUtcConversionDeprecated()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0) + 36);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + v2[7]) = 6;
  v5 = v2[8];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a1 + v5, 1, 1, v6);
  v7 = a1 + v2[9];

  return v9(v7, 1, 1, v6);
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.applicableTimeNanoSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.applicableTimeNanoSeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearApplicableTimeNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.offsetNanoSeconds.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.offsetNanoSeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearOffsetNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.driftPpb.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SubSecondConversion.driftPpb.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SubSecondConversion.clearDriftPpb()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *CLP_LogEntry_PrivateData_Wgs84Ecef.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.week.getter()
{
  v1 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  swift_beginAccess();
  if (*(v1 + 20))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.week.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 20) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.week.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return CLP_LogEntry_PrivateData_BeidouTimeInfo.week.modify;
}

void CLP_LogEntry_PrivateData_MeasurementExtension.jammerCn0DbHz.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
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

BOOL CLP_LogEntry_PrivateData_MeasurementExtension.hasJammerCn0DbHz.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.clearJammerCn0DbHz()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
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

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + v8[6]) = 5;
  v11 = v8[7];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    *(v14 + v9[6]) = 5;
    v20 = v9[7];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.leapSecondDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
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
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasLeapSecondDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearLeapSecondDeprecated()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGpsTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGpsTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.glonassTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGlonassTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGlonassTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.galileoTimeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasGalileoTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearGalileoTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v8 + v9, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, a2, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  UnknownStorage.init()();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v10[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v10[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify;
}

void CLP_LogEntry_PrivateData_BeidouTimeInfo.utcTimeConversionDeprecated.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
      type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
      v22 = swift_allocObject();
      CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_BeidouTimeInfo.hasUtcTimeConversionDeprecated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BeidouTimeInfo.clearUtcTimeConversionDeprecated()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.week.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.week.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GalileoTimeInfo.clearWeek()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.leapSecond.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v2 + *(v8 + 24), v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, a2, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  UnknownStorage.init()();
  v11 = a2 + v9[5];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v9[6]) = 5;
  v12 = v9[7];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    *(v14 + v9[6]) = 5;
    v18 = v9[7];
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.leapSecondDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.gpsTimeConversion.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_GalileoTimeInfo.utcTimeConversionDeprecated.modify;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = v2[6];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), a1 + v6, 1, 1, v7);
  v8 = a1 + v2[8];

  return v10(v8, 1, 1, v7);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  }

  return CLP_LogEntry_PrivateData_NavicTimeInfo.gpsTimeConversion.modify;
}

BOOL CLP_LogEntry_PrivateData_SignalCorrelationPeak.hasSvTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.clearSvTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.week.setter(int a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_NavicTimeInfo.week.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_NavicTimeInfo.clearWeek()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + *(v2 + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.gps.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v8[7];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.gps.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    (*(*(v23 - 8) + 56))(v14 + v22, 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.gps.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
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
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGps.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v8[7]) = 6;
  v12 = v8[8];
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a1 + v12, 1, 1, v13);
  v14(a1 + v8[9], 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v14 + v9[7]) = 6;
    v21 = v9[8];
    v22 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
    v23 = *(*(v22 - 8) + 56);
    v23(v14 + v21, 1, 1, v22);
    v23(v14 + v9[9], 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.glonass.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
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
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGlonass.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGlonass()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.beidou.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
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
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasBeidou.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearBeidou()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = v8[6];
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v8[7];
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v8[8], 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v9[6];
    v21 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    v22 = v9[7];
    v23 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    v24 = *(*(v23 - 8) + 56);
    v24(v14 + v22, 1, 1, v23);
    v24(v14 + v9[8], 1, 1, v23);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.galileo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
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
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasGalileo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearGalileo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.navic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.navic.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = v14 + *(v9 + 24);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  }

  return CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify;
}

void CLP_LogEntry_PrivateData_TimeConversionInfo.navic.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
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
      CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_TimeConversionInfo.hasNavic.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeConversionInfo.clearNavic()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeTimeFullGpsNs.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeTimeFullGpsNs.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearDecodeTimeFullGpsNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha0.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha1.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha1.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha1()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha2.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.driftUncertaintyPpb.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha3.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.alpha3.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearAlpha3()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta0.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta0()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta1.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta1()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta2.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_KlobucharModelParameters.beta3.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_KlobucharModelParameters.clearBeta3()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *CLP_LogEntry_PrivateData_KlobucharModelParameters.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.x.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.x.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearX()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.y.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.y.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearY()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_SfcfXyz.z.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_SfcfXyz.z.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_SfcfXyz.clearZ()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = *(v9 + 24);
    v19 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
    (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  }

  return CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.id.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.getter()
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

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.band.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.getter()
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

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.setter(char a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.svReferencePoint.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  }

  return CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.offsetXyzM.modify;
}

void CLP_LogEntry_PrivateData_GlonassId.slotInfo.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.iosAbsoluteSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.iosAbsoluteSec.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearIosAbsoluteSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.machAbsoluteSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.machAbsoluteSec.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearMachAbsoluteSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ReceivedTimeStamp.machContinuousSec.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ReceivedTimeStamp.machContinuousSec.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ReceivedTimeStamp.clearMachContinuousSec()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
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
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.receivedTimestamp.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
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
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasReceivedTimestamp.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearReceivedTimestamp()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measReport.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
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
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasMeasReport.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearMeasReport()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.svInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.svInfo.modify;
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.rxBandCorrections.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.rxBandCorrections.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.defaultInstance;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.timeConversion.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
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
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasTimeConversion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearTimeConversion()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeMachContinuousSec.setter(void *a1, double a2)
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
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v10);
    *(v4 + v6) = v9;
  }

  v11 = v8 + *a1;
  result = swift_beginAccess();
  *v11 = a2;
  *(v11 + 8) = 0;
  return result;
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeUncertaintySec.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.measApplicabilityTimeUncertaintySec.modify;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(a1, v6, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = v14 + v9[5];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v14 + v9[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v14 + v9[12];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v14 + v9[13];
    *v27 = 0;
    *(v27 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  }

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify;
}

void CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.klobucharModel.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(*(v2 + 120), *(v2 + 112), type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
      v9 = swift_allocObject();
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, v15, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    swift_endAccess();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
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
      CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, v15, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.hasKlobucharModel.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  return v7;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.clearKlobucharModel()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.apcSvOffset.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.apcSvOffset.modify;
}

uint64_t variable initialization expression of CLP_LogEntry_PrivateData_SyncState._storage(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSlotInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 5;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSlotInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D1B0500;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21888];
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

uint64_t CLP_LogEntry_PrivateData_GlonassId.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GlonassId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ConstellationId.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassId);
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

uint64_t CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  closure #2 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5, a1, a2, a3);
  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 32) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassId and conformance CLP_LogEntry_PrivateData_GlonassId, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_ConstellationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ConstellationId@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ConstellationId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvId.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ConstellationId);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t closure #2 in CLP_LogEntry_PrivateData_SvId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ConstellationId and conformance CLP_LogEntry_PrivateData_ConstellationId, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ConstellationId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassId@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL2CSyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsL1SyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

int *CLP_LogEntry_PrivateData_GpsL1SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsL5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL5SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsL2CSyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

int *CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
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

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v8, a1, a2, a3, a5);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsL2CSyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouB1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23D1B14A0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "code_lock";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouB2SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB2SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsL1SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoE1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GalileoE5SyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

int *CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  closure #6 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #8 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #10 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in CLP_LogEntry_PrivateData_GalileoE5SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE5SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t CLP_LogEntry_PrivateData_SbasL1SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SbasL1SyncState@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SbasL1SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v79 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v70, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v42, v1 + v21, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  v44 = v74;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v43, v74, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v44, v1 + v24, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  v46 = v79;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v45, v79, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v47 = v71;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v46, v1 + v47, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  v49 = v81;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v48, v81, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v50 = v72;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v49, v1 + v50, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  v52 = v82;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v51, v82, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v53 = v73;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v52, v1 + v53, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  v55 = v83;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v54, v83, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v56 = v75;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v55, v1 + v56, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  v58 = v84;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v57, v84, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v59 = v76;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v58, v1 + v59, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  v61 = v85;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v60, v85, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v62 = v77;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v61, v1 + v62, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  v64 = v86;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v63, v86, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v65 = v78;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v64, v1 + v65, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  swift_endAccess();
  v66 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v42, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);

  v67 = v80;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v42, v1 + v67, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_SyncState._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_SyncState.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SyncState._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_SyncState._StorageClass.init(copying:)(v8);
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
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL2CSyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState;
        }

        else
        {
          v12 = v4;
          if (result == 4)
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState;
            v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL5SyncState;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState;
            v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassL1fSyncState;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState;
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
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState;
        goto LABEL_29;
      }

      swift_beginAccess();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
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
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE5SyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState;
          break;
        case 10:
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SbasL1SyncState;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState;
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
      v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB1SyncState;
      v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState;
    }

    else
    {
      v12 = v4;
      if (result == 7)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB2SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState;
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE1SyncState;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState;
      }
    }

LABEL_29:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_30;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL2CSyncState and conformance CLP_LogEntry_PrivateData_GpsL2CSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL5SyncState and conformance CLP_LogEntry_PrivateData_GpsL5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassL1fSyncState and conformance CLP_LogEntry_PrivateData_GlonassL1fSyncState, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB1SyncState and conformance CLP_LogEntry_PrivateData_BeidouB1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouB2SyncState and conformance CLP_LogEntry_PrivateData_BeidouB2SyncState, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE1SyncState and conformance CLP_LogEntry_PrivateData_GalileoE1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoE5SyncState and conformance CLP_LogEntry_PrivateData_GalileoE5SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
}

uint64_t closure #10 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SbasL1SyncState and conformance CLP_LogEntry_PrivateData_SbasL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SbasL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_SyncState.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsL1SyncState and conformance CLP_LogEntry_PrivateData_GpsL1SyncState, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v217 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v216);
  v8 = &v206 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v212 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v219 = &v206 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v221 = *(v13 - 8);
  v222 = v13;
  MEMORY[0x28223BE20](v13);
  v213 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v220);
  v223 = &v206 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v238 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v225 = &v206 - v19;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState(0);
  v228 = *(v20 - 8);
  v229 = v20;
  MEMORY[0x28223BE20](v20);
  v218 = &v206 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v227);
  v230 = &v206 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v224 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v232 = &v206 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState(0);
  v235 = *(v27 - 8);
  v236 = v27;
  MEMORY[0x28223BE20](v27);
  v226 = &v206 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v234);
  v237 = &v206 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v231 = &v206 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v240 = &v206 - v33;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState(0);
  v243 = *(v34 - 8);
  v244 = v34;
  MEMORY[0x28223BE20](v34);
  v233 = &v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v242);
  v245 = &v206 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v239 = &v206 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v257 = &v206 - v40;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState(0);
  v249 = *(v41 - 8);
  v250 = v41;
  MEMORY[0x28223BE20](v41);
  v241 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v248);
  v251 = &v206 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v246 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v258 = &v206 - v47;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState(0);
  v254 = *(v48 - 8);
  v255 = v48;
  MEMORY[0x28223BE20](v48);
  v247 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v253);
  v256 = &v206 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v265 = &v206 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v266 = &v206 - v54;
  v55 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState(0);
  v262 = *(v55 - 8);
  v263 = v55;
  MEMORY[0x28223BE20](v55);
  v252 = &v206 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v261);
  v264 = &v206 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
  v59 = MEMORY[0x28223BE20](v58 - 8);
  v259 = &v206 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v267 = &v206 - v61;
  v62 = type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState(0);
  v63 = *(v62 - 8);
  v269 = v62;
  v270 = v63;
  MEMORY[0x28223BE20](v62);
  v260 = &v206 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR);
  v65 = MEMORY[0x28223BE20](v268);
  v215 = &v206 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v68 = &v206 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
  v70 = MEMORY[0x28223BE20](v69 - 8);
  v211 = &v206 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v214 = &v206 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v206 - v75;
  MEMORY[0x28223BE20](v74);
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
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v82, v78, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    v84 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL1;
    swift_beginAccess();
    v85 = *(v268 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v78, v68, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v84, &v68[v85], &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
    v86 = v269;
    v87 = v270 + 48;
    v88 = *(v270 + 48);
    if (v88(v68, 1, v269) == 1)
    {

      outlined destroy of Any?(v78, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      v207 = v88;
      v89 = v88(&v68[v85], 1, v86);
      v90 = v83;
      if (v89 == 1)
      {
        v270 = v87;
        outlined destroy of Any?(v68, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
LABEL_13:
        v96 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v97 = v267;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v96, v267, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v98 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL2C;
        swift_beginAccess();
        v99 = *(v261 + 48);
        v100 = v264;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v97, v264, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v101 = v100;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v98, v100 + v99, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
        v102 = *(v262 + 48);
        v103 = v100;
        v104 = v263;
        if (v102(v103, 1, v263) == 1)
        {
          outlined destroy of Any?(v97, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          v105 = v102(v101 + v99, 1, v104);
          v106 = v265;
          v107 = v266;
          if (v105 == 1)
          {
            outlined destroy of Any?(v101, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            goto LABEL_20;
          }
        }

        else
        {
          v108 = v259;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v101, v259, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          v109 = v102(v101 + v99, 1, v104);
          v110 = v265;
          v107 = v266;
          if (v109 != 1)
          {
            v111 = v101 + v99;
            v112 = v252;
            outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v111, v252, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            LODWORD(v263) = specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(v108, v112, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v112, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of Any?(v267, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
            outlined destroy of Any?(v101, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
            v106 = v110;
            if ((v263 & 1) == 0)
            {
              goto LABEL_70;
            }

LABEL_20:
            v113 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v113, v107, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v114 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsL5;
            swift_beginAccess();
            v115 = *(v253 + 48);
            v116 = v256;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v107, v256, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v117 = v116;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v114, v116 + v115, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
            v118 = v255;
            v119 = *(v254 + 48);
            if (v119(v116, 1, v255) == 1)
            {
              outlined destroy of Any?(v107, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              v120 = v119(v116 + v115, 1, v118);
              v122 = v257;
              v121 = v258;
              if (v120 == 1)
              {
                outlined destroy of Any?(v117, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                goto LABEL_27;
              }
            }

            else
            {
              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v116, v106, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              v123 = v119(v116 + v115, 1, v118);
              v124 = v257;
              v121 = v258;
              if (v123 != 1)
              {
                v125 = v117 + v115;
                v126 = v247;
                outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v125, v247, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                LODWORD(v267) = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v106, v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of Any?(v266, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                v127 = v106;
                v122 = v124;
                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v127, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
                outlined destroy of Any?(v117, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
                if ((v267 & 1) == 0)
                {
                  goto LABEL_70;
                }

LABEL_27:
                v128 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v128, v121, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                v129 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassL1F;
                swift_beginAccess();
                v130 = *(v248 + 48);
                v117 = v251;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v121, v251, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v129, v117 + v130, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                v131 = v250;
                v132 = *(v249 + 48);
                if (v132(v117, 1, v250) == 1)
                {
                  outlined destroy of Any?(v121, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  if (v132(v117 + v130, 1, v131) == 1)
                  {
                    outlined destroy of Any?(v117, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    goto LABEL_34;
                  }
                }

                else
                {
                  v133 = v246;
                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117, v246, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  if (v132(v117 + v130, 1, v131) != 1)
                  {
                    v134 = v117 + v130;
                    v135 = v241;
                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v134, v241, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    v136 = specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(v133, v135, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v135, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of Any?(v258, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v133, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                    outlined destroy of Any?(v117, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                    if ((v136 & 1) == 0)
                    {
                      goto LABEL_70;
                    }

LABEL_34:
                    v137 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v137, v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v138 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB1;
                    swift_beginAccess();
                    v139 = *(v242 + 48);
                    v140 = v245;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v245, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v117 = v140;
                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v138, v140 + v139, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                    v141 = v244;
                    v142 = *(v243 + 48);
                    if (v142(v140, 1, v244) == 1)
                    {
                      outlined destroy of Any?(v122, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      if (v142(v140 + v139, 1, v141) == 1)
                      {
                        outlined destroy of Any?(v140, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      v143 = v239;
                      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v140, v239, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      if (v142(v140 + v139, 1, v141) != 1)
                      {
                        v144 = v140 + v139;
                        v145 = v233;
                        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v144, v233, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        v146 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v143, v145, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v145, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of Any?(v257, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v143, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                        outlined destroy of Any?(v140, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                        if ((v146 & 1) == 0)
                        {
                          goto LABEL_70;
                        }

LABEL_41:
                        v147 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v148 = v240;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v147, v240, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        v149 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidouB2;
                        swift_beginAccess();
                        v150 = *(v234 + 48);
                        v117 = v237;
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v148, v237, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v149, v117 + v150, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                        v151 = v236;
                        v152 = *(v235 + 48);
                        if (v152(v117, 1, v236) == 1)
                        {
                          outlined destroy of Any?(v148, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          v153 = v152(v117 + v150, 1, v151);
                          v154 = v238;
                          if (v153 == 1)
                          {
                            outlined destroy of Any?(v117, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            goto LABEL_48;
                          }
                        }

                        else
                        {
                          v155 = v231;
                          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v117, v231, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          v156 = v150;
                          v157 = v152(v117 + v150, 1, v151);
                          v154 = v238;
                          if (v157 != 1)
                          {
                            v158 = v117 + v156;
                            v159 = v226;
                            outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v158, v226, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            v160 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v155, v159, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v159, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of Any?(v240, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v155, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                            outlined destroy of Any?(v117, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                            if ((v160 & 1) == 0)
                            {
                              goto LABEL_70;
                            }

LABEL_48:
                            v161 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v162 = v232;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v161, v232, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v163 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE1;
                            swift_beginAccess();
                            v164 = *(v227 + 48);
                            v165 = v230;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v162, v230, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v117 = v165;
                            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v163, v165 + v164, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                            v166 = v229;
                            v167 = *(v228 + 48);
                            if (v167(v165, 1, v229) == 1)
                            {
                              outlined destroy of Any?(v162, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              if (v167(v165 + v164, 1, v166) == 1)
                              {
                                outlined destroy of Any?(v165, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
LABEL_55:
                                v172 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v173 = v225;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v172, v225, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v174 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoE5;
                                swift_beginAccess();
                                v175 = *(v220 + 48);
                                v176 = v223;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v173, v223, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v117 = v176;
                                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v174, v176 + v175, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                v177 = v222;
                                v178 = *(v221 + 48);
                                if (v178(v176, 1, v222) == 1)
                                {
                                  outlined destroy of Any?(v173, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  if (v178(v176 + v175, 1, v177) == 1)
                                  {
                                    outlined destroy of Any?(v176, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
LABEL_62:
                                    v182 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v183 = v219;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v182, v219, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v184 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__sbasL1;
                                    swift_beginAccess();
                                    v185 = *(v216 + 48);
                                    v186 = v183;
                                    v187 = v210;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v186, v210, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v117 = v187;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v184, v187 + v185, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    v188 = *(v217 + 48);
                                    v189 = v209;
                                    if (v188(v187, 1, v209) == 1)
                                    {
                                      outlined destroy of Any?(v219, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                      if (v188(v187 + v185, 1, v189) == 1)
                                      {
                                        outlined destroy of Any?(v187, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
LABEL_74:
                                        v194 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v195 = v214;
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v90 + v194, v214, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        v196 = OBJC_IVAR____TtCV10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navicL5;
                                        swift_beginAccess();
                                        v197 = *(v268 + 48);
                                        v198 = v215;
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v195, v215, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v196, v198 + v197, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        v199 = v269;
                                        v200 = v207;
                                        if (v207(v198, 1, v269) == 1)
                                        {

                                          outlined destroy of Any?(v214, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                          if (v200(v198 + v197, 1, v199) == 1)
                                          {
                                            outlined destroy of Any?(v215, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                            return 1;
                                          }

                                          goto LABEL_79;
                                        }

                                        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v198, v211, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        if (v200(v198 + v197, 1, v199) == 1)
                                        {

                                          outlined destroy of Any?(v214, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v211, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
LABEL_79:
                                          outlined destroy of Any?(v215, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR);
                                          return 0;
                                        }

                                        v201 = v215;
                                        v202 = v215 + v197;
                                        v203 = v260;
                                        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v202, v260, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        v204 = v211;
                                        v205 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v211, v203, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);

                                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v203, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        outlined destroy of Any?(v214, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v204, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
                                        outlined destroy of Any?(v201, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
                                        return (v205 & 1) != 0;
                                      }

                                      goto LABEL_67;
                                    }

                                    v190 = v212;
                                    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v187, v212, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    if (v188(v187 + v185, 1, v189) == 1)
                                    {
                                      outlined destroy of Any?(v219, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v190, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
LABEL_67:
                                      v91 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMd;
                                      v92 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSg_ADtMR;
                                      goto LABEL_68;
                                    }

                                    v191 = v187 + v185;
                                    v192 = v208;
                                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v191, v208, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    v193 = specialized static CLP_LogEntry_PrivateData_SbasL1SyncState.== infix(_:_:)(v190, v192);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v192, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    outlined destroy of Any?(v219, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v190, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                                    outlined destroy of Any?(v187, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_SbasL1SyncStateVSgMR);
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
                                  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v176, v154, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  if (v178(v176 + v175, 1, v177) != 1)
                                  {
                                    v179 = v176 + v175;
                                    v180 = v213;
                                    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v179, v213, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    v181 = specialized static CLP_LogEntry_PrivateData_GalileoE5SyncState.== infix(_:_:)(v154, v180);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v180, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    outlined destroy of Any?(v225, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v154, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                    outlined destroy of Any?(v176, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                    if ((v181 & 1) == 0)
                                    {
                                      goto LABEL_70;
                                    }

                                    goto LABEL_62;
                                  }

                                  outlined destroy of Any?(v225, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSgMR);
                                  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v154, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                                }

                                v91 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMd;
                                v92 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE5SyncStateVSg_ADtMR;
LABEL_68:
                                v93 = v117;
                                goto LABEL_69;
                              }
                            }

                            else
                            {
                              v168 = v224;
                              outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v165, v224, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              if (v167(v165 + v164, 1, v166) != 1)
                              {
                                v169 = v165 + v164;
                                v170 = v218;
                                outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v169, v218, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                v171 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v168, v170, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v170, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of Any?(v232, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                                outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v168, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                                outlined destroy of Any?(v165, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                                if ((v171 & 1) == 0)
                                {
                                  goto LABEL_70;
                                }

                                goto LABEL_55;
                              }

                              outlined destroy of Any?(v232, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSgMR);
                              outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v168, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
                            }

                            v91 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMd;
                            v92 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GalileoE1SyncStateVSg_ADtMR;
                            goto LABEL_68;
                          }

                          outlined destroy of Any?(v240, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSgMR);
                          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v155, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
                        }

                        v91 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMd;
                        v92 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB2SyncStateVSg_ADtMR;
                        goto LABEL_68;
                      }

                      outlined destroy of Any?(v257, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSgMR);
                      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v143, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
                    }

                    v91 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMd;
                    v92 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_BeidouB1SyncStateVSg_ADtMR;
                    goto LABEL_68;
                  }

                  outlined destroy of Any?(v258, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSgMR);
                  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v133, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
                }

                v91 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMd;
                v92 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_GlonassL1fSyncStateVSg_ADtMR;
                goto LABEL_68;
              }

              outlined destroy of Any?(v266, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSgMR);
              outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v106, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
            }

            v91 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMd;
            v92 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL5SyncStateVSg_ADtMR;
            goto LABEL_68;
          }

          outlined destroy of Any?(v267, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSgMR);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
        }

        v91 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMd;
        v92 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GpsL2CSyncStateVSg_ADtMR;
        v93 = v101;
LABEL_69:
        outlined destroy of Any?(v93, v91, v92);
        goto LABEL_70;
      }
    }

    else
    {
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v76, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      if (v88(&v68[v85], 1, v86) != 1)
      {
        v207 = v88;
        v270 = v87;
        v94 = v260;
        outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v68[v85], v260, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        v90 = v83;

        v95 = specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(v76, v94, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v94, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of Any?(v78, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v76, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
        outlined destroy of Any?(v68, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
        if ((v95 & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_13;
      }

      outlined destroy of Any?(v78, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v76, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
    }

    v91 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMd;
    v92 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_GpsL1SyncStateVSg_ADtMR;
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SyncState);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t CLP_LogEntry_PrivateData_SvTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FrequencyOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

int *CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PhaseTracking.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

int *CLP_LogEntry_PrivateData_PhaseTracking.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PhaseTracking@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PhaseTracking);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset;
          break;
        case 1:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime;
          break;
        default:
          goto LABEL_5;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, v7, v8);
      v3 = v6;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    closure #2 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(v5, a1, a2, a3);
    if ((*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0) + 28) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_SignalCorrelationPeak.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_FullSvTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource();
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

uint64_t CLP_LogEntry_PrivateData_FullSvTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvTime@<X0>(int *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_FullSvTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FullSvTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t CLP_LogEntry_PrivateData_SvMeasurementUsage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvMeasurementUsage(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);

  return MEMORY[0x28217E440](a1, a2, v4);
}

double one-time initialization function for defaultInstance()
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
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_23D1B1460;
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = MEMORY[0x277D84F90];
  static CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 44) = 0;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0;
  *(v0 + 56) = 1;
  *(v0 + 60) = 0;
  *(v0 + 64) = 1;
  *(v0 + 68) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  *(v0 + 92) = 0;
  *(v0 + 96) = 1;
  *(v0 + 100) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 1;
  *(v0 + 124) = 0;
  *(v0 + 128) = 1;
  *&result = 33686019;
  *(v0 + 129) = 33686019;
  *(v0 + 133) = 4;
  *(v0 + 136) = 0;
  *(v0 + 140) = 1;
  static CLP_LogEntry_PrivateData_InertialOdometrySample._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = 1042;
  *(v0 + 115) = 7;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *&result = 33689864;
  *(v0 + 161) = 33689864;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 180) = 0;
  *(v0 + 184) = 1;
  static Proto_Gnss_Emergency_SummaryReport._StorageClass.defaultInstance = v0;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
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
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata) = xmmword_23D1B1460;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  v70 = v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat;
  *v18 = 0;
  *(v18 + 4) = 1;
  v71 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks) = MEMORY[0x277D84F90];
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v60, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v24 = v58;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v23, v1 + v24, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v26 = v61;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v61, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v27 = v59;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v27, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v28, v26, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v29 = v62;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v29, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v26, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v31 = v63;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v26, v1 + v31, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
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
  outlined copy of Data?(v47, v46);
  outlined consume of Data?(v49, v50);
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

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata), *(v0 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata + 8));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementExtension.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass.init(copying:)(v8);
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
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_FullSvTime;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime;
          goto LABEL_11;
        case 4:
        case 5:
        case 6:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage;
LABEL_11:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v12, v13);
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
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod();
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
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
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

void CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0) + 20));
  swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return;
    }
  }

  else
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return;
    }
  }

  swift_beginAccess();
  if ((*(v9 + 28) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__noncoherentIntervalCount, 7, MEMORY[0x277D21860]);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__coherentIntegrationMs, 8, MEMORY[0x277D21860]);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeDetectionMethod, 9);
  closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyDetectionMethod, 10);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__channelID, 11, MEMORY[0x277D21848]);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__codeLockDurationSeconds, 12);
  closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyLockDurationSeconds, 13);
  closure #14 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadataFormat, 15, MEMORY[0x277D21860]);
  v10 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__topCorrelationPeaks;
  swift_beginAccess();
  if (*(*(v9 + v10) + 16))
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalCorrelationPeak and conformance CLP_LogEntry_PrivateData_SignalCorrelationPeak, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTime and conformance CLP_LogEntry_PrivateData_FullSvTime, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FullSvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvMeasurementUsage and conformance CLP_LogEntry_PrivateData_SvMeasurementUsage, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 7)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

void closure #14 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__metadata);
  swift_beginAccess();
  v5 = v4[1];
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    outlined copy of Data._Representation(v6, v5);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v6, v5);
  }
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    return a7(*v11, a6, a3, a4);
  }

  return result;
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementExtension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v147 = *(v4 - 8);
  v148 = v4;
  MEMORY[0x28223BE20](v4);
  v140 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR);
  v6 = MEMORY[0x28223BE20](v149);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v139 = &v136 - v10;
  MEMORY[0x28223BE20](v9);
  v146 = &v136 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v137 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v142 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v138 = &v136 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v136 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v141 = &v136 - v22;
  MEMORY[0x28223BE20](v21);
  v145 = &v136 - v23;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
  v150 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v144 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMR);
  MEMORY[0x28223BE20](v26);
  v28 = &v136 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v40, v34, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v42 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__fullSvTime;
  swift_beginAccess();
  v43 = *(v26 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v28, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151 + v42, &v28[v43], &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  v44 = *(v150 + 6);
  if (v44(v28, 1, v24) == 1)
  {

    outlined destroy of Any?(v34, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    if (v44(&v28[v43], 1, v24) == 1)
    {
      outlined destroy of Any?(v28, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
      goto LABEL_20;
    }

LABEL_18:
    v45 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMd;
    v46 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSg_ADtMR;
    v47 = v28;
LABEL_33:
    outlined destroy of Any?(v47, v45, v46);
    goto LABEL_34;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28, v32, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if (v44(&v28[v43], 1, v24) == 1)
  {

    outlined destroy of Any?(v34, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v32, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
    goto LABEL_18;
  }

  v48 = v144;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v28[v43], v144, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  v41 = v152;

  v49 = specialized static CLP_LogEntry_PrivateData_FullSvTime.== infix(_:_:)(v32, v48);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  outlined destroy of Any?(v34, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v32, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  outlined destroy of Any?(v28, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_FullSvTimeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v50 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v51 = v145;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v50, v145, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v52 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTimeUsageNanoseconds;
  swift_beginAccess();
  v53 = *(v149 + 48);
  v54 = v146;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51, v146, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151 + v52, v54 + v53, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v55 = v148;
  v56 = *(v147 + 48);
  if (v56(v54, 1, v148) == 1)
  {
    outlined destroy of Any?(v51, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    if (v56(v54 + v53, 1, v55) == 1)
    {
      v150 = v56;
      outlined destroy of Any?(v54, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v57 = v141;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v141, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if (v56(v54 + v53, 1, v55) == 1)
  {
    outlined destroy of Any?(v51, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_25:
    v45 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd;
    v46 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR;
    v47 = v54;
    goto LABEL_33;
  }

  v150 = v56;
  v58 = v54 + v53;
  v59 = v140;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  LODWORD(v147) = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v57, v59);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v59, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v51, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v54, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((v147 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v60 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v61 = v143;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v60, v143, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v62 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffsetUsagePpb;
  swift_beginAccess();
  v63 = *(v149 + 48);
  v64 = v139;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v139, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v65 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v151 + v62, v64 + v63, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v66 = v150;
  if (v150(v64, 1, v55) == 1)
  {
    outlined destroy of Any?(v61, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    v67 = v66(v64 + v63, 1, v55);
    v68 = v142;
    if (v67 == 1)
    {
      v150 = v66;
      outlined destroy of Any?(v65, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v69 = v64;
  v70 = v66;
  v71 = v138;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v138, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v150 = v70;
  v72 = v70(v65 + v63, 1, v55);
  v68 = v142;
  if (v72 == 1)
  {
    outlined destroy of Any?(v143, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_32:
    v45 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd;
    v46 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR;
    v47 = v65;
    goto LABEL_33;
  }

  v75 = v65 + v63;
  v76 = v140;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v75, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  v77 = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v71, v76);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v76, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v143, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
  outlined destroy of Any?(v65, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if ((v77 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v78 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v78, v68, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v79 = OBJC_IVAR____TtCV10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__carrierPhaseUsageNanoseconds;
  v80 = v68;
  v81 = v151;
  swift_beginAccess();
  v82 = *(v149 + 48);
  v83 = v80;
  v84 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v83, v136, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v81 + v79, v84 + v82, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  v85 = v150;
  if (v150(v84, 1, v55) != 1)
  {
    v86 = v137;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84, v137, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    if (v85(v84 + v82, 1, v55) != 1)
    {
      v87 = v140;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v84 + v82, v140, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      v88 = specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(v86, v87);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v87, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      outlined destroy of Any?(v142, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v86, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
      outlined destroy of Any?(v84, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
      if ((v88 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }

    outlined destroy of Any?(v142, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v86, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
LABEL_43:
    outlined destroy of Any?(v84, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSg_ADtMR);
    goto LABEL_34;
  }

  outlined destroy of Any?(v142, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
  if (v85(v84 + v82, 1, v55) != 1)
  {
    goto LABEL_43;
  }

  outlined destroy of Any?(v84, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SvMeasurementUsageVSgMR);
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
    outlined copy of Data?(v121, v120);
    outlined copy of Data?(v123, v124);
    if (v120 >> 60 == 15)
    {
      if (v124 >> 60 == 15)
      {
        outlined consume of Data?(v121, v120);
        goto LABEL_89;
      }
    }

    else
    {
      outlined copy of Data?(v121, v120);
      outlined copy of Data?(v123, v124);
      if (v124 >> 60 != 15)
      {
        v125 = specialized static Data.== infix(_:_:)(v121, v120, v123, v124);
        outlined consume of Data?(v123, v124);
        outlined consume of Data?(v121, v120);
        outlined consume of Data?(v123, v124);
        outlined consume of Data?(v121, v120);
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

        v73 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_SignalCorrelationPeakV_Tt1g5(v132, v135);

        return v73 & 1;
      }

      outlined consume of Data?(v123, v124);
      outlined consume of Data?(v121, v120);
    }

    outlined consume of Data?(v121, v120);
    outlined consume of Data?(v123, v124);
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