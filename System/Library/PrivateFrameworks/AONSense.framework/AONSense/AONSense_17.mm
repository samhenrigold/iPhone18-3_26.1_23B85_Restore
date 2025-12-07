void Proto_Gnss_Emergency_AssistanceNeededReport.assistanceRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
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
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasAssistanceRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearAssistanceRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMd, &_s10ALProtobuf41Proto_Gnss_Emergency_GpsAssistanceRequestVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v10;
  UnknownStorage.init()();
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
  v15 = a1 + v8[11];
  *v15 = 0;
  v15[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
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
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = v19;
    UnknownStorage.init()();
    v20 = v14 + v9[7];
    *v20 = 0;
    v20[4] = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    v21[4] = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    v22[4] = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    v23[4] = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    v24[4] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  return Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify;
}

void Proto_Gnss_Emergency_AssistanceNeededReport.ganssAssistanceRequest.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
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
      Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_Emergency_AssistanceNeededReport.hasGanssAssistanceRequest.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_AssistanceNeededReport.clearGanssAssistanceRequest()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass.init(copying:)(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v11, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMd, &_s10ALProtobuf43Proto_Gnss_Emergency_GanssAssistanceRequestVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Emergency_EutranCellTime.noOfCells.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EutranCellTime.noOfCells.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_EutranCellTime.clearNoOfCells()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Polygon.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a1(0);
  result = UnknownStorage.init()();
  v5 = a2 + *(v3 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bsic.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bsic.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBsic()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.timeSlot.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.timeSlot.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearTimeSlot()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bitNumber.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.bcchCarrier.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.bcchCarrier.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearBcchCarrier()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.refFrame.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.refFrame.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearRefFrame()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.timingAdvance.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.timingAdvance.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearTimingAdvance()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsGeranCellTime.obitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ClsGeranCellTime.obitNumber.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ClsGeranCellTime.clearObitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_ClsGeranCellTime.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_GpsTowCdmaCellTime.intPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTowCdmaCellTime.intPart.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTowCdmaCellTime.clearIntPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsTowCdmaCellTime.fracPart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsTowCdmaCellTime.fracPart.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsTowCdmaCellTime.clearFracPart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.physicalCellID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.physicalCellID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearPhysicalCellID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.earfcn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.earfcn.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearEarfcn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsEutranCellTime.sfnk.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsEutranCellTime.sfnk.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsEutranCellTime.clearSfnk()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_GpsTowCdmaCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  }

  return Proto_Gnss_Emergency_CtsCdmaCellTime.cdmaTow.modify;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.weekNum.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsCdmaCellTime.weekNum.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsCdmaCellTime.clearWeekNum()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.absoluteRmsAcc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CtsCdmaCellTime.absoluteRmsAcc.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_CtsCdmaCellTime.clearAbsoluteRmsAcc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_CtsCdmaCellTime.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_CellTimeData.eutranTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.eutranTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellTimeData.eutranTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_CtsEutranCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  }

  return Proto_Gnss_Emergency_CellTimeData.eutranTime.modify;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.cdmaTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeData.cdmaTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellTimeData.cdmaTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v9[5];
    v18 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_CtsCdmaCellTimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  }

  return Proto_Gnss_Emergency_CellTimeData.cdmaTime.modify;
}

uint64_t Proto_Gnss_Emergency_UtranGpsTimeMeasured.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
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

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.getter()
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

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellTimeAssistance.cellTimeAssistanceType.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return Proto_Gnss_Emergency_CellTimeAssistance.cellTimeData.modify;
}

uint64_t Proto_Gnss_Emergency_TowAssist.tlmMsg.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.tlmMsg.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearTlmMsg()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.satID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.satID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.antiSpoof.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.antiSpoof.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearAntiSpoof()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.alert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.alert.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearAlert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_TowAssist.tlmReserved.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_TowAssist.tlmReserved.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_TowAssist.clearTlmReserved()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_TowAssist.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsTow.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsWeek.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsTimeUncertainty.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsTimeUncertainty.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.nrOfSats.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.gpsWeekCycleNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.gpsWeekCycleNumber.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearGpsWeekCycleNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.sessionProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.posProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsReferenceTime.sessionID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsReferenceTime.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsReferenceTime.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
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

uint64_t Proto_Gnss_Emergency_ReferenceLocation.shapeType.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.shapeType.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearShapeType()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.hemisphere.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.hemisphere.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearHemisphere()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.altitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.latitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.longitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.directionOfAlt.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.directionOfAlt.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearDirectionOfAlt()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.semiMajorUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.semiMajorUncert.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSemiMajorUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.semiMinorUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.semiMinorUncert.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSemiMinorUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.majorAxis.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.majorAxis.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearMajorAxis()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.altUncert.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.altUncert.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearAltUncert()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ClsEutranCell.bsAlign.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_ReferenceLocation.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.confidence.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.sessionProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.posProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_ReferenceLocation.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.posProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionID.getter()
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

uint64_t Proto_Gnss_Emergency_ReferenceLocation.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_ReferenceLocation.sessionID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_ReferenceLocation.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_Emergency_ReferenceLocation.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_PositionRequest.interval.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.interval.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.clearInterval()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.responseTime.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemM0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemM0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.responseTime.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.clearResponseTime()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemE.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemE.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalAccuracy.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalAccuracy()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityRequested.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemApowerHalf.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemApowerHalf.modify;
}

void Proto_Gnss_Emergency_PositionRequest.velocityRequested.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVelocityRequested()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaA0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaA0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalConfidence.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 52) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalConfidence()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemI0.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemI0.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalAccuracy.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalAccuracy.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 60) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalAccuracy()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalConfidence.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalConfidence.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemW.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemW.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalConfidence.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalConfidence.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 68) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalConfidence()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalRequested.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.verticalRequested.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaDot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemOmegaDot.modify;
}

void Proto_Gnss_Emergency_PositionRequest.verticalRequested.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasVerticalRequested.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 76) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVerticalRequested()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemIodc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemIodc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.assistanceAvailability.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasAssistanceAvailability.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 84) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearAssistanceAvailability()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.requestedGnss.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.requestedGnss.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemToc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemToc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.requestedGnss.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasRequestedGnss.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 92) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearRequestedGnss()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf1.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf1.modify;
}

void Proto_Gnss_Emergency_PositionRequest.locCordinateTypeAllowed.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasLocCordinateTypeAllowed.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 100) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearLocCordinateTypeAllowed()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityTypes.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.velocityTypes.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCrs.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCrs.modify;
}

void Proto_Gnss_Emergency_PositionRequest.velocityTypes.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasVelocityTypes.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 108) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearVelocityTypes()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.reportAmount.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.reportAmount.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemDeltaN.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemDeltaN.modify;
}

void Proto_Gnss_Emergency_PositionRequest.reportAmount.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasReportAmount.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 116) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearReportAmount()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.sessionID.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.sessionID.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCuc.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCuc.modify;
}

void Proto_Gnss_Emergency_PositionRequest.sessionID.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasSessionID.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 124) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearSessionID()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.setter(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCus.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCus.modify;
}

void Proto_Gnss_Emergency_PositionRequest.horizontalAccuracyMeters.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
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

BOOL Proto_Gnss_Emergency_PositionRequest.hasHorizontalAccuracyMeters.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 132) & 1) == 0;
}

uint64_t Proto_Gnss_Emergency_PositionRequest.clearHorizontalAccuracyMeters()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.toe.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.toe.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  *(v6 + 140) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.toe.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.toe.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.toe.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;
  *(v7 + 140) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasToe.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearToe()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 136) = 0;
  *(v4 + 140) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCic.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCic.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 144) = a1;
  *(v6 + 148) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCic.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 144) = v3;
  *(v7 + 148) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCic.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 148) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCic()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 144) = 0;
  *(v4 + 148) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCis.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCis.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 152) = a1;
  *(v6 + 156) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCis.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v3;
  *(v7 + 156) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCis.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 156) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCis()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 152) = 0;
  *(v4 + 156) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 160) = a1;
  *(v6 + 164) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCrc.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 160) = v3;
  *(v7 + 164) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCrc.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 164) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCrc()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 160) = 0;
  *(v4 + 164) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 168) = a1;
  *(v6 + 172) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemIdot.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v3;
  *(v7 + 172) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemIdot.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 172) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemIdot()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 168) = 0;
  *(v4 + 172) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satID.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satID.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 176) = a1;
  *(v6 + 180) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.satID.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.satID.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.satID.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 176) = v3;
  *(v7 + 180) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasSatID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 180) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearSatID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 176) = 0;
  *(v4 + 180) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemUra.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemUra.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 184) = a1;
  *(v6 + 188) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemUra.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 184) = v3;
  *(v7 + 188) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemUra.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 188) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemUra()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 192) = a1;
  *(v6 + 196) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemSvHealth.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 192) = v3;
  *(v7 + 196) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemSvHealth.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 196) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemSvHealth()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 200) = a1;
  *(v6 + 204) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemAf2.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v3;
  *(v7 + 204) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemAf2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 204) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemAf2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 200) = 0;
  *(v4 + 204) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satStatus.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.satStatus.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 208) = a1;
  *(v6 + 212) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.satStatus.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 208) = v3;
  *(v7 + 212) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasSatStatus.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 212) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearSatStatus()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 208) = 0;
  *(v4 + 212) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 216) = a1;
  *(v6 + 220) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemCodeOnL2.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 216) = v3;
  *(v7 + 220) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemCodeOnL2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 220) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemCodeOnL2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 216) = 0;
  *(v4 + 220) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 224) = a1;
  *(v6 + 228) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemL2Pflag.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 224) = v3;
  *(v7 + 228) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemL2Pflag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 228) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemL2Pflag()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 224) = 0;
  *(v4 + 228) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 232) = a1;
  *(v6 + 236) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemTgd.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v3;
  *(v7 + 236) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemTgd.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 236) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemTgd()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 232) = 0;
  *(v4 + 236) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 240) = a1;
  *(v6 + 244) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemFitFlag.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 240) = v3;
  *(v7 + 244) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemFitFlag.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 244) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemFitFlag()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 240) = 0;
  *(v4 + 244) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 248) = a1;
  *(v6 + 252) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.ephemAodo.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 248) = v3;
  *(v7 + 252) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasEphemAodo.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 252) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearEphemAodo()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 248) = 0;
  *(v4 + 252) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved1.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved1.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 256) = a1;
  *(v6 + 260) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved1.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 256) = v3;
  *(v7 + 260) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved1.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 260) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 256) = 0;
  *(v4 + 260) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved2.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved2.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 264) = a1;
  *(v6 + 268) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved2.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 264) = v3;
  *(v7 + 268) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved2.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 268) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 264) = 0;
  *(v4 + 268) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved3.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved3.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 272) = a1;
  *(v6 + 276) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved3.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 272) = v3;
  *(v7 + 276) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved3.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 276) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 272) = 0;
  *(v4 + 276) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved4.getter()
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

uint64_t Proto_Gnss_Emergency_GpsEphemeris.reserved4.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 280) = a1;
  *(v6 + 284) = 0;
  return result;
}

void (*Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  return Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify;
}

void Proto_Gnss_Emergency_GpsEphemeris.reserved4.modify(uint64_t *a1, char a2)
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
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 280) = v3;
  *(v7 + 284) = 0;

  free(v2);
}

BOOL Proto_Gnss_Emergency_GpsEphemeris.hasReserved4.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 284) & 1) == 0;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsEphemeris.clearReserved4()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    specialized Proto_Gnss_Emergency_GpsEphemeris._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  *(v4 + 280) = 0;
  *(v4 + 284) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.nrOfSats.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsNavigationModel.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.sessionProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.posProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsNavigationModel.sessionID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsNavigationModel.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsNavigationModel.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
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

uint64_t Proto_Gnss_Emergency_CplaneConfig.earlyReturnEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CplaneConfig.earlyReturnEnabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 20), v5, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Configuration);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.config.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Proto_Gnss_Emergency_CplaneContext.config.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    v17 = v14 + v9[7];
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_ConfigurationVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  return Proto_Gnss_Emergency_CplaneContext.config.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.cdmaContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  *(a1 + v7[7]) = 2;
  *(a1 + v7[8]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  }

  return result;
}

int *Proto_Gnss_Emergency_Cdma1xContext.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t Proto_Gnss_Emergency_CplaneContext.cdmaContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CplaneContext.cdmaContext.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    *(v14 + v9[6]) = 2;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMd, &_s10ALProtobuf34Proto_Gnss_Emergency_Cdma1xContextVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  return Proto_Gnss_Emergency_CplaneContext.cdmaContext.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.heloEnabled.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_EmergConfig.heloEnabled.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t (*Proto_Gnss_Emergency_EmergConfig.imsi.modify(uint64_t *a1))()
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

  return CLP_LogEntry_PrivateData_XtraFileAvailable.where.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.cplaneConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.cplaneConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EmergConfig.cplaneConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CplaneConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  return Proto_Gnss_Emergency_EmergConfig.cplaneConfig.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.suplConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.suplConfig.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_EmergConfig.suplConfig.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    *(v14 + v9[7]) = 2;
    *(v14 + v9[8]) = 2;
    *(v14 + v9[9]) = 2;
    *(v14 + v9[10]) = 2;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMd, &_s10ALProtobuf31Proto_Gnss_Emergency_SuplConfigVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  }

  return Proto_Gnss_Emergency_EmergConfig.suplConfig.modify;
}

uint64_t Proto_Gnss_Emergency_EmergConfig.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_GpsAcqElement.codePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.codePhase.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.doppler0.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.doppler0.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDoppler0()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.doppler1.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.doppler1.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDoppler1()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncer.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.dopplerUncer.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearDopplerUncer()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.intCodePhase.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.intCodePhase.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearIntCodePhase()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.gpsBitNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.gpsBitNumber.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearGpsBitNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.codePhaseSearchWindow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.codePhaseSearchWindow.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearCodePhaseSearchWindow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.azimuth.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.azimuth.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearAzimuth()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevation.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.elevation.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearElevation()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.satID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.satID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearSatID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.azimuthLsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.azimuthLsb.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearAzimuthLsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.getter()
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

uint64_t Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 64);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.elevationLsb.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqElement.clearElevationLsb()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.getter()
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

uint64_t Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqElement.dopplerUncerExt.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *Proto_Gnss_Emergency_GpsAcqElement.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.gpsTow.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.gpsTow.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearGpsTow()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.nrOfSats.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.nrOfSats.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearNrOfSats()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 32), v5, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 6;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + *(v9 + 20)) = 6;
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMd, &_s10ALProtobuf39Proto_Gnss_Emergency_CellTimeAssistanceVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  return Proto_Gnss_Emergency_GpsAcqAssistance.cellTimeAssistance.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.confidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.confidence.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.sessionProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.getter()
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

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.posProtocol.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.sessionID.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_GpsAcqAssistance.sessionID.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_GpsAcqAssistance.clearSessionID()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_GpsAcqAssistance.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
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

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.getter()
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

uint64_t Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistanceRequest.networkType.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CplaneConfig.init()@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.result.getter()
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

uint64_t Proto_Gnss_Emergency_CellFTAssistance.result.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistance.result.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.networkType.getter()
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

uint64_t Proto_Gnss_Emergency_CellFTAssistance.networkType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_CellFTAssistance.networkType.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.cellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.cellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_CellFTAssistance.cellTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    v18 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMd, &_s10ALProtobuf33Proto_Gnss_Emergency_CellTimeDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return Proto_Gnss_Emergency_CellFTAssistance.cellTime.modify;
}

uint64_t Proto_Gnss_Emergency_CellFTAssistance.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(a1 + v2[5]) = 10;
  *(a1 + v2[6]) = 6;
  v3 = v2[7];
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.latitudeDegrees.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearLatitudeDegrees()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.longitudeDegrees.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearLongitudeDegrees()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_Configuration.targetVerticalUncertaintyM.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.altitudeMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.altitudeMeters.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearAltitudeMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.verUncertMeters.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearVerUncertMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.horzUncertMeters.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearHorzUncertMeters()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.horzConfidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.horzConfidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearHorzConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceLocation.vertConfidence.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceLocation.vertConfidence.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceLocation.clearVertConfidence()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0) + 44);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsTowSeconds.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsTowSeconds.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsTowSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsWeek.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsWeek.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsWeek()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_NetworkReferenceTime.gpsTimeUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_NetworkReferenceTime.gpsTimeUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_NetworkReferenceTime.clearGpsTimeUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.horz.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.horz.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearHorz()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.heading.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.heading.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearHeading()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801VelocityInfo.vertical.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801VelocityInfo.vertical.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801VelocityInfo.clearVertical()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801ClockInfo.bias.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801ClockInfo.bias.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801ClockInfo.clearBias()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801ClockInfo.drift.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801ClockInfo.drift.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801ClockInfo.clearDrift()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801HeightInfo.altitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801HeightInfo.altitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801HeightInfo.clearAltitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801HeightInfo.altitudeUnc.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801HeightInfo.altitudeUnc.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801HeightInfo.clearAltitudeUnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.latitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.latitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.longitude.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.longitude.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncAng.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncAng.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncAng()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncA.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncA.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncA()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.locUncP.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.locUncP.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearLocUncP()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.fixType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.fixType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.fixType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocityIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.velocityIncluded.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 48), v5, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.velocity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.velocity.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 48);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMd, &_s10ALProtobuf38Proto_Gnss_Emergency_Is801VelocityInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.velocity.modify;
}

BOOL Proto_Gnss_Emergency_GanssMeasurements.hasGanssMeasurement.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + *(v12 + 48), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v14;
}

uint64_t Proto_Gnss_Emergency_GanssMeasurements.clearGanssMeasurement()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 48);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clockIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.clockIncluded.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 56), v5, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.clock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.clock.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.clock.modify;
}

BOOL Proto_Gnss_Emergency_Is801LocationInd.hasClock.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 56), v3, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v5 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  return v6;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearClock()()
{
  v1 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 56);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_Is801ClockInfoVSgMR);
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitudeIncluded.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Emergency_Is801LocationInd.altitudeIncluded.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 60);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 64), v5, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Emergency_SLPAddress(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
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
    return outlined destroy of Any?(v5, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.altitude.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  outlined init with take of Proto_Gnss_Emergency_SLPAddress(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_Emergency_Is801LocationInd.altitude.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v14 + *(v9 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v8, v14, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  }

  return Proto_Gnss_Emergency_Is801LocationInd.altitude.modify;
}

void Proto_Gnss_Emergency_SuplInitVer2Extension.eSlpaddress.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    outlined init with copy of Proto_Gnss_Emergency_SLPAddress(v12, v11, a6);
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v12, a6);
  }

  else
  {
    outlined destroy of Any?(v15 + v10, a3, a4);
    outlined init with take of Proto_Gnss_Emergency_SLPAddress(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Proto_Gnss_Emergency_Is801LocationInd.hasAltitude.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 64), v3, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v5 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  return v6;
}

Swift::Void __swiftcall Proto_Gnss_Emergency_Is801LocationInd.clearAltitude()()
{
  v1 = *(type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0) + 64);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMd, &_s10ALProtobuf36Proto_Gnss_Emergency_Is801HeightInfoVSgMR);
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Gnss_Emergency_Is801LocationInd.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a1 + v2[10]) = 4;
  *(a1 + v2[11]) = 2;
  v8 = v2[12];
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  *(a1 + v2[13]) = 2;
  v10 = v2[14];
  v11 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v2[15]) = 2;
  v12 = v2[16];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a1 + v12, 1, 1, v13);
}

void (*Proto_Gnss_Emergency_MeasurementReportWithEstimate.result.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return Proto_Gnss_Emergency_MeasurementReportWithEstimate.result.modify;
}