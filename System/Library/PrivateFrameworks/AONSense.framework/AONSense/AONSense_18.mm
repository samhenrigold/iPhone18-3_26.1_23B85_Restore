void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.responseType.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.responseType.modify;
}

uint64_t Proto_Gnss_Emergency_PositionReport.sessionInfo.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v10 + v11, v9, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v13 = *(*(v12 - 1) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v9, a3, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  UnknownStorage.init()();
  *(a3 + v12[5]) = 6;
  *(a3 + v12[6]) = 7;
  v14 = a3 + v12[7];
  *v14 = 0;
  *(v14 + 4) = 1;
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Any?(v9, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 6;
    *(v14 + v9[6]) = 7;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.sessionInfo.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasSessionInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearSessionInfo()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMd, &_s10ALProtobuf32Proto_Gnss_Emergency_SessionInfoVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.gpsMeasurements.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v3 + *(a1(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v10 + v11, v9, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v9, a3, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  UnknownStorage.init()();
  v14 = *(v12 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a3 + v14) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
  v15 = v13(v9, 1, v12);

  if (v15 != 1)
  {
    return outlined destroy of Any?(v9, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  v11 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v19) = static Proto_Gnss_Emergency_GpsMeasurements._StorageClass.defaultInstance;
    v20 = v18(v8, 1, v9);

    if (v20 != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.gpsMeasurements.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasGpsMeasurements.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearGpsMeasurements()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsMeasurementsVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
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
  *(a1 + v8[10]) = 4;
  *(a1 + v8[11]) = 2;
  v15 = v8[12];
  v16 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + v8[13]) = 2;
  v17 = v8[14];
  v18 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  *(a1 + v8[15]) = 2;
  v19 = v8[16];
  v20 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  (*(*(v20 - 8) + 56))(a1 + v19, 1, 1, v20);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  v11 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
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
    v21 = v14 + v9[7];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[8];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v14 + v9[10]) = 4;
    *(v14 + v9[11]) = 2;
    v24 = v9[12];
    v25 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    *(v14 + v9[13]) = 2;
    v26 = v9[14];
    v27 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    *(v14 + v9[15]) = 2;
    v28 = v9[16];
    v29 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
    (*(*(v29 - 8) + 56))(v14 + v28, 1, 1, v29);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
  }

  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.locationIndication.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
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
      type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasLocationIndication.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearLocationIndication()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_Is801LocationIndVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  if (*(v1 + v2) == 4)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  result = swift_beginAccess();
  *(v6 + v8) = a1;
  return result;
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 4)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify;
}

void Proto_Gnss_Emergency_MeasurementReportWithEstimate.afltAction.modify(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  *(v7 + v11) = v3;

  free(v2);
}

BOOL Proto_Gnss_Emergency_MeasurementReportWithEstimate.hasAfltAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  return *(v1 + v2) != 4;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_MeasurementReportWithEstimate.clearAfltAction()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass(0);
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_MeasurementReportWithEstimate._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  *(v4 + v6) = 4;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) & 1;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.setter(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.isMeasInCdmaTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.isMeasInCdmaTime.modify;
}

void Proto_Gnss_Emergency_MeasurementReport.isMeasInCdmaTime.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), uint64_t *a5)
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

BOOL Proto_Gnss_Emergency_MeasurementReport.hasIsMeasInCdmaTime.getter(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = *(v2 + *(a1(0) + 20));
  v5 = *a2;
  swift_beginAccess();
  return *(v4 + v5) != 2;
}

uint64_t Proto_Gnss_Emergency_MeasurementReport.clearIsMeasInCdmaTime()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), uint64_t *a4)
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

  v13 = *a4;
  result = swift_beginAccess();
  *(v11 + v13) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.include1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.include1XMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.optimizeGnssMeasWith1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.optimizeGnssMeasWith1XMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.optimizeAfltMeasWith1XMsb.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.optimizeAfltMeasWith1XMsb.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Cdma1xContext.useCdmaTimeForMeas.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Cdma1xContext.useCdmaTimeForMeas.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Configuration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Configuration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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

  if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Configuration@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Configuration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SummaryReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SummaryReport._StorageClass();
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_SummaryReport._StorageClass.init(copying:)(v8);

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
        case 3:
        case 4:
        case 5:
        case 6:
        case 11:
        case 12:
        case 13:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_18;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession();
          goto LABEL_17;
        case 10:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol();
          goto LABEL_17;
        case 14:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode();
LABEL_17:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_18;
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_18;
        case 18:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_18;
        case 19:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_18:
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

uint64_t Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0) + 20));
  result = swift_beginAccess();
  if (v9[24])
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

  swift_beginAccess();
  if ((v9[40] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[56] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[72] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[88] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[104] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #12 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #13 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #14 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #15 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #17 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #18 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #19 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 18)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 115) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 161) != 8)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 162) != 17)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 163) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #17 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 164) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #18 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #19 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 184) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_SummaryReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 48))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  swift_beginAccess();
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 64))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 80))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  swift_beginAccess();
  v21 = *(a2 + 104);
  if (v20)
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 96))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 108);
  v23 = *(a1 + 112);
  swift_beginAccess();
  v24 = *(a2 + 112);
  if (v23)
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 108))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 113);
  swift_beginAccess();
  v26 = *(a2 + 113);
  if (v25 == 18)
  {
    if (v26 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 18 || v25 != v26)
    {
      return result;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 114);
  swift_beginAccess();
  v29 = *(a2 + 114);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 4 || v28 != v29)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 115);
  swift_beginAccess();
  v31 = *(a2 + 115);
  if (v30 == 7)
  {
    if (v31 != 7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v31 == 7 || v30 != v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = *(a1 + 128);
  swift_beginAccess();
  v34 = *(a2 + 128);
  if (v33)
  {
    if (!*(a2 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v32 != *(a2 + 120))
    {
      v34 = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 136);
  v36 = *(a1 + 144);
  swift_beginAccess();
  v37 = *(a2 + 144);
  if (v36)
  {
    if (!*(a2 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *(a2 + 136))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 152);
  v39 = *(a1 + 160);
  swift_beginAccess();
  v40 = *(a2 + 160);
  if (v39)
  {
    if (!*(a2 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *(a2 + 152))
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 161);
  swift_beginAccess();
  v42 = *(a2 + 161);
  if (v41 == 8)
  {
    if (v42 != 8)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v42 == 8 || v41 != v42)
    {
      return result;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 162);
  swift_beginAccess();
  v44 = *(a2 + 162);
  if (v43 == 17)
  {
    if (v44 != 17)
    {
      return 0;
    }

    goto LABEL_86;
  }

  result = 0;
  if (v44 != 17 && v43 == v44)
  {
LABEL_86:
    swift_beginAccess();
    v45 = *(a1 + 163);
    swift_beginAccess();
    v46 = *(a2 + 163);
    if (v45 == 2)
    {
      if (v46 != 2)
      {
        return 0;
      }
    }

    else if (v46 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v47 = *(a1 + 164);
    swift_beginAccess();
    v48 = *(a2 + 164);
    if (v47 == 2)
    {
      if (v48 != 2)
      {
        return 0;
      }
    }

    else if (v48 == 2 || ((v47 ^ v48) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v49 = *(a1 + 168);
    v50 = *(a1 + 176);
    swift_beginAccess();
    v51 = *(a2 + 176);
    if ((v50 & 1) == 0)
    {
      if (v49 != *(a2 + 168))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }

LABEL_102:
      swift_beginAccess();
      v52 = *(a1 + 180);
      v53 = *(a1 + 184);
      swift_beginAccess();
      v54 = *(a2 + 184);
      if (v53)
      {
        if (!*(a2 + 184))
        {
          return 0;
        }
      }

      else
      {
        if (v52 != *(a2 + 180))
        {
          v54 = 1;
        }

        if (v54)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 176))
    {
      goto LABEL_102;
    }

    return 0;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport, &protocol conformance descriptor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport, &protocol conformance descriptor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SummaryReport and conformance Proto_Gnss_Emergency_SummaryReport, type metadata accessor for Proto_Gnss_Emergency_SummaryReport, &protocol conformance descriptor for Proto_Gnss_Emergency_SummaryReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplConfig.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

int *Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Proto_Gnss_Emergency_SuplConfig.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplConfig@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplConfig(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplConfig and conformance Proto_Gnss_Emergency_SuplConfig, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplConfig);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LteCellInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      if (result <= 8)
      {
LABEL_2:
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 9)
      {
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 10)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (result > 2)
      {
        goto LABEL_2;
      }

      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }
  }
}

int *Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, 7);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, MEMORY[0x277D21848]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LteCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LteCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LteCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 36));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 5, a3, a4);
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GsmCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WcdmaCellInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 8)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, 6);
  closure #7 in Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in Proto_Gnss_Emergency_WcdmaCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  if (*(a1 + *(result + 44)) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WcdmaCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 4;
  v14 = a2 + v13;
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_WcdmaCellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocationId.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        break;
      }

      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LteCellInfo);
LABEL_16:
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      v6 = v3;
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GsmCellInfo);
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_5;
      }

      v6 = v3;
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_WcdmaCellInfo);
    }

    v3 = v6;
    goto LABEL_16;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocationId.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  if (*(v3 + *(result + 32)) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LteCellInfo and conformance Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LteCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GsmCellInfo and conformance Proto_Gnss_Emergency_GsmCellInfo, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GsmCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    if (*(v3[2] + 16))
    {
      type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WcdmaCellInfo and conformance Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_WcdmaCellInfo);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LocationId@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  a2[2] = v4;
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 32)) = 7;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocationId(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationId and conformance Proto_Gnss_Emergency_LocationId, type metadata accessor for Proto_Gnss_Emergency_LocationId, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationId);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
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

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementRequest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a2 + v5) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementRequest and conformance Proto_Gnss_Emergency_WlanMeasurementRequest, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      else if (result == 2)
      {
LABEL_12:
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_12;
        case 4:
          type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }
  }
}

void Proto_Gnss_Emergency_WlanMeasurementElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v10 = v5 + v9[5];
  v11 = *(v10 + 8);
  if (v11 >> 60 != 15)
  {
    v12 = *v10;
    outlined copy of Data._Representation(*v10, *(v10 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v12, v11);
  }

  if (!v4)
  {
    if (*(v5 + v9[6]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v5 + v9[7]) != 2)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if ((*(v5 + v9[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, MEMORY[0x277D21848]);
    UnknownStorage.traverse<A>(visitor:)();
  }
}

double protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementElement@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_23D1B1460;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + a1[9];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementElement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementElement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_WlanMeasurementList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  if (*(v3 + *(result + 24)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementElement and conformance Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementElement);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_WlanMeasurementList@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 24)) = 6;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_WlanMeasurementList(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementList and conformance Proto_Gnss_Emergency_WlanMeasurementList, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &protocol conformance descriptor for Proto_Gnss_Emergency_WlanMeasurementList);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GsmCellInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        a4(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_2;
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
LABEL_2:
      a4(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }
}

int *Proto_Gnss_Emergency_GsmCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
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

  if ((*(v8 + v13[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v8 + v13[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v8 + v13[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v8, a1, a2, a3, a5, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GsmCellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_QoP(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP, &protocol conformance descriptor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_QoP(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP, &protocol conformance descriptor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_QoP(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP, &protocol conformance descriptor for Proto_Gnss_Emergency_QoP);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SLPAddress.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SLPAddress.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v6 = result;
  if (*(v3 + *(result + 24)) == 2)
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

  if (*(v3 + *(v6 + 28)) != 5)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v3 + *(v6 + 32) + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SLPAddress@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v5) = 5;
  v6 = (a2 + a1[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SLPAddress(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Notification.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for Proto_Gnss_Emergency_Notification(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Notification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
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

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_Notification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 2;
  *(a2 + v5) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Notification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification, &protocol conformance descriptor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Notification(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification, &protocol conformance descriptor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Notification(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification, &protocol conformance descriptor for Proto_Gnss_Emergency_Notification);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
        type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(v3 + *(type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0) + 24)) != 4)
    {
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_SuplInitVer2Extension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(inited + 20), v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplInitVer2Extension@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(a1 + 24)) = 4;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplInitVer2Extension);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  *(v1 + 16) = 18;
  v13 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  v14 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  v16 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  v18 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v1 + v19, 1, 1, inited);
  swift_beginAccess();
  v21 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v21;
  v22 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v22, v12, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v1 + v13, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v9, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v9, v1 + v15, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  v25 = v29;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v29, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v25, v1 + v17, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  v27 = v30;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v30, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v27, v1 + v19, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_Init._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_Init.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_Init._StorageClass.init(copying:)(v8);
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

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_8;
        }

        if (result == 2)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_QoP(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_QoP;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_QoP;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP;
          goto LABEL_7;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress;
            goto LABEL_7;
          case 4:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_Notification(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_Notification;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_Notification;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification;
LABEL_7:
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
            v4 = v12;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_8:
            swift_endAccess();
            break;
          case 5:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_SuplInitVer2Extension;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 18)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_QoP);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_QoP and conformance Proto_Gnss_Emergency_QoP, type metadata accessor for Proto_Gnss_Emergency_QoP, &protocol conformance descriptor for Proto_Gnss_Emergency_QoP);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_QoP);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddress and conformance Proto_Gnss_Emergency_SLPAddress, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, &protocol conformance descriptor for Proto_Gnss_Emergency_SLPAddress);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Notification);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Notification and conformance Proto_Gnss_Emergency_Notification, type metadata accessor for Proto_Gnss_Emergency_Notification, &protocol conformance descriptor for Proto_Gnss_Emergency_Notification);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Notification);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_Init.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v9 = *(inited - 8);
  MEMORY[0x28223BE20](inited);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  if ((*(v9 + 48))(v7, 1, inited) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplInitVer2Extension and conformance Proto_Gnss_Emergency_SuplInitVer2Extension, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
}

BOOL closure #1 in static Proto_Gnss_Emergency_Init.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v93 = *(inited - 8);
  MEMORY[0x28223BE20](inited);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMR);
  MEMORY[0x28223BE20](v92);
  v8 = &v86 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v86 - v12;
  v97 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v91 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMR);
  MEMORY[0x28223BE20](v95);
  v98 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v105 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v86 - v18;
  v103 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v94 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR);
  MEMORY[0x28223BE20](v101);
  v104 = &v86 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v99 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v109 = &v86 - v24;
  v110 = type metadata accessor for Proto_Gnss_Emergency_QoP(0);
  v25 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v100 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMR);
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v108 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v86 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = *(a2 + 16);
  if (v35 == 18)
  {
    if (v36 != 18)
    {
      return 0;
    }

LABEL_6:
    v87 = v6;
    v88 = inited;
    v89 = v8;
    v38 = a2;
    v39 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v39, v34, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    v40 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__qop;
    swift_beginAccess();
    v41 = *(v27 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v29, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v40, &v29[v41], &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
    v42 = *(v25 + 48);
    v43 = v110;
    if (v42(v29, 1, v110) == 1)
    {

      outlined destroy of Any?(v34, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      if (v42(&v29[v41], 1, v43) == 1)
      {
        outlined destroy of Any?(v29, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
LABEL_13:
        v49 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v50 = v109;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v49, v109, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        v51 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__slpAddress;
        swift_beginAccess();
        v52 = *(v101 + 48);
        v29 = v104;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v104, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v51, &v29[v52], &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
        v53 = *(v102 + 48);
        v54 = v103;
        if (v53(v29, 1, v103) == 1)
        {
          outlined destroy of Any?(v50, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          v55 = v53(&v29[v52], 1, v54);
          v56 = v106;
          v57 = v105;
          v58 = v107;
          if (v55 == 1)
          {
            outlined destroy of Any?(v29, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
LABEL_25:
            v65 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v58, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            v66 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
            swift_beginAccess();
            v67 = *(v95 + 48);
            v68 = v58;
            v69 = v58;
            v70 = v98;
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v68, v98, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v66, v70 + v67, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            v71 = *(v96 + 48);
            v72 = v97;
            if (v71(v70, 1, v97) == 1)
            {
              outlined destroy of Any?(v69, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
              if (v71(v70 + v67, 1, v72) == 1)
              {
                outlined destroy of Any?(v70, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
LABEL_32:
                v76 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v76, v56, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                v77 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
                swift_beginAccess();
                v78 = *(v92 + 48);
                v79 = v89;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v89, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v77, v79 + v78, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                v80 = *(v93 + 48);
                v81 = v88;
                if (v80(v79, 1, v88) == 1)
                {

                  outlined destroy of Any?(v56, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                  if (v80(v79 + v78, 1, v81) == 1)
                  {
                    outlined destroy of Any?(v79, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                    return 1;
                  }

                  goto LABEL_37;
                }

                v82 = v90;
                outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v79, v90, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                if (v80(v79 + v78, 1, v81) == 1)
                {

                  outlined destroy of Any?(v56, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v82, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
LABEL_37:
                  outlined destroy of Any?(v79, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSg_ADtMR);
                  return 0;
                }

                v83 = v79 + v78;
                v84 = v87;
                outlined init with take of Proto_Gnss_Emergency_SLPAddress(v83, v87, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                v85 = specialized static Proto_Gnss_Emergency_SuplInitVer2Extension.== infix(_:_:)(v82, v84);

                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v84, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                outlined destroy of Any?(v56, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                outlined destroy of Proto_Gnss_Emergency_SLPAddress(v82, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
                outlined destroy of Any?(v79, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_SuplInitVer2ExtensionVSgMR);
                return (v85 & 1) != 0;
              }

              goto LABEL_30;
            }

            outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v57, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            if (v71(v70 + v67, 1, v72) == 1)
            {
              outlined destroy of Any?(v107, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
              outlined destroy of Proto_Gnss_Emergency_SLPAddress(v57, type metadata accessor for Proto_Gnss_Emergency_Notification);
LABEL_30:
              v45 = &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMd;
              v46 = &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSg_ADtMR;
              v62 = v70;
              goto LABEL_20;
            }

            v73 = v70 + v67;
            v74 = v91;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v73, v91, type metadata accessor for Proto_Gnss_Emergency_Notification);
            v75 = specialized static Proto_Gnss_Emergency_Notification.== infix(_:_:)(v57, v74);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v74, type metadata accessor for Proto_Gnss_Emergency_Notification);
            outlined destroy of Any?(v107, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v57, type metadata accessor for Proto_Gnss_Emergency_Notification);
            outlined destroy of Any?(v70, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_NotificationVSgMR);
            if (v75)
            {
              goto LABEL_32;
            }

LABEL_21:

            return 0;
          }
        }

        else
        {
          v59 = v99;
          outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v99, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          v60 = v53(&v29[v52], 1, v54);
          v61 = v106;
          v57 = v105;
          v58 = v107;
          if (v60 != 1)
          {
            v63 = &v29[v52];
            v64 = v94;
            outlined init with take of Proto_Gnss_Emergency_SLPAddress(v63, v94, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            LODWORD(v110) = specialized static Proto_Gnss_Emergency_SLPAddress.== infix(_:_:)(v59, v64);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v64, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            outlined destroy of Any?(v109, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
            outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
            outlined destroy of Any?(v29, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
            v56 = v61;
            if ((v110 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }

          outlined destroy of Any?(v109, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v59, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
        }

        v45 = &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMd;
        v46 = &_s10ALProtobuf31Proto_Gnss_Emergency_SLPAddressVSg_ADtMR;
LABEL_19:
        v62 = v29;
LABEL_20:
        outlined destroy of Any?(v62, v45, v46);
        goto LABEL_21;
      }
    }

    else
    {
      v44 = v108;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v108, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      if (v42(&v29[v41], 1, v43) != 1)
      {
        v47 = v100;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v29[v41], v100, type metadata accessor for Proto_Gnss_Emergency_QoP);

        v48 = specialized static Proto_Gnss_Emergency_GsmCellInfo.== infix(_:_:)(v44, v47, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v47, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Any?(v34, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v44, type metadata accessor for Proto_Gnss_Emergency_QoP);
        outlined destroy of Any?(v29, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
        if ((v48 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      outlined destroy of Any?(v34, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMd, &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v44, type metadata accessor for Proto_Gnss_Emergency_QoP);
    }

    v45 = &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMd;
    v46 = &_s10ALProtobuf24Proto_Gnss_Emergency_QoPVSg_ADtMR;
    goto LABEL_19;
  }

  result = 0;
  if (v36 != 18 && v35 == v36)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Init(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init, &protocol conformance descriptor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Init(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init, &protocol conformance descriptor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Init(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Init and conformance Proto_Gnss_Emergency_Init, type metadata accessor for Proto_Gnss_Emergency_Init, &protocol conformance descriptor for Proto_Gnss_Emergency_Init);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SuplContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

LABEL_20:
          type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          goto LABEL_20;
        }

        type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          goto LABEL_20;
        }

        type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
        type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 7 || result == 8 || result == 9)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[8] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  closure #8 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 36), v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration, type metadata accessor for Proto_Gnss_Emergency_Configuration, &protocol conformance descriptor for Proto_Gnss_Emergency_Configuration);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
}

uint64_t closure #6 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in Proto_Gnss_Emergency_SuplContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  if (*(a1 + *(result + 48)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SuplContext@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  *(a2 + a1[7]) = 2;
  v8 = (a2 + v7);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v12 = a1[11];
  v13 = (a2 + a1[10]);
  *v13 = 0;
  v13[1] = 0;
  *(a2 + v12) = 2;
  v14 = a1[13];
  *(a2 + a1[12]) = 2;
  *(a2 + v14) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SuplContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SuplContext and conformance Proto_Gnss_Emergency_SuplContext, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &protocol conformance descriptor for Proto_Gnss_Emergency_SuplContext);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v33 - v6;
  *(v1 + 16) = 0;
  *(v1 + 21) = 8466;
  *(v1 + 23) = 24;
  *(v1 + 24) = 0;
  *(v1 + 20) = 1;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  v34 = (v1 + 56);
  *(v1 + 72) = 0;
  v35 = (v1 + 72);
  *(v1 + 64) = 1;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  v36 = (v1 + 88);
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  v37 = (v1 + 104);
  *(v1 + 120) = 0;
  v38 = (v1 + 120);
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 129) = 514;
  v39 = (v1 + 129);
  *(v1 + 131) = 2;
  v7 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v40 = (v1 + 131);
  v41 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v42 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  swift_beginAccess();
  LODWORD(v9) = *(a1 + 16);
  v11 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v9;
  *(v1 + 20) = v11;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v9;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + 22);
  swift_beginAccess();
  *(v1 + 22) = v9;
  swift_beginAccess();
  LOBYTE(v9) = *(a1 + 23);
  swift_beginAccess();
  *(v1 + 23) = v9;
  swift_beginAccess();
  v12 = *(a1 + 24);
  LOBYTE(v9) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v12;
  *(v1 + 32) = v9;
  swift_beginAccess();
  v13 = *(a1 + 40);
  LOBYTE(v12) = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v13;
  *(v1 + 48) = v12;
  swift_beginAccess();
  v14 = *(a1 + 56);
  LOBYTE(v12) = *(a1 + 64);
  v15 = v34;
  swift_beginAccess();
  *v15 = v14;
  *(v1 + 64) = v12;
  swift_beginAccess();
  v16 = *(a1 + 72);
  LOBYTE(v12) = *(a1 + 80);
  v17 = v35;
  swift_beginAccess();
  *v17 = v16;
  *(v1 + 80) = v12;
  swift_beginAccess();
  v18 = *(a1 + 88);
  LOBYTE(v12) = *(a1 + 96);
  v19 = v36;
  swift_beginAccess();
  *v19 = v18;
  *(v1 + 96) = v12;
  swift_beginAccess();
  v20 = *(a1 + 104);
  LOBYTE(v12) = *(a1 + 112);
  v21 = v37;
  swift_beginAccess();
  *v21 = v20;
  *(v1 + 112) = v12;
  swift_beginAccess();
  v22 = *(a1 + 120);
  LOBYTE(v12) = *(a1 + 128);
  v23 = v38;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 128) = v12;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 129);
  v24 = v39;
  swift_beginAccess();
  *v24 = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 130);
  swift_beginAccess();
  *(v1 + 130) = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 131);
  v25 = v40;
  swift_beginAccess();
  *v25 = v22;
  v26 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  v27 = v43;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v43, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v28 = v41;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v27, v1 + v28, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  v30 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v29, v44, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);

  v31 = v42;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v30, v1 + v31, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_SessionStatus._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_SessionStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_SessionStatus._StorageClass.init(copying:)(v8);
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_17;
        case 2:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
          goto LABEL_14;
        case 3:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status();
          goto LABEL_14;
        case 4:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause();
LABEL_14:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_17;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 12:
        case 13:
        case 14:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 15:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
          v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation;
          v13 = &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceLocation;
          v14 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation;
          goto LABEL_11;
        case 16:
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
          v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime;
          v13 = &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceTime;
          v14 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime;
LABEL_11:
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_17:
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

uint64_t Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  result = swift_beginAccess();
  if (v9[20])
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

  swift_beginAccess();
  if (v9[21] != 18)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[22] != 33)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[23] != 24)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[32] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[48] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #8 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #9 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #10 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #12 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #13 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #14 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #15 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 64) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #10 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #11 in closure #1 in Proto_Gnss_Emergency_SummaryReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #12 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 129) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #13 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 130) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 131) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceLocation and conformance Proto_Gnss_Emergency_NetworkReferenceLocation, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
}

uint64_t closure #16 in closure #1 in Proto_Gnss_Emergency_SessionStatus.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_NetworkReferenceTime and conformance Proto_Gnss_Emergency_NetworkReferenceTime, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, &protocol conformance descriptor for Proto_Gnss_Emergency_NetworkReferenceTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
}

BOOL closure #1 in static Proto_Gnss_Emergency_SessionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v85 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMR);
  MEMORY[0x28223BE20](v82);
  v87 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v81 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v84 = &v78 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v86 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMR);
  MEMORY[0x28223BE20](v13);
  v88 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 20);
  swift_beginAccess();
  v23 = *(a2 + 20);
  if (v22)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(a2 + 16))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 21);
  swift_beginAccess();
  v25 = *(a2 + 21);
  if (v24 == 18)
  {
    if (v25 != 18)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 18 || v24 != v25)
    {
      return result;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 22);
  swift_beginAccess();
  v28 = *(a2 + 22);
  if (v27 == 33)
  {
    if (v28 != 33)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v28 == 33 || v27 != v28)
    {
      return result;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 23);
  swift_beginAccess();
  v30 = *(a2 + 23);
  if (v29 == 24)
  {
    if (v30 != 24)
    {
      return 0;
    }

LABEL_22:
    swift_beginAccess();
    v31 = *(a1 + 24);
    v32 = *(a1 + 32);
    swift_beginAccess();
    v33 = *(a2 + 32);
    if (v32)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (v31 != *(a2 + 24))
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v34 = *(a1 + 40);
    v35 = *(a1 + 48);
    swift_beginAccess();
    v36 = *(a2 + 48);
    if (v35)
    {
      if (!*(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v34 != *(a2 + 40))
      {
        v36 = 1;
      }

      if (v36)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v37 = *(a1 + 56);
    v38 = *(a1 + 64);
    swift_beginAccess();
    v39 = *(a2 + 64);
    if (v38)
    {
      if (!*(a2 + 64))
      {
        return 0;
      }
    }

    else
    {
      if (v37 != *(a2 + 56))
      {
        v39 = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v40 = *(a1 + 72);
    v41 = *(a1 + 80);
    swift_beginAccess();
    v42 = *(a2 + 80);
    if (v41)
    {
      if (!*(a2 + 80))
      {
        return 0;
      }
    }

    else
    {
      if (v40 != *(a2 + 72))
      {
        v42 = 1;
      }

      if (v42)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v43 = *(a1 + 88);
    v44 = *(a1 + 96);
    swift_beginAccess();
    v45 = *(a2 + 96);
    if (v44)
    {
      if (!*(a2 + 96))
      {
        return 0;
      }
    }

    else
    {
      if (v43 != *(a2 + 88))
      {
        v45 = 1;
      }

      if (v45)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v46 = *(a1 + 104);
    v47 = *(a1 + 112);
    swift_beginAccess();
    v48 = *(a2 + 112);
    if (v47)
    {
      if (!*(a2 + 112))
      {
        return 0;
      }
    }

    else
    {
      if (v46 != *(a2 + 104))
      {
        v48 = 1;
      }

      if (v48)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v49 = *(a1 + 120);
    v50 = *(a1 + 128);
    swift_beginAccess();
    v51 = *(a2 + 128);
    if (v50)
    {
      if (!*(a2 + 128))
      {
        return 0;
      }
    }

    else
    {
      if (v49 != *(a2 + 120))
      {
        v51 = 1;
      }

      if (v51)
      {
        return 0;
      }
    }

    swift_beginAccess();
    v52 = *(a1 + 129);
    swift_beginAccess();
    v53 = *(a2 + 129);
    if (v52 == 2)
    {
      if (v53 != 2)
      {
        return 0;
      }
    }

    else if (v53 == 2 || ((v52 ^ v53) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v54 = *(a1 + 130);
    swift_beginAccess();
    v55 = *(a2 + 130);
    if (v54 == 2)
    {
      if (v55 != 2)
      {
        return 0;
      }
    }

    else if (v55 == 2 || ((v54 ^ v55) & 1) != 0)
    {
      return 0;
    }

    swift_beginAccess();
    v56 = *(a1 + 131);
    swift_beginAccess();
    v57 = *(a2 + 131);
    if (v56 == 2)
    {
      if (v57 != 2)
      {
        return 0;
      }
    }

    else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
    {
      return 0;
    }

    v58 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v58, v20, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v59 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    v60 = *(v13 + 48);
    v61 = v88;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v88, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v79 = v60;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v59, v61 + v60, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
    v62 = *(v86 + 48);
    if (v62(v61, 1, v10) == 1)
    {

      outlined destroy of Any?(v20, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      if (v62(v88 + v79, 1, v10) == 1)
      {
        outlined destroy of Any?(v88, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
LABEL_87:
        v66 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v67 = v84;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v84, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        v68 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
        swift_beginAccess();
        v69 = *(v82 + 48);
        v70 = v67;
        v71 = v87;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v70, v87, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v68, v71 + v69, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        v72 = *(v83 + 48);
        if (v72(v71, 1, v85) == 1)
        {

          outlined destroy of Any?(v84, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
          if (v72(v87 + v69, 1, v85) == 1)
          {
            outlined destroy of Any?(v87, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
            return 1;
          }

          goto LABEL_92;
        }

        v73 = v87;
        outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87, v81, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        if (v72(v73 + v69, 1, v85) == 1)
        {

          outlined destroy of Any?(v84, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
          outlined destroy of Proto_Gnss_Emergency_SLPAddress(v81, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
LABEL_92:
          outlined destroy of Any?(v87, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSg_ADtMR);
          return 0;
        }

        v74 = v87;
        v75 = v80;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v87 + v69, v80, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        v76 = v81;
        v77 = specialized static Proto_Gnss_Emergency_NetworkReferenceTime.== infix(_:_:)(v81, v75);

        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v75, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        outlined destroy of Any?(v84, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v76, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
        outlined destroy of Any?(v74, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_NetworkReferenceTimeVSgMR);
        return (v77 & 1) != 0;
      }
    }

    else
    {
      v63 = v88;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, v18, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      if (v62(v63 + v79, 1, v10) != 1)
      {
        v64 = v88;
        outlined init with take of Proto_Gnss_Emergency_SLPAddress(v88 + v79, v12, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);

        v65 = specialized static Proto_Gnss_Emergency_NetworkReferenceLocation.== infix(_:_:)(v18, v12);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        outlined destroy of Any?(v20, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
        outlined destroy of Proto_Gnss_Emergency_SLPAddress(v18, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
        outlined destroy of Any?(v64, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
        if (v65)
        {
          goto LABEL_87;
        }

LABEL_85:

        return 0;
      }

      outlined destroy of Any?(v20, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v18, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    }

    outlined destroy of Any?(v88, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMd, &_s10ALProtobuf45Proto_Gnss_Emergency_NetworkReferenceLocationVSg_ADtMR);
    goto LABEL_85;
  }

  result = 0;
  if (v30 != 24 && v29 == v30)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionStatus and conformance Proto_Gnss_Emergency_SessionStatus, type metadata accessor for Proto_Gnss_Emergency_SessionStatus, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionStatus);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsGpsCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 5)
        {
          type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    if ((*(v5 + v10[6] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t closure #5 in Proto_Gnss_Emergency_ClsUtranCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  if (*(a1 + *(result + 36)) != 5)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsUtranCellTime@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a2 + v10) = 5;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsUtranCellTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Plmn(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_SessionInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        case 2:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
          break;
        case 1:
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
          break;
        default:
          goto LABEL_5;
      }

      v3 = v6;
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_SessionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_SessionInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  *(a2 + v5) = 7;
  v6 = a2 + a1[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_SessionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionInfo and conformance Proto_Gnss_Emergency_SessionInfo, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_SessionInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PositionRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_PositionRequest._StorageClass.init(copying:)(v8);

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
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 16:
        case 17:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_11;
        case 2:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType();
          goto LABEL_9;
        case 15:
          swift_beginAccess();
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
LABEL_9:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_11:
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

uint64_t Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  result = swift_beginAccess();
  if (v9[20])
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

  swift_beginAccess();
  if (v9[21] != 5)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[36] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[44] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[52] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #7 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 7, MEMORY[0x277D21860]);
  closure #8 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 8, MEMORY[0x277D21860]);
  closure #9 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 9, MEMORY[0x277D21860]);
  closure #10 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 10);
  closure #11 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 11);
  closure #12 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 12, MEMORY[0x277D21860]);
  closure #13 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 13, MEMORY[0x277D21860]);
  closure #14 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 14, MEMORY[0x277D21860]);
  closure #15 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #16 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 16, MEMORY[0x277D21860]);
  closure #17 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(v9, a1, a2, a3, 17, MEMORY[0x277D21860]);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #15 in closure #1 in Proto_Gnss_Emergency_PositionRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 117) != 7)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Proto_Gnss_Emergency_PositionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 21);
  swift_beginAccess();
  v8 = *(a2 + 21);
  if (v7 == 5)
  {
    if (v8 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 5 || v7 != v8)
    {
      return result;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 24);
  v11 = *(a1 + 28);
  swift_beginAccess();
  v12 = *(a2 + 28);
  if (v11)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v10 != *(a2 + 24))
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  swift_beginAccess();
  v15 = *(a2 + 36);
  if (v14)
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (v13 != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = *(a1 + 44);
  swift_beginAccess();
  v18 = *(a2 + 44);
  if (v17)
  {
    if (!*(a2 + 44))
    {
      return 0;
    }
  }

  else
  {
    if (v16 != *(a2 + 40))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 48);
  v20 = *(a1 + 52);
  swift_beginAccess();
  v21 = *(a2 + 52);
  if (v20)
  {
    if (!*(a2 + 52))
    {
      return 0;
    }
  }

  else
  {
    if (v19 != *(a2 + 48))
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 60);
  swift_beginAccess();
  v24 = *(a2 + 60);
  if (v23)
  {
    if (!*(a2 + 60))
    {
      return 0;
    }
  }

  else
  {
    if (v22 != *(a2 + 56))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  v26 = *(a1 + 68);
  swift_beginAccess();
  v27 = *(a2 + 68);
  if (v26)
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (v25 != *(a2 + 64))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 72);
  v29 = *(a1 + 76);
  swift_beginAccess();
  v30 = *(a2 + 76);
  if (v29)
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (v28 != *(a2 + 72))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 80);
  v32 = *(a1 + 84);
  swift_beginAccess();
  v33 = *(a2 + 84);
  if (v32)
  {
    if (!*(a2 + 84))
    {
      return 0;
    }
  }

  else
  {
    if (v31 != *(a2 + 80))
    {
      v33 = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 88);
  v35 = *(a1 + 92);
  swift_beginAccess();
  v36 = *(a2 + 92);
  if (v35)
  {
    if (!*(a2 + 92))
    {
      return 0;
    }
  }

  else
  {
    if (v34 != *(a2 + 88))
    {
      v36 = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 96);
  v38 = *(a1 + 100);
  swift_beginAccess();
  v39 = *(a2 + 100);
  if (v38)
  {
    if (!*(a2 + 100))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(a2 + 96))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 104);
  v41 = *(a1 + 108);
  swift_beginAccess();
  v42 = *(a2 + 108);
  if (v41)
  {
    if (!*(a2 + 108))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 104))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 112);
  v44 = *(a1 + 116);
  swift_beginAccess();
  v45 = *(a2 + 116);
  if (v44)
  {
    if (!*(a2 + 116))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(a2 + 112))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 117);
  swift_beginAccess();
  v47 = *(a2 + 117);
  if (v46 == 7)
  {
    if (v47 != 7)
    {
      return 0;
    }

    goto LABEL_89;
  }

  result = 0;
  if (v47 != 7 && v46 == v47)
  {
LABEL_89:
    swift_beginAccess();
    v48 = *(a1 + 120);
    v49 = *(a1 + 124);
    swift_beginAccess();
    v50 = *(a2 + 124);
    if ((v49 & 1) == 0)
    {
      if (v48 != *(a2 + 120))
      {
        v50 = 1;
      }

      if (v50)
      {
        return 0;
      }

LABEL_95:
      swift_beginAccess();
      v51 = *(a1 + 128);
      v52 = *(a1 + 132);
      swift_beginAccess();
      v53 = *(a2 + 132);
      if (v52)
      {
        if (!*(a2 + 132))
        {
          return 0;
        }
      }

      else
      {
        if (v51 != *(a2 + 128))
        {
          v53 = 1;
        }

        if (v53)
        {
          return 0;
        }
      }

      return 1;
    }

    if (*(a2 + 124))
    {
      goto LABEL_95;
    }

    return 0;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PositionRequest(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionRequest and conformance Proto_Gnss_Emergency_PositionRequest, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &protocol conformance descriptor for Proto_Gnss_Emergency_PositionRequest);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime;
    v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_ClsUtranCellTime;
    v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMd, &_s10ALProtobuf37Proto_Gnss_Emergency_ClsUtranCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsUtranCellTime and conformance Proto_Gnss_Emergency_ClsUtranCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsUtranCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
}

uint64_t closure #2 in Proto_Gnss_Emergency_UtranGpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_ClsGpsCellTimeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsGpsCellTime and conformance Proto_Gnss_Emergency_ClsGpsCellTime, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsGpsCellTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t Proto_Gnss_Emergency_ClsGpsCellTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  result = a4(0);
  v11 = result;
  v12 = (v5 + *(result + 20));
  if (v12[1])
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    result = a5(*v12, 1, a2, a3);
    if (v6)
    {
      return result;
    }
  }

  v13 = (v5 + *(v11 + 24));
  if ((v13[1] & 1) == 0)
  {
    a5(*v13, 2, a2, a3);
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted;
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
        v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
    type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
    v8 = &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
    v9 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased;
LABEL_5:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_UtranGpsTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGpsTimeMeasured and conformance Proto_Gnss_Emergency_UtranGpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
}

uint64_t closure #2 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMd, &_s10ALProtobuf46Proto_Gnss_Emergency_GeranGpsTimeMeasuredBasedVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
}

uint64_t closure #3 in Proto_Gnss_Emergency_GpsTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMd, &_s10ALProtobuf49Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssistedVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted and conformance Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GpsTimeMeasuredParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
        type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_GpsTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_GpsTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasured and conformance Proto_Gnss_Emergency_GpsTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTimeMeasuredParams and conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTimeMeasuredParams);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Plmn.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Plmn.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 4))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + *(v7 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v4 + *(v7 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GpsTOD(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocationInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
            type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, MEMORY[0x277D21860]);
  closure #6 in Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #6 in Proto_Gnss_Emergency_LocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 40), v7, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMd, &_s10ALProtobuf27Proto_Gnss_Emergency_GpsTODVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsTOD and conformance Proto_Gnss_Emergency_GpsTOD, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, &protocol conformance descriptor for Proto_Gnss_Emergency_GpsTOD);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_LocationInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a2 + v7) = 4;
  v9 = a1[9];
  v10 = a1[10];
  v11 = a2 + v9;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v10, 1, 1, v12);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocationInfo and conformance Proto_Gnss_Emergency_LocationInfo, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_LocationInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_CellInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #4 in Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in Proto_Gnss_Emergency_CellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_CellInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_CellInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + *(v10 + 28) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #4 in Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in Proto_Gnss_Emergency_UtranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
        type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
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

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #3 in Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in Proto_Gnss_Emergency_GeranGanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMd, &_s10ALProtobuf29Proto_Gnss_Emergency_CellInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellInfo and conformance Proto_Gnss_Emergency_CellInfo, type metadata accessor for Proto_Gnss_Emergency_CellInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_CellInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1 || result == 2)
          {
LABEL_4:
            type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          }
        }

        else
        {
          if (result == 3 || result == 4)
          {
            goto LABEL_4;
          }

          type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
          type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result <= 8)
        {
          goto LABEL_4;
        }

        if (result == 9)
        {
          type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }

        else if (result == 10 || result == 11)
        {
          goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, 6);
  closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, 7);
  closure #8 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, MEMORY[0x277D21848]);
  closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  closure #11 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_ClsEutranCell.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 36), v7, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Plmn and conformance Proto_Gnss_Emergency_Plmn, type metadata accessor for Proto_Gnss_Emergency_Plmn, &protocol conformance descriptor for Proto_Gnss_Emergency_Plmn);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Plmn);
}

uint64_t closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  result = a5(0);
  v11 = (a1 + *(result + 52));
  if ((v11[1] & 1) == 0)
  {
    return a6(*v11, 9, a3, a4);
  }

  return result;
}

uint64_t closure #10 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 56) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_ClsEutranCell@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[13];
  v17 = a2 + a1[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a2 + v16;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1[15];
  v20 = a2 + a1[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a2 + v19;
  *v21 = 0;
  *(v21 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v13 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  v17 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v11, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v11, v1 + v12, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v14, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v5, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v16, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v9 = swift_allocObject();
    Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass.init(copying:)(v8);
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

      if (result == 3)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell;
        v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell;
        goto LABEL_7;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
    v13 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured;
    v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGanssTimeMeasured;
    v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured;
LABEL_7:
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranGanssTimeMeasured and conformance Proto_Gnss_Emergency_UtranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GeranGanssTimeMeasured and conformance Proto_Gnss_Emergency_GeranGanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_GanssTimeMeasured.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsEutranCell and conformance Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, &protocol conformance descriptor for Proto_Gnss_Emergency_ClsEutranCell);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
}

BOOL closure #1 in static Proto_Gnss_Emergency_GanssTimeMeasured.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v67 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMR);
  MEMORY[0x28223BE20](v65);
  v68 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v76 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v75 = &v63 - v8;
  v73 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMR);
  MEMORY[0x28223BE20](v71);
  v74 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v70 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMR);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v77 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  v27 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v26, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v28 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  v29 = v79;
  swift_beginAccess();
  v30 = *(v19 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v21, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v28, &v21[v30], &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  v31 = *(v16 + 48);
  if (v31(v21, 1, v15) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    v32 = a1;
    if (v31(&v21[v30], 1, v15) == 1)
    {
      outlined destroy of Any?(v21, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMd;
    v35 = &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSg_ADtMR;
    v36 = v21;
LABEL_14:
    outlined destroy of Any?(v36, v34, v35);
    goto LABEL_15;
  }

  v32 = a1;
  v33 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v77, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if (v31(&v21[v30], 1, v15) == 1)
  {

    outlined destroy of Any?(v26, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v33, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    goto LABEL_6;
  }

  v37 = v70;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v21[v30], v70, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);

  v38 = specialized static Proto_Gnss_Emergency_UtranGanssTimeMeasured.== infix(_:_:)(v33, v37);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v37, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  outlined destroy of Any?(v26, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v33, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  outlined destroy of Any?(v21, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_UtranGanssTimeMeasuredVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v40 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32 + v39, v78, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v41 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  v42 = *(v71 + 48);
  v43 = v74;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v74, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v41, v43 + v42, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v44 = *(v72 + 48);
  v45 = v73;
  if (v44(v43, 1, v73) != 1)
  {
    v49 = v69;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v69, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    v50 = v44(v43 + v42, 1, v45);
    v47 = v76;
    v48 = v75;
    if (v50 == 1)
    {
      outlined destroy of Any?(v78, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v49, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
      goto LABEL_13;
    }

    v52 = v43 + v42;
    v53 = v64;
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v52, v64, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    v54 = specialized static Proto_Gnss_Emergency_GeranGanssTimeMeasured.== infix(_:_:)(v49, v53);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v53, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    outlined destroy of Any?(v78, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v49, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    outlined destroy of Any?(v43, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
    if (v54)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  outlined destroy of Any?(v40, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
  v46 = v44(v43 + v42, 1, v45);
  v47 = v76;
  v48 = v75;
  if (v46 != 1)
  {
LABEL_13:
    v34 = &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMd;
    v35 = &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSg_ADtMR;
    v36 = v43;
    goto LABEL_14;
  }

  outlined destroy of Any?(v43, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GeranGanssTimeMeasuredVSgMR);
LABEL_19:
  v55 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32 + v55, v48, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v56 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  v57 = *(v65 + 48);
  v58 = v68;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v68, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29 + v56, v58 + v57, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  v59 = *(v66 + 48);
  v60 = v67;
  if (v59(v58, 1, v67) == 1)
  {

    outlined destroy of Any?(v48, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    if (v59(v58 + v57, 1, v60) == 1)
    {
      outlined destroy of Any?(v58, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
      return 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v47, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  if (v59(v58 + v57, 1, v60) == 1)
  {

    outlined destroy of Any?(v48, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v47, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
LABEL_24:
    outlined destroy of Any?(v58, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSg_ADtMR);
    return 0;
  }

  v61 = v63;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v58 + v57, v63, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v62 = specialized static Proto_Gnss_Emergency_ClsEutranCell.== infix(_:_:)(v47, v61);

  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v61, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  outlined destroy of Any?(v48, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v47, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  outlined destroy of Any?(v58, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ClsEutranCellVSgMR);
  return (v62 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeMeasured(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasured);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssTimeMeasuredParams.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
        type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasured);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Proto_Gnss_Emergency_GanssTimeMeasuredParams.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasured and conformance Proto_Gnss_Emergency_GanssTimeMeasured, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasured);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GpsTimeMeasuredParams@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  *(a4 + v8) = a2;
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssTimeMeasuredParams and conformance Proto_Gnss_Emergency_GanssTimeMeasuredParams, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_GanssLocationInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
            v6 = v3;
            type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
            lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
            goto LABEL_19;
          case 6:
            goto LABEL_4;
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
LABEL_19:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v10 = result;
  if (*(v5 + result[5]) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  closure #5 in Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, 6);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in Proto_Gnss_Emergency_GanssLocationInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  if (*(a1 + *(result + 36)) != 4)
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_GanssLocationInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 6;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  *(a2 + a1[9]) = 4;
  v11 = a2 + v10;
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssLocationInfo and conformance Proto_Gnss_Emergency_GanssLocationInfo, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_GanssLocationInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EllipsoidPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointUncertainCircle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointUncertainCircle(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainCircle);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
LABEL_4:
        type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
    if ((*(v5 + v10[6] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, MEMORY[0x277D21860]);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointUncertainEllipse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointUncertainEllipse@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainEllipse);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1)
        {
          type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
          lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
    if ((*(v5 + v10[6] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, MEMORY[0x277D21860]);
    closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, 6);
    closure #7 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_4:
          type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 3)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
    if ((*(v5 + v10[6] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    closure #5 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, MEMORY[0x277D21860]);
    closure #6 in Proto_Gnss_Emergency_LteCellInfo.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, 6);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_EllipsoidArc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_EllipsoidArc@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidArc);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        a4(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_PointUncertainCircle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    if ((*(v5 + *(a5(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Proto_Gnss_Emergency_PointAltitude.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t protocol witness for Message.init() in conformance Proto_Gnss_Emergency_PointUncertainCircle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_PointAltitude(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitude);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_Polygon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Polygon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  if (*(v3 + *(result + 24) + 4))
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

  if (*(*v3 + 16))
  {
    type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon, &protocol conformance descriptor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon, &protocol conformance descriptor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_Polygon(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon, &protocol conformance descriptor for Proto_Gnss_Emergency_Polygon);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_ShapeInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v9 = swift_allocObject();
    specialized Proto_Gnss_Emergency_ShapeInfo._StorageClass.init(copying:)(v8);

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

      if (result <= 4)
      {
        if (result > 2)
        {
          v12 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
            v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc;
            v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidArc;
            v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc;
          }
        }

        else if (result == 1)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainCircle;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_25;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
          v13 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse;
          v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainEllipse;
          v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse;
        }

        goto LABEL_23;
      }

      if (result <= 6)
      {
        break;
      }

      if (result == 7)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
        v13 = type metadata accessor for Proto_Gnss_Emergency_Polygon;
        v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_Polygon;
        v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon;
LABEL_23:
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(v15, v13, v14);
        v4 = v12;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_24;
      }

      if (result != 8)
      {
        goto LABEL_25;
      }

      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_24:
      swift_endAccess();
LABEL_25:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    if (result == 5)
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint;
      v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint;
    }

    else
    {
      swift_beginAccess();
      type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
      v13 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude;
      v14 = &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitude;
      v15 = &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  result = closure #1 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #6 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #8 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation, 8, MEMORY[0x277D21860]);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainCircle and conformance Proto_Gnss_Emergency_PointUncertainCircle, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainCircle);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
}

uint64_t closure #2 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointUncertainEllipse and conformance Proto_Gnss_Emergency_PointUncertainEllipse, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, &protocol conformance descriptor for Proto_Gnss_Emergency_PointUncertainEllipse);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
}

uint64_t closure #3 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid and conformance Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
}

uint64_t closure #4 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidArc and conformance Proto_Gnss_Emergency_EllipsoidArc, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidArc);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
}

uint64_t closure #5 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EllipsoidPoint and conformance Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, &protocol conformance descriptor for Proto_Gnss_Emergency_EllipsoidPoint);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
}

uint64_t closure #6 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PointAltitude and conformance Proto_Gnss_Emergency_PointAltitude, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, &protocol conformance descriptor for Proto_Gnss_Emergency_PointAltitude);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
}

uint64_t closure #7 in closure #1 in Proto_Gnss_Emergency_ShapeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Polygon and conformance Proto_Gnss_Emergency_Polygon, type metadata accessor for Proto_Gnss_Emergency_Polygon, &protocol conformance descriptor for Proto_Gnss_Emergency_Polygon);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_Polygon);
}

uint64_t closure #1 in static Proto_Gnss_Emergency_ShapeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v193 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v152 = *(v3 - 8);
  v153 = v3;
  MEMORY[0x28223BE20](v3);
  v148 = (&v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMR);
  MEMORY[0x28223BE20](v151);
  v154 = &v147 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v149 = (&v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v156 = &v147 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v159 = *(v10 - 8);
  v160 = v10;
  MEMORY[0x28223BE20](v10);
  v150 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMR);
  MEMORY[0x28223BE20](v158);
  v161 = &v147 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v155 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v163 = &v147 - v16;
  v17 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v166 = *(v17 - 8);
  v167 = v17;
  MEMORY[0x28223BE20](v17);
  v157 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  MEMORY[0x28223BE20](v165);
  v168 = &v147 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v170 = &v147 - v23;
  v24 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v173 = *(v24 - 8);
  v174 = v24;
  MEMORY[0x28223BE20](v24);
  v164 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMR);
  MEMORY[0x28223BE20](v172);
  v175 = &v147 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v169 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v181 = &v147 - v30;
  v31 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v178 = *(v31 - 8);
  v179 = v31;
  MEMORY[0x28223BE20](v31);
  v171 = &v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMR);
  MEMORY[0x28223BE20](v177);
  v180 = &v147 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v189 = &v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v188 = &v147 - v37;
  v38 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v185 = *(v38 - 8);
  v186 = v38;
  MEMORY[0x28223BE20](v38);
  v176 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMR);
  MEMORY[0x28223BE20](v184);
  v187 = &v147 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v182 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v191 = &v147 - v44;
  v192 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v45 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v183 = &v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMR);
  v48 = v47 - 8;
  MEMORY[0x28223BE20](v47);
  v50 = &v147 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v190 = &v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v55 = &v147 - v54;
  v56 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v56, v55, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v57 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v58 = v193;
  swift_beginAccess();
  v59 = *(v48 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v50, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v60 = v58 + v57;
  v61 = v192;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60, &v50[v59], &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  v62 = *(v45 + 48);
  if (v62(v50, 1, v61) == 1)
  {

    outlined destroy of Any?(v55, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    if (v62(&v50[v59], 1, v61) == 1)
    {
      outlined destroy of Any?(v50, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v64 = &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMd;
    v65 = &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSg_ADtMR;
LABEL_14:
    v80 = v50;
LABEL_15:
    outlined destroy of Any?(v80, v64, v65);
    goto LABEL_16;
  }

  v63 = v190;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v190, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if (v62(&v50[v59], 1, v61) == 1)
  {

    outlined destroy of Any?(v55, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    goto LABEL_6;
  }

  v66 = v183;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v50[v59], v183, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);

  v67 = specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(v63, v66, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v66, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Any?(v55, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v63, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  outlined destroy of Any?(v50, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_PointUncertainCircleVSgMR);
  if ((v67 & 1) == 0)
  {
LABEL_16:

    return 0;
  }

LABEL_8:
  v68 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v69 = v191;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v68, v191, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v70 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v71 = *(v184 + 48);
  v50 = v187;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69, v187, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v70, &v50[v71], &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v72 = v186;
  v73 = *(v185 + 48);
  if (v73(v50, 1, v186) == 1)
  {
    outlined destroy of Any?(v69, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    v74 = v73(&v50[v71], 1, v72);
    v75 = v188;
    v76 = v189;
    if (v74 == 1)
    {
      outlined destroy of Any?(v50, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v77 = v182;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v50, v182, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v78 = v73(&v50[v71], 1, v72);
  v75 = v188;
  v79 = v189;
  if (v78 == 1)
  {
    outlined destroy of Any?(v191, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
LABEL_13:
    v64 = &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMd;
    v65 = &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSg_ADtMR;
    goto LABEL_14;
  }

  v82 = &v50[v71];
  v83 = v176;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v82, v176, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  LODWORD(v193) = specialized static Proto_Gnss_Emergency_PointUncertainEllipse.== infix(_:_:)(v77, v83);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v83, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  outlined destroy of Any?(v191, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v77, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse);
  outlined destroy of Any?(v50, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMd, &_s10ALProtobuf42Proto_Gnss_Emergency_PointUncertainEllipseVSgMR);
  v76 = v79;
  if ((v193 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v84 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v84, v75, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v85 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v86 = *(v177 + 48);
  v87 = v180;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v180, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v88 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v85, v87 + v86, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v89 = v179;
  v90 = *(v178 + 48);
  if (v90(v87, 1, v179) == 1)
  {
    outlined destroy of Any?(v75, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    v91 = v90(v87 + v86, 1, v89);
    v92 = v181;
    if (v91 == 1)
    {
      outlined destroy of Any?(v88, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
      goto LABEL_27;
    }

LABEL_25:
    v64 = &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMd;
    v65 = &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSg_ADtMR;
LABEL_54:
    v80 = v88;
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87, v76, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  v93 = v90(v87 + v86, 1, v89);
  v92 = v181;
  if (v93 == 1)
  {
    outlined destroy of Any?(v75, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v76, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
    goto LABEL_25;
  }

  v94 = v88 + v86;
  v95 = v171;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v94, v171, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  LODWORD(v193) = specialized static Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid.== infix(_:_:)(v76, v95);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v95, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  outlined destroy of Any?(v75, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v76, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid);
  outlined destroy of Any?(v88, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMd, &_s10ALProtobuf52Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoidVSgMR);
  if ((v193 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v96 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v96, v92, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v97 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v98 = *(v172 + 48);
  v99 = v92;
  v100 = v92;
  v101 = v175;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v99, v175, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v88 = v101;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v97, v101 + v98, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  v102 = v174;
  v103 = *(v173 + 48);
  if (v103(v101, 1, v174) == 1)
  {
    outlined destroy of Any?(v100, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    if (v103(v101 + v98, 1, v102) == 1)
    {
      outlined destroy of Any?(v101, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v104 = v169;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v101, v169, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if (v103(v101 + v98, 1, v102) == 1)
  {
    outlined destroy of Any?(v181, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v104, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
LABEL_32:
    v64 = &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMd;
    v65 = &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSg_ADtMR;
    goto LABEL_54;
  }

  v105 = v101 + v98;
  v106 = v164;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v105, v164, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  v107 = specialized static Proto_Gnss_Emergency_EllipsoidArc.== infix(_:_:)(v104, v106);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v106, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  outlined destroy of Any?(v181, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v104, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc);
  outlined destroy of Any?(v101, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_EllipsoidArcVSgMR);
  if ((v107 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  v108 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v109 = v170;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v108, v170, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v110 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v111 = *(v165 + 48);
  v88 = v168;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v109, v168, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v110, v88 + v111, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v112 = v167;
  v113 = *(v166 + 48);
  if (v113(v88, 1, v167) == 1)
  {
    outlined destroy of Any?(v109, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v113(v88 + v111, 1, v112) == 1)
    {
      outlined destroy of Any?(v88, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v114 = v162;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, v162, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if (v113(v88 + v111, 1, v112) == 1)
  {
    outlined destroy of Any?(v170, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v114, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_39:
    v64 = &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd;
    v65 = &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR;
    goto LABEL_54;
  }

  v115 = v88 + v111;
  v116 = v157;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v115, v157, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v117 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v114, v116, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v116, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Any?(v170, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v114, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  outlined destroy of Any?(v88, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  if ((v117 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_41:
  v118 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v119 = v163;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v118, v163, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v120 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v121 = *(v158 + 48);
  v122 = v161;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v119, v161, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v88 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v120, v122 + v121, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  v123 = v160;
  v124 = *(v159 + 48);
  if (v124(v122, 1, v160) == 1)
  {
    outlined destroy of Any?(v119, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    if (v124(v122 + v121, 1, v123) == 1)
    {
      outlined destroy of Any?(v122, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v125 = v155;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v155, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if (v124(v122 + v121, 1, v123) == 1)
  {
    outlined destroy of Any?(v163, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v125, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
LABEL_46:
    v64 = &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMd;
    v65 = &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSg_ADtMR;
    goto LABEL_54;
  }

  v126 = v122 + v121;
  v127 = v150;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v126, v150, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  v128 = specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(v125, v127, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v127, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Any?(v163, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v125, type metadata accessor for Proto_Gnss_Emergency_PointAltitude);
  outlined destroy of Any?(v122, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_PointAltitudeVSgMR);
  if ((v128 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_48:
  v129 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v130 = v156;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v129, v156, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v131 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v132 = *(v151 + 48);
  v133 = v154;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v130, v154, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v88 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58 + v131, v133 + v132, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  v134 = v153;
  v135 = *(v152 + 48);
  if (v135(v133, 1, v153) == 1)
  {
    outlined destroy of Any?(v130, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      outlined destroy of Any?(v133, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v136 = v149;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v133, v149, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    outlined destroy of Any?(v156, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v136, type metadata accessor for Proto_Gnss_Emergency_Polygon);
LABEL_53:
    v64 = &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMd;
    v65 = &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSg_ADtMR;
    goto LABEL_54;
  }

  v137 = v133 + v132;
  v138 = v148;
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v137, v148, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  v139 = specialized static Proto_Gnss_Emergency_Polygon.== infix(_:_:)(v136, v138);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v138, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  outlined destroy of Any?(v156, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v136, type metadata accessor for Proto_Gnss_Emergency_Polygon);
  outlined destroy of Any?(v133, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMd, &_s10ALProtobuf28Proto_Gnss_Emergency_PolygonVSgMR);
  if ((v139 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_56:
  v140 = (a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation);
  swift_beginAccess();
  v141 = *v140;
  v142 = *(v140 + 4);

  v143 = v58 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  v144 = *v143;
  v145 = *(v143 + 4);

  if (v142)
  {
    if (v145)
    {
      return 1;
    }
  }

  else
  {
    if (v141 == v144)
    {
      v146 = v145;
    }

    else
    {
      v146 = 1;
    }

    if ((v146 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_ShapeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_ShapeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_LocEstimate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
        type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
        lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_ShapeInfo);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  if (*(v5 + *(result + 20)) == 9)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in Proto_Gnss_Emergency_LocEstimate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMd, &_s10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoVSgMR);
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeInfo and conformance Proto_Gnss_Emergency_ShapeInfo, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, &protocol conformance descriptor for Proto_Gnss_Emergency_ShapeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_LocEstimate(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LocEstimate and conformance Proto_Gnss_Emergency_LocEstimate, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, &protocol conformance descriptor for Proto_Gnss_Emergency_LocEstimate);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizontalVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizontalVelocity and conformance Proto_Gnss_Emergency_HorizontalVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizontalVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithVertVelocity and conformance Proto_Gnss_Emergency_HorizWithVertVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithVertVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type Proto_Gnss_Emergency_HorizWithUncertaintyVelocity and conformance Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, &protocol conformance descriptor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}