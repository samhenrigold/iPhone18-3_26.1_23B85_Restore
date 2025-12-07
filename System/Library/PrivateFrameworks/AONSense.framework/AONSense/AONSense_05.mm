uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementExtension(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementExtension);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v77 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v37, v74, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v39 = v73;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v38, v1 + v39, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v41 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v40, v77, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v42 = v75;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v41, v1 + v42, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v49, v85, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v51 = v78;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v50, v1 + v51, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  swift_endAccess();
  v52 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v53 = v87;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v52, v87, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v54 = v79;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v53, v1 + v54, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v56 = v88;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v55, v88, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v57 = v80;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v56, v1 + v57, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  swift_endAccess();
  v58 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v59 = v89;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v58, v89, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v60 = v81;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v59, v1 + v60, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v65, v53, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v66 = v84;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v53, v1 + v66, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v69, v90, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);

  v71 = v86;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v70, v1 + v71, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_Measurement._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_Measurement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Measurement._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_Measurement._StorageClass.init(copying:)(v8);
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
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId;
          goto LABEL_18;
        case 2:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SyncState;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState;
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
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime;
          goto LABEL_18;
        case 7:
        case 12:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset;
          goto LABEL_18;
        case 8:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_PhaseTracking;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking;
          goto LABEL_18;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension;
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementExtension;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension;
          goto LABEL_18;
        case 10:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 11:
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator();
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
          v13 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
          v14 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking;
LABEL_18:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v12, v13);
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

uint64_t CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
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

    closure #6 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #7 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #8 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #9 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__cn0DbHz, 10);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__multipathIndicator, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator, 11, &type metadata for CLP_LogEntry_PrivateData_MultipathIndicator);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #13 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #14 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SyncState and conformance CLP_LogEntry_PrivateData_SyncState, type metadata accessor for CLP_LogEntry_PrivateData_SyncState, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SyncState);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvTime and conformance CLP_LogEntry_PrivateData_SvTime, type metadata accessor for CLP_LogEntry_PrivateData_SvTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvTime);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
}

uint64_t closure #7 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t closure #8 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PhaseTracking and conformance CLP_LogEntry_PrivateData_PhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
}

uint64_t closure #9 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementExtension and conformance CLP_LogEntry_PrivateData_MeasurementExtension, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementExtension);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffset and conformance CLP_LogEntry_PrivateData_FrequencyOffset, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
}

uint64_t closure #13 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__isUsable;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking and conformance CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking, &protocol conformance descriptor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_Measurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v247 = a2;
  v204 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v202 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v199 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMR);
  MEMORY[0x28223BE20](v200);
  v205 = &v199 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v201 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v203 = &v199 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension(0);
  v213 = *(v9 - 8);
  v214 = v9;
  MEMORY[0x28223BE20](v9);
  v209 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMR);
  MEMORY[0x28223BE20](v212);
  v215 = &v199 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v210 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v241 = &v199 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
  v219 = *(v16 - 8);
  v220 = v16;
  MEMORY[0x28223BE20](v16);
  v211 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMR);
  MEMORY[0x28223BE20](v218);
  v221 = &v199 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v216 = &v199 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v237 = &v199 - v22;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v24 = *(v23 - 8);
  v226 = v23;
  v227 = v24;
  MEMORY[0x28223BE20](v23);
  v217 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  v26 = MEMORY[0x28223BE20](v225);
  v208 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v224 = &v199 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v206 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v207 = &v199 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v223 = &v199 - v35;
  MEMORY[0x28223BE20](v34);
  v242 = &v199 - v36;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v230 = *(v37 - 8);
  v231 = v37;
  MEMORY[0x28223BE20](v37);
  v222 = &v199 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  MEMORY[0x28223BE20](v228);
  v232 = &v199 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v229 = &v199 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v233 = &v199 - v43;
  v44 = type metadata accessor for CLP_LogEntry_PrivateData_SyncState(0);
  v239 = *(v44 - 8);
  v240 = v44;
  MEMORY[0x28223BE20](v44);
  v234 = &v199 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMR);
  MEMORY[0x28223BE20](v238);
  v243 = &v199 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v235 = &v199 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v245 = &v199 - v50;
  v246 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v51 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v236 = &v199 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v54 = v53 - 8;
  MEMORY[0x28223BE20](v53);
  v56 = &v199 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v58 = MEMORY[0x28223BE20](v57 - 8);
  v244 = &v199 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v61 = &v199 - v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v63 = a1 + v62;
  v64 = v247;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v61, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v65 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v66 = *(v54 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v56, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v67 = v64 + v65;
  v68 = v246;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v67, &v56[v66], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v69 = *(v51 + 48);
  if (v69(v56, 1, v68) == 1)
  {

    outlined destroy of Any?(v61, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    if (v69(&v56[v66], 1, v68) == 1)
    {
      outlined destroy of Any?(v56, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v71 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd;
    v72 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR;
    v73 = v56;
LABEL_14:
    outlined destroy of Any?(v73, v71, v72);
    goto LABEL_15;
  }

  v70 = v244;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v244, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v69(&v56[v66], 1, v68) == 1)
  {

    outlined destroy of Any?(v61, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v70, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v74 = v236;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v56[v66], v236, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v75 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v70, v74);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v74, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v61, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v70, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v56, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v75 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_8:
  v76 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v77 = v245;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v76, v245, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v78 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__syncState;
  swift_beginAccess();
  v79 = *(v238 + 48);
  v80 = v243;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77, v243, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v81 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v78, v80 + v79, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v82 = v240;
  v83 = *(v239 + 48);
  if (v83(v80, 1, v240) == 1)
  {
    outlined destroy of Any?(v77, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    v84 = v83(v80 + v79, 1, v82);
    v86 = v241;
    v85 = v242;
    v87 = v237;
    if (v84 == 1)
    {
      outlined destroy of Any?(v81, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v88 = v80;
  v89 = v235;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v88, v235, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  v90 = v83(v81 + v79, 1, v82);
  v86 = v241;
  v85 = v242;
  if (v90 == 1)
  {
    outlined destroy of Any?(v245, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
LABEL_13:
    v71 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMd;
    v72 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSg_ADtMR;
    v73 = v81;
    goto LABEL_14;
  }

  v92 = v81 + v79;
  v93 = v234;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, v234, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v94 = *(v82 + 20);
  v95 = *(v89 + v94);
  v96 = *(v93 + v94);
  if (v95 != v96)
  {

    v97 = closure #1 in static CLP_LogEntry_PrivateData_SyncState.== infix(_:_:)(v95, v96);

    if (!v97)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v93, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      outlined destroy of Any?(v245, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
      v73 = v243;
      v71 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd;
      v72 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v93, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  outlined destroy of Any?(v245, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v89, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
  v87 = v237;
  outlined destroy of Any?(v243, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_SyncStateVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v111, v233, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v113 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svTime;
  swift_beginAccess();
  v114 = *(v228 + 48);
  v115 = v232;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v112, v232, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v246 = v114;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v113, v115 + v114, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v116 = v231;
  v245 = *(v230 + 48);
  if ((v245)(v115, 1, v231) == 1)
  {
    outlined destroy of Any?(v112, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    if ((v245)(v115 + v246, 1, v116) == 1)
    {
      outlined destroy of Any?(v115, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      goto LABEL_43;
    }

LABEL_41:
    v71 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
    v72 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
LABEL_49:
    v73 = v115;
    goto LABEL_14;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v115, v229, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v245)(v115 + v246, 1, v116) == 1)
  {
    outlined destroy of Any?(v233, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v229, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_41;
  }

  v117 = v222;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v115 + v246, v222, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v118 = v229;
  LODWORD(v246) = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v229, v117, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v117, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v233, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v118, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v115, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v246 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_43:
  v119 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v119, v85, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v120 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__frequencyOffset;
  swift_beginAccess();
  v121 = *(v225 + 48);
  v122 = v85;
  v123 = v224;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v224, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v115 = v123;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v120, v123 + v121, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v124 = v226;
  v126 = v227 + 48;
  v125 = *(v227 + 48);
  if (v125(v115, 1, v226) == 1)
  {
    outlined destroy of Any?(v242, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if (v125(v115 + v121, 1, v124) == 1)
    {
      v246 = v125;
      v227 = v126;
      outlined destroy of Any?(v115, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v115, v223, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v246 = v125;
  if (v125(v115 + v121, 1, v124) == 1)
  {
    outlined destroy of Any?(v242, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v223, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_48:
    v71 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
    v72 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
    goto LABEL_49;
  }

  v227 = v126;
  v127 = v115 + v121;
  v128 = v217;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v127, v217, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v129 = v223;
  LODWORD(v245) = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v223, v128, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v128, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v242, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v129, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v115, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v245 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_51:
  v130 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v130, v87, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v131 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__phaseTracking;
  swift_beginAccess();
  v132 = *(v218 + 48);
  v133 = v221;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v87, v221, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v131, v133 + v132, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  v134 = v220;
  v135 = *(v219 + 48);
  if (v135(v133, 1, v220) == 1)
  {
    outlined destroy of Any?(v87, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    if (v135(v133 + v132, 1, v134) == 1)
    {
      outlined destroy of Any?(v133, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
      goto LABEL_58;
    }

LABEL_56:
    v71 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMd;
    v72 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSg_ADtMR;
    v73 = v133;
    goto LABEL_14;
  }

  v136 = v216;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v133, v216, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if (v135(v133 + v132, 1, v134) == 1)
  {
    outlined destroy of Any?(v237, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v136, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
    goto LABEL_56;
  }

  v137 = v133 + v132;
  v138 = v211;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v137, v211, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  v139 = specialized static CLP_LogEntry_PrivateData_PhaseTracking.== infix(_:_:)(v136, v138);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v138, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  outlined destroy of Any?(v237, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v136, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
  outlined destroy of Any?(v133, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_PhaseTrackingVSgMR);
  if ((v139 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_58:
  v140 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v140, v86, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v141 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__extension;
  swift_beginAccess();
  v142 = *(v212 + 48);
  v143 = v86;
  v144 = v86;
  v145 = v215;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v143, v215, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v115 = v145;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v141, v145 + v142, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  v146 = v214;
  v147 = *(v213 + 48);
  if (v147(v145, 1, v214) == 1)
  {
    outlined destroy of Any?(v144, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    if (v147(v145 + v142, 1, v146) == 1)
    {
      outlined destroy of Any?(v145, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v148 = v210;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v115, v210, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  if (v147(v115 + v142, 1, v146) == 1)
  {
    outlined destroy of Any?(v241, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
LABEL_63:
    v71 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMd;
    v72 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSg_ADtMR;
    goto LABEL_49;
  }

  v149 = v146;
  v150 = v209;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v115 + v142, v209, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  v151 = *(v149 + 20);
  v152 = *(v148 + v151);
  v153 = *(v150 + v151);
  if (v152 != v153)
  {

    v154 = closure #1 in static CLP_LogEntry_PrivateData_MeasurementExtension.== infix(_:_:)(v152, v153);

    if ((v154 & 1) == 0)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v150, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      outlined destroy of Any?(v241, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
      v73 = v215;
      v71 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd;
      v72 = &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v155 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v150, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  outlined destroy of Any?(v241, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v148, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
  outlined destroy of Any?(v215, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMd, &_s10ALProtobuf45CLP_LogEntry_PrivateData_MeasurementExtensionVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v167, v207, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v169 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffset;
  v170 = v247;
  swift_beginAccess();
  v171 = *(v225 + 48);
  v172 = v168;
  v173 = v208;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v172, v208, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v170 + v169, v173 + v171, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v246)(v173, 1, v226) == 1)
  {
    outlined destroy of Any?(v207, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if ((v246)(v208 + v171, 1, v226) == 1)
    {
      outlined destroy of Any?(v208, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      goto LABEL_86;
    }

LABEL_83:
    outlined destroy of Any?(v208, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
    goto LABEL_15;
  }

  v174 = v208;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v208, v206, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  if ((v246)(v174 + v171, 1, v226) == 1)
  {
    outlined destroy of Any?(v207, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v206, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_83;
  }

  v175 = v208;
  v176 = v208 + v171;
  v177 = v217;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v176, v217, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  v178 = v206;
  v179 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v206, v177, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v177, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v207, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v178, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
  outlined destroy of Any?(v175, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
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
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v156 + v185, v203, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v187 = OBJC_IVAR____TtCV10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__averagedFrequencyOffsetFromPhaseTracking;
  v188 = v247;
  swift_beginAccess();
  v189 = *(v200 + 48);
  v190 = v186;
  v191 = v205;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v190, v205, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v188 + v187, v191 + v189, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  v192 = *(v202 + 48);
  if (v192(v191, 1, v204) == 1)
  {

    outlined destroy of Any?(v203, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    if (v192(v205 + v189, 1, v204) == 1)
    {
      outlined destroy of Any?(v205, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
      return 1;
    }

LABEL_96:
    outlined destroy of Any?(v205, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSg_ADtMR);
    return 0;
  }

  v193 = v205;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v205, v201, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  if (v192(v193 + v189, 1, v204) == 1)
  {

    outlined destroy of Any?(v203, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v201, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
    goto LABEL_96;
  }

  v194 = v205;
  v195 = v205 + v189;
  v196 = v199;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v195, v199, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  v197 = v201;
  v198 = specialized static CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.== infix(_:_:)(v201, v196);

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v196, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  outlined destroy of Any?(v203, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v197, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
  outlined destroy of Any?(v194, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMd, &_s10ALProtobuf57CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTrackingVSgMR);
  return (v198 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Measurement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Measurement);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockModel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }
  }
}

int *CLP_LogEntry_PrivateData_ReceiverClockModel.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
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
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_GpsL2CSyncState.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverClockModel@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockModel);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverClockCorrections.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1 || result == 2)
        {
LABEL_10:
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
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

int *CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
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
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ReceiverClockCorrections.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          goto LABEL_2;
      }
    }
  }
}

int *CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Clock.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockCorrections;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections;
LABEL_5:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockModel;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
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

  closure #2 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockModel and conformance CLP_LogEntry_PrivateData_ReceiverClockModel, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverClockCorrections and conformance CLP_LogEntry_PrivateData_ReceiverClockCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_Clock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion and conformance CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_Clock@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Clock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Clock);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v9, v5, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v6, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  swift_endAccess();
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  v11 = *(a1 + v10);

  swift_beginAccess();
  *(v1 + v8) = v11;

  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementReport._StorageClass.init(copying:)(v8);
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Measurement);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Clock);
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Measurement and conformance CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Measurement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Clock and conformance CLP_LogEntry_PrivateData_Clock, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Clock);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementReport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v16 = a1 + v15;
  v17 = a1;
  v18 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v14, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v19 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v20 = *(v7 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v14, v9, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v9[v20], &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  v23 = *(v18 + 48);
  if (v23(v9, 1, v4) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    if (v23(&v9[v20], 1, v4) == 1)
    {
      outlined destroy of Any?(v9, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
LABEL_9:
      v28 = v22;
      v29 = v17;
      v30 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v31 = *(v29 + v30);
      v32 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v33 = *(v28 + v32);

      v25 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(v31, v33, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, closure #1 in static CLP_LogEntry_PrivateData_Measurement.== infix(_:_:));

      return v25 & 1;
    }

    goto LABEL_6;
  }

  v24 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9, v37, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if (v23(&v9[v20], 1, v4) == 1)
  {

    outlined destroy of Any?(v14, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v24, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
LABEL_6:
    outlined destroy of Any?(v9, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSg_ADtMR);
    goto LABEL_7;
  }

  v26 = v36;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v9[v20], v36, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  v27 = specialized static CLP_LogEntry_PrivateData_Clock.== infix(_:_:)(v24, v26);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v26, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  outlined destroy of Any?(v14, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v24, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  outlined destroy of Any?(v9, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMd, &_s10ALProtobuf30CLP_LogEntry_PrivateData_ClockVSgMR);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:

  v25 = 0;
  return v25 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementReport(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReport);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_Wgs84Ecef(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Wgs84Ecef);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvBandCorrections.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
          goto LABEL_17;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 5)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource();
LABEL_17:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v10 = result;
  if (*(v5 + result[5]) == 13)
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

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_SvBandCorrections.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvBandCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvBandCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
        type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  if (*(v5 + *(result + 20) + 8))
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

  closure #2 in CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_SvPositionAtTime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Wgs84Ecef and conformance CLP_LogEntry_PrivateData_Wgs84Ecef, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &protocol conformance descriptor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_SvPositionAtTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvPositionAtTime);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 2 || result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 4 || result == 5 || result == 6)
    {
      dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PolynomialOrbit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v6 = result;
  if (*(v3 + *(result + 32) + 8))
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

  if ((*(v3 + *(v6 + 36) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v3[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PolynomialOrbit@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  a2[2] = v4;
  result = UnknownStorage.init()();
  v6 = *(a1 + 36);
  v7 = a2 + *(a1 + 32);
  *v7 = 0;
  v7[8] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[8] = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PolynomialOrbit);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_SvInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = swift_allocObject();
    specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(v8);

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
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId;
          goto LABEL_15;
        case 2:
        case 5:
        case 6:
        case 7:
        case 23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_19;
        case 3:
          v16 = v4;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
          goto LABEL_18;
        case 4:
          v17 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
          v19 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvPositionAtTime;
          v20 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime;
          goto LABEL_13;
        case 8:
        case 9:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          v16 = v4;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication();
          goto LABEL_18;
        case 15:
          v17 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections;
          v19 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvBandCorrections;
          v20 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections;
LABEL_13:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v20, v18, v19);
          v4 = v17;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_19;
        case 16:
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_PolynomialOrbit;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit;
LABEL_15:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_19;
        case 24:
          v16 = v4;
          swift_beginAccess();
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
LABEL_18:
          v4 = v16;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
    swift_beginAccess();
    if (*(v8 + v11) != 7)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionAtTime and conformance CLP_LogEntry_PrivateData_SvPositionAtTime, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvPositionAtTime);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v13 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
    swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
    swift_beginAccess();
    if ((*(v15 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM, 8);
    closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds, 9);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 10, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 11, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 12, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 13, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 14, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v16) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvBandCorrections and conformance CLP_LogEntry_PrivateData_SvBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #14 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 18, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 19, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 20, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 21, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5, lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication, 22, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec, 23);
    closure #21 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #12 in closure #1 in CLP_LogEntry_PrivateData_MeasurementExtension.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #14 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PolynomialOrbit and conformance CLP_LogEntry_PrivateData_PolynomialOrbit, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
}

uint64_t closure #11 in closure #1 in CLP_LogEntry_PrivateData_Measurement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 5)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #21 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  result = swift_beginAccess();
  if (*(a1 + v5) != 4)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_SvInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v142 = a2;
  v137 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v132 = (&v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMR);
  MEMORY[0x28223BE20](v134);
  v138 = &v132 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v133 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v136 = &v132 - v8;
  v141 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v132 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v140 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v132 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = v142;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v23 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v24 = *(v12 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19, v14, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v25 = v141;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22 + v23, &v14[v24], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v26 = *(v9 + 48);
  if (v26(v14, 1, v25) == 1)
  {

    outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    if (v26(&v14[v24], 1, v25) == 1)
    {
      outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
    goto LABEL_7;
  }

  v27 = v140;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v14, v140, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v26(&v14[v24], 1, v25) == 1)
  {

    outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v27, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v29 = v139;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v14[v24], v139, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v30 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v27, v29);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v29, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v19, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v27, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v14, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v31 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  if (v33)
  {
    if ((*(v34 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v34 + 8) & 1) != 0 || v32 != *v34)
  {
    goto LABEL_7;
  }

  v35 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v38 = *(v22 + v37);
  if (v36 == 7)
  {
    if (v38 != 7)
    {
      goto LABEL_7;
    }
  }

  else if (v38 == 7 || v36 != v38)
  {
    goto LABEL_7;
  }

  v39 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v42 = *(v22 + v41);

  v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_SvPositionAtTimeV_Tt1g5(v40, v42);

  if ((v43 & 1) == 0)
  {
    goto LABEL_7;
  }

  v44 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  if (v46)
  {
    if ((*(v47 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v47 + 8) & 1) != 0 || v45 != *v47)
  {
    goto LABEL_7;
  }

  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  if (v50)
  {
    if ((*(v51 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v51 + 8) & 1) != 0 || v49 != *v51)
  {
    goto LABEL_7;
  }

  v52 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  if (v54)
  {
    if ((*(v55 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v55 + 8) & 1) != 0 || v53 != *v55)
  {
    goto LABEL_7;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  if (v58)
  {
    if ((*(v59 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v59 + 4) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_7;
  }

  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 4);
  v63 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  if (v62)
  {
    if ((*(v63 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v63 + 4) & 1) != 0 || v61 != *v63)
  {
    goto LABEL_7;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v67 = *(v22 + v66);
  if (v65 == 5)
  {
    if (v67 == 5)
    {
      goto LABEL_52;
    }

LABEL_7:

    return 0;
  }

  if (v67 == 5 || v65 != v67)
  {
    goto LABEL_7;
  }

LABEL_52:
  v68 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v69 = a1;
  v70 = *(a1 + v68);
  v71 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v72 = *(v22 + v71);
  if (v70 == 5)
  {
    if (v72 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v72 == 5 || v70 != v72)
  {
    goto LABEL_7;
  }

  v73 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v76 = *(v22 + v75);
  if (v74 == 5)
  {
    if (v76 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v76 == 5 || v74 != v76)
  {
    goto LABEL_7;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v80 = *(v22 + v79);
  if (v78 == 5)
  {
    if (v80 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v80 == 5 || v78 != v80)
  {
    goto LABEL_7;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v84 = *(v22 + v83);
  if (v82 == 5)
  {
    if (v84 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v84 == 5 || v82 != v84)
  {
    goto LABEL_7;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v88 = *(v22 + v87);

  v89 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf42CLP_LogEntry_PrivateData_SvBandCorrectionsV_Tt1g5(v86, v88);

  if ((v89 & 1) == 0)
  {
    goto LABEL_7;
  }

  v90 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v91 = a1 + v90;
  v92 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v91, v136, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v94 = *(v134 + 48);
  v95 = v92;
  v96 = v138;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v95, v138, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22 + v93, v96 + v94, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v97 = *(v135 + 48);
  if (v97(v96, 1, v137) == 1)
  {
    outlined destroy of Any?(v136, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    if (v97(v138 + v94, 1, v137) == 1)
    {
      outlined destroy of Any?(v138, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
      goto LABEL_81;
    }

LABEL_78:
    outlined destroy of Any?(v138, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSg_ADtMR);
    goto LABEL_7;
  }

  v98 = v138;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v138, v133, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if (v97(v98 + v94, 1, v137) == 1)
  {
    outlined destroy of Any?(v136, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v133, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    goto LABEL_78;
  }

  v99 = v138;
  v100 = v138 + v94;
  v101 = v132;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v100, v132, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v102 = v133;
  v103 = specialized static CLP_LogEntry_PrivateData_PolynomialOrbit.== infix(_:_:)(v133, v101);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v101, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  outlined destroy of Any?(v136, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v102, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  outlined destroy of Any?(v99, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  if ((v103 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_81:
  v104 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v105 = *(v69 + v104);
  v106 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v107 = *(v22 + v106);
  if (v105 == 5)
  {
    if (v107 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v107 == 5 || v105 != v107)
  {
    goto LABEL_7;
  }

  v108 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v109 = *(v69 + v108);
  v110 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v111 = *(v22 + v110);
  if (v109 == 5)
  {
    if (v111 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v111 == 5 || v109 != v111)
  {
    goto LABEL_7;
  }

  v112 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v113 = *(v69 + v112);
  v114 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v115 = *(v22 + v114);
  if (v113 == 5)
  {
    if (v115 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v115 == 5 || v113 != v115)
  {
    goto LABEL_7;
  }

  v116 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v117 = *(v69 + v116);
  v118 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v119 = *(v22 + v118);
  if (v117 == 5)
  {
    if (v119 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v119 == 5 || v117 != v119)
  {
    goto LABEL_7;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v121 = *(v69 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v123 = *(v22 + v122);
  if (v121 == 5)
  {
    if (v123 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v123 == 5 || v121 != v123)
  {
    goto LABEL_7;
  }

  v124 = v69 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v125 = *v124;
  v126 = *(v124 + 8);
  v127 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  if (v126)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v125 != *v127)
  {
    goto LABEL_7;
  }

  v128 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v129 = *(v69 + v128);

  v130 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v131 = *(v22 + v130);

  if (v129 == 4)
  {
    return v131 == 4;
  }

  result = 0;
  if (v131 != 4 && v129 == v131)
  {
    return 1;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SvInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_ReceiverBandCorrections.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_ReceiverBandCorrections.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v6 = result;
  if (*(v3 + result[5]) == 13)
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

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondChange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_LeapSecondChange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LeapSecondChange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondChange);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondChange);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
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

  if (*(v5 + *(v10 + 24)) != 5)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #3 in CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_LeapSecondInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChange and conformance CLP_LogEntry_PrivateData_LeapSecondChange, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondChange);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_LeapSecondInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a2 + v4) = 5;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsToUtcConversion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

int *CLP_LogEntry_PrivateData_GpsToUtcConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsToUtcConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
LABEL_5:
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
    type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsToUtcConversion;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion;
    goto LABEL_5;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
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

  closure #2 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_GpsTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsToUtcConversion and conformance CLP_LogEntry_PrivateData_GpsToUtcConversion, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GpsTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassSubsecondConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4 || result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
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

  if (*(v5 + *(v10 + 28)) != 6)
  {
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  closure #4 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #5 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_GlonassTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 36), v7, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSubsecondConversion and conformance CLP_LogEntry_PrivateData_GlonassSubsecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + a1[7]) = 6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[9];

  return v11(v9, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 1)
    {
      v13 = a4(0);
      a5(v5 + *(v13 + 20), a2, a3);
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_SubSecondConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  v9 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v12);
  v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v12);
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v12);
  swift_beginAccess();
  v14 = *(a1 + 16);
  LOBYTE(v13) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 20) = v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v15, v8, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v9, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v11, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v18 = v24;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v18, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v20 = v25;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v20, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v21, v5, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);

  v22 = v26;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v22, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass.init(copying:)(v8);
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

      if (result <= 3)
      {
        break;
      }

      if (result == 4 || result == 5 || result == 6)
      {
        goto LABEL_18;
      }

LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else
    {
      if (result == 2)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
      }

      else
      {
        if (result != 3)
        {
          goto LABEL_21;
        }

LABEL_18:
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    swift_endAccess();
    goto LABEL_21;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
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
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  closure #2 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #3 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #4 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #5 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  closure #6 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_BeidouTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_BeidouTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v124 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v6 = MEMORY[0x28223BE20](v131);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v121 = &v115 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v123 = &v115 - v12;
  MEMORY[0x28223BE20](v11);
  v129 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v118 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v120 = &v115 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v119 = &v115 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v125 = &v115 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v115 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v127 = &v115 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v126 = &v115 - v28;
  MEMORY[0x28223BE20](v27);
  v135 = &v115 - v29;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v133 = *(v30 - 8);
  v134 = v30;
  MEMORY[0x28223BE20](v30);
  v128 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v32);
  v34 = &v115 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v130 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v115 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  v41 = *(a1 + 20);
  swift_beginAccess();
  v42 = *(a2 + 20);
  if (v41)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v116 = v8;
  v117 = v4;
  v43 = a1;
  v44 = a2;
  v45 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v46 = v43 + v45;
  v47 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v48 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v49 = *(v32 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44 + v48, &v34[v49], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v50 = v134;
  v51 = *(v133 + 6);
  if (v51(v34, 1, v134) == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    v52 = v51(&v34[v49], 1, v50);
    v53 = v43;
    v54 = v117;
    v55 = v135;
    if (v52 == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      goto LABEL_15;
    }

LABEL_12:
    outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
    goto LABEL_29;
  }

  v56 = v44;
  v57 = v130;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v130, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v58 = v51(&v34[v49], 1, v50);
  v55 = v135;
  if (v58 == 1)
  {

    outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  v59 = v128;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v34[v49], v128, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  LODWORD(v134) = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v57, v59);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v59, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v60 = v57;
  v47 = v56;
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v53 = v43;
  outlined destroy of Any?(v34, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v54 = v117;
  if ((v134 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v61 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v134 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v61, v55, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v63 = *(v131 + 48);
  v64 = v129;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v129, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v62, v64 + v63, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v66 = v132 + 48;
  v65 = *(v132 + 48);
  if (v65(v64, 1, v54) == 1)
  {
    outlined destroy of Any?(v55, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v65(v64 + v63, 1, v54) == 1)
    {
      v133 = v65;
      outlined destroy of Any?(v64, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_22;
    }

LABEL_20:
    v68 = v64;
LABEL_28:
    outlined destroy of Any?(v68, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_29;
  }

  v67 = v126;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64, v126, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v65(v64 + v63, 1, v54) == 1)
  {
    outlined destroy of Any?(v135, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v67, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_20;
  }

  v133 = v65;
  v69 = v64 + v63;
  v70 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v69, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v71 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v67, v70);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v70, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v135, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v67, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v54 = v117;
  outlined destroy of Any?(v64, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((v71 & 1) == 0)
  {
LABEL_29:

    return 0;
  }

LABEL_22:
  v132 = v66;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v73 = v134;
  swift_beginAccess();
  v74 = v73 + v72;
  v75 = v127;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v74, v127, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v76 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  v77 = *(v131 + 48);
  v78 = v123;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v75, v123, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v79 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v76, v78 + v77, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v80 = v133;
  if (v133(v78, 1, v54) == 1)
  {
    outlined destroy of Any?(v75, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v81 = v80(v78 + v77, 1, v54);
    v82 = v125;
    if (v81 == 1)
    {
      v83 = v80;
      outlined destroy of Any?(v79, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v84 = v78;
  v85 = v80;
  v86 = v122;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84, v122, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v83 = v85;
  v87 = v85(v79 + v77, 1, v54);
  v82 = v125;
  if (v87 == 1)
  {
    outlined destroy of Any?(v127, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v86, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_27:
    v68 = v79;
    goto LABEL_28;
  }

  v89 = v79 + v77;
  v90 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v89, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v91 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v86, v90);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v90, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v127, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v86, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v79, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((v91 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v93 = v134;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93 + v92, v82, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v94 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  v95 = *(v131 + 48);
  v96 = v121;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v82, v121, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v94, v96 + v95, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v83(v96, 1, v54) == 1)
  {
    outlined destroy of Any?(v82, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v97 = v83(v96 + v95, 1, v54);
    v98 = v134;
    if (v97 == 1)
    {
      outlined destroy of Any?(v96, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v99 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v96, v119, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v83(v96 + v95, 1, v54) == 1)
  {
    outlined destroy of Any?(v125, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v99, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_37:
    outlined destroy of Any?(v96, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_29;
  }

  v100 = v124;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v96 + v95, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v101 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v99, v100);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v100, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v125, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v99, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v96, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v98 = v134;
  if ((v101 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_39:
  v102 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v103 = v120;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v98 + v102, v120, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v104 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v105 = *(v131 + 48);
  v106 = v116;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v103, v116, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v107 = v47 + v104;
  v108 = v106;
  v109 = v117;
  v135 = v105;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v107, v108 + v105, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v83(v108, 1, v109) != 1)
  {
    v110 = v118;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v108, v118, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v111 = v135;
    if (v83(v108 + v135, 1, v109) == 1)
    {

      outlined destroy of Any?(v120, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v110, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      goto LABEL_44;
    }

    v112 = v124;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108 + v111, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v113 = v110;
    v114 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v110, v112);

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v112, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v120, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v113, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v108, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    return (v114 & 1) != 0;
  }

  outlined destroy of Any?(v103, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v83(v108 + v135, 1, v109) != 1)
  {
LABEL_44:
    outlined destroy of Any?(v108, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    return 0;
  }

  outlined destroy of Any?(v108, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BeidouTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 3 || result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion;
          goto LABEL_14;
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
          v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo;
          v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo;
LABEL_14:
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
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

  closure #2 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #3 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #4 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #2 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondInfo and conformance CLP_LogEntry_PrivateData_LeapSecondInfo, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t closure #3 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_GalileoTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if ((*(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_NavicTimeInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SubSecondConversion and conformance CLP_LogEntry_PrivateData_SubSecondConversion, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SubSecondConversion);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_NavicTimeInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_NavicTimeInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v36 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v14, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v14, v1 + v15, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v11, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v11, v1 + v17, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v28 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v27, v37, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v28, v1 + v19, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v30 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v29, v38, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v30, v1 + v21, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v32 = v39;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v31, v39, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);

  v33 = v36;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v32, v1 + v33, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass.init(copying:)(v8);
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
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsTimeInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassTimeInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo;
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
            type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo;
            v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo;
LABEL_7:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v13, v14);
            v4 = v12;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            swift_endAccess();
            break;
          case 4:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo;
            v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo;
            goto LABEL_7;
          case 5:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo;
            v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_NavicTimeInfo;
            v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #3 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #4 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #5 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GpsTimeInfo and conformance CLP_LogEntry_PrivateData_GpsTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassTimeInfo and conformance CLP_LogEntry_PrivateData_GlonassTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BeidouTimeInfo and conformance CLP_LogEntry_PrivateData_BeidouTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
}

uint64_t closure #4 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GalileoTimeInfo and conformance CLP_LogEntry_PrivateData_GalileoTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
}

uint64_t closure #5 in closure #1 in CLP_LogEntry_PrivateData_TimeConversionInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_NavicTimeInfo and conformance CLP_LogEntry_PrivateData_NavicTimeInfo, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_TimeConversionInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v109 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v107);
  v110 = &v105 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v132 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v124 = &v105 - v8;
  v115 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v106 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v113);
  v116 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v117 = &v105 - v14;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v120);
  v123 = &v105 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v119 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v131 = &v105 - v20;
  v129 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v118 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v127);
  v130 = &v105 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v125 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v134 = &v105 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v126 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMR);
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = &v105 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v133 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v105 - v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v39, v38, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v40 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v41 = v135;
  swift_beginAccess();
  v42 = *(v31 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v33, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v40, &v33[v42], &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  v43 = *(v28 + 48);
  if (v43(v33, 1, v27) == 1)
  {

    outlined destroy of Any?(v38, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    if (v43(&v33[v42], 1, v27) == 1)
    {
      outlined destroy of Any?(v33, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v45 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMd;
    v46 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSg_ADtMR;
    v47 = v33;
LABEL_22:
    outlined destroy of Any?(v47, v45, v46);
    goto LABEL_23;
  }

  v44 = v133;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, v133, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if (v43(&v33[v42], 1, v27) == 1)
  {

    outlined destroy of Any?(v38, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    goto LABEL_6;
  }

  v48 = v126;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v33[v42], v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  v49 = specialized static CLP_LogEntry_PrivateData_GpsTimeInfo.== infix(_:_:)(v44, v48);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  outlined destroy of Any?(v38, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  outlined destroy of Any?(v33, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_GpsTimeInfoVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v50 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v51 = v134;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v50, v134, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v52 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v53 = *(v127 + 48);
  v54 = v130;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51, v130, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v52, v54 + v53, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v55 = *(v128 + 48);
  v56 = v129;
  if (v55(v54, 1, v129) == 1)
  {
    outlined destroy of Any?(v51, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    v57 = v55(v54 + v53, 1, v56);
    v58 = v132;
    v59 = v131;
    if (v57 == 1)
    {
      outlined destroy of Any?(v54, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
      goto LABEL_15;
    }

LABEL_13:
    v45 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMd;
    v46 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSg_ADtMR;
LABEL_21:
    v47 = v54;
    goto LABEL_22;
  }

  v60 = v125;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v125, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v61 = v55(v54 + v53, 1, v56);
  v62 = v132;
  v59 = v131;
  if (v61 == 1)
  {
    outlined destroy of Any?(v134, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    goto LABEL_13;
  }

  v63 = v54 + v53;
  v64 = v118;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v63, v118, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v65 = specialized static CLP_LogEntry_PrivateData_GlonassTimeInfo.== infix(_:_:)(v60, v64);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v64, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  outlined destroy of Any?(v134, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  outlined destroy of Any?(v54, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassTimeInfoVSgMR);
  v58 = v62;
  if ((v65 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v66 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v66, v59, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v67 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v68 = *(v120 + 48);
  v54 = v123;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v59, v123, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v67, v54 + v68, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v69 = *(v121 + 48);
  v70 = v122;
  if (v69(v54, 1, v122) == 1)
  {
    outlined destroy of Any?(v59, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    v71 = v69(v54 + v68, 1, v70);
    v72 = v124;
    if (v71 == 1)
    {
      outlined destroy of Any?(v54, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v73 = v119;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v119, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v74 = v69(v54 + v68, 1, v70);
  v72 = v124;
  if (v74 == 1)
  {
    outlined destroy of Any?(v59, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v73, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
LABEL_20:
    v45 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMd;
    v46 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSg_ADtMR;
    goto LABEL_21;
  }

  v76 = v70;
  v77 = v112;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54 + v68, v112, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v78 = *(v76 + 20);
  v79 = *(v73 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = closure #1 in static CLP_LogEntry_PrivateData_BeidouTimeInfo.== infix(_:_:)(v79, v80);

    if (!v81)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v77, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      outlined destroy of Any?(v59, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v119, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      v47 = v54;
      v45 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd;
      v46 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v82 = v59;
  v83 = v119;
  LODWORD(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v77, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  outlined destroy of Any?(v82, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v83, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  outlined destroy of Any?(v54, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoVSgMR);
  v58 = v132;
  if ((v134 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_29:
  v84 = v72;
  v85 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v86 = v117;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v85, v117, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v87 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v88 = *(v113 + 48);
  v89 = v116;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v86, v116, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v87, v89 + v88, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  v90 = *(v114 + 48);
  v91 = v115;
  if (v90(v89, 1, v115) != 1)
  {
    v92 = v111;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v89, v111, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    if (v90(v89 + v88, 1, v91) == 1)
    {
      outlined destroy of Any?(v117, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
      goto LABEL_34;
    }

    v93 = v89 + v88;
    v94 = v106;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v93, v106, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v95 = specialized static CLP_LogEntry_PrivateData_GalileoTimeInfo.== infix(_:_:)(v92, v94);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v94, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    outlined destroy of Any?(v117, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v92, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    outlined destroy of Any?(v89, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
    if (v95)
    {
      goto LABEL_36;
    }

LABEL_23:

    return 0;
  }

  outlined destroy of Any?(v86, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
  if (v90(v89 + v88, 1, v91) != 1)
  {
LABEL_34:
    v45 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMd;
    v46 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSg_ADtMR;
    v47 = v89;
    goto LABEL_22;
  }

  outlined destroy of Any?(v89, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GalileoTimeInfoVSgMR);
LABEL_36:
  v96 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v96, v84, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v97 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v98 = *(v107 + 48);
  v99 = v110;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v84, v110, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v97, v99 + v98, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  v100 = *(v108 + 48);
  v101 = v109;
  if (v100(v99, 1, v109) == 1)
  {

    outlined destroy of Any?(v84, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    if (v100(v99 + v98, 1, v101) == 1)
    {
      outlined destroy of Any?(v99, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
      return 1;
    }

    goto LABEL_42;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v99, v58, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  if (v100(v99 + v98, 1, v101) == 1)
  {

    outlined destroy of Any?(v124, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
LABEL_42:
    outlined destroy of Any?(v99, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSg_ADtMR);
    return 0;
  }

  v102 = v99 + v98;
  v103 = v105;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v102, v105, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v104 = specialized static CLP_LogEntry_PrivateData_NavicTimeInfo.== infix(_:_:)(v58, v103);

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v103, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  outlined destroy of Any?(v124, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  outlined destroy of Any?(v99, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_NavicTimeInfoVSgMR);
  return (v104 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_TimeConversionInfo(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeConversionInfo);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_KlobucharModelParameters.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_13;
          }

          if (result != 2)
          {
            goto LABEL_13;
          }
        }
      }

      else if (result > 9)
      {
        goto LABEL_13;
      }

      type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
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

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  closure #6 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #7 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #8 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #5 in CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #7 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #8 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #9 in CLP_LogEntry_PrivateData_KlobucharModelParameters.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
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
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &protocol conformance descriptor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &protocol conformance descriptor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &protocol conformance descriptor for CLP_LogEntry_PrivateData_KlobucharModelParameters);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_Wgs84Ecef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  if ((*(v4 + *(v7 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SfcfXyz(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SfcfXyz);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
LABEL_5:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
    if (*(v5 + *(v10 + 24)) != 13)
    {
      v11 = v10;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      v10 = v11;
    }

    if (*(v5 + *(v10 + 28)) != 4)
    {
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #4 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 20), v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvId and conformance CLP_LogEntry_PrivateData_SvId, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvId);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t closure #4 in CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 32), v7, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SfcfXyz and conformance CLP_LogEntry_PrivateData_SfcfXyz, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SfcfXyz);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  *(a2 + a1[6]) = 13;
  *(a2 + v6) = 4;
  v7 = a1[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v49 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  v17 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = v17;
  v19 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v51 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  v52 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v53 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v54 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = v17;
  v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v25, v11, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v11, v1 + v12, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v27 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v50, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v28 = v49;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v27, v1 + v28, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v30 = *(a1 + v29);
  swift_beginAccess();
  *(v1 + v16) = v30;

  v31 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v32 = *(a1 + v31);
  swift_beginAccess();
  *(v1 + v18) = v32;

  v33 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v34 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v33, v55, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v35 = v51;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v34, v1 + v35, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  swift_endAccess();
  v36 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  swift_beginAccess();
  *v21 = v37;
  *(v21 + 8) = v36;
  v38 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v52;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v42 = v56;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v41, v56, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v43 = v53;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v42, v1 + v43, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  v45 = *(a1 + v44);

  v46 = v54;
  swift_beginAccess();
  *(v1 + v46) = v45;

  return v1;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass.init(copying:)(v8);
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
        if (result <= 2)
        {
          if (result == 1)
          {
            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp;
            v18 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceivedTimeStamp;
            v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_28;
            }

            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
            v18 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReport;
            v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport;
          }

          goto LABEL_26;
        }

        v12 = v4;
        if (result == 3)
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvInfo;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections;
          v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverBandCorrections;
          v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
            v18 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeConversionInfo;
            v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo;
LABEL_26:
            lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, v17, v18);
            v4 = v16;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_27;
          }

LABEL_23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_27;
        }

        if (result == 7)
        {
          goto LABEL_23;
        }

        if (result == 8)
        {
          v16 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
          v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters;
          v18 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_KlobucharModelParameters;
          v19 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters;
          goto LABEL_26;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
        v14 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
      }

      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_27:
      swift_endAccess();
LABEL_28:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    v10 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvInfo and conformance CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_SvInfo);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v11) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceiverBandCorrections and conformance CLP_LogEntry_PrivateData_ReceiverBandCorrections, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec, 6);
    closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec, 7);
    closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset and conformance CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &protocol conformance descriptor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReceivedTimeStamp and conformance CLP_LogEntry_PrivateData_ReceivedTimeStamp, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &protocol conformance descriptor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReport and conformance CLP_LogEntry_PrivateData_MeasurementReport, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReport);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
}

uint64_t closure #3 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeConversionInfo and conformance CLP_LogEntry_PrivateData_TimeConversionInfo, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &protocol conformance descriptor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
}

uint64_t closure #20 in closure #1 in CLP_LogEntry_PrivateData_SvInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in closure #1 in CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_KlobucharModelParameters and conformance CLP_LogEntry_PrivateData_KlobucharModelParameters, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &protocol conformance descriptor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
}

uint64_t closure #1 in static CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v156 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v134 = *(v3 - 8);
  v135 = v3;
  MEMORY[0x28223BE20](v3);
  v132 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMR);
  MEMORY[0x28223BE20](v133);
  v136 = &v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v138 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v152 = &v132 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v141 = *(v10 - 8);
  v142 = v10;
  MEMORY[0x28223BE20](v10);
  v137 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v140);
  v143 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v139 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v132 - v16;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v149 = *(v17 - 8);
  v150 = v17;
  MEMORY[0x28223BE20](v17);
  v145 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMR);
  MEMORY[0x28223BE20](v148);
  v151 = &v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v147 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v153 = &v132 - v23;
  v154 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v24 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v146 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMR);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v132 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v155 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v132 - v33;
  v35 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  v36 = a1 + v35;
  v37 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, v34, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v38 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v39 = v156;
  swift_beginAccess();
  v40 = *(v27 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v29, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v41 = v39;
  v42 = v154;
  v43 = v41 + v38;
  v44 = v41;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, &v29[v40], &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v45 = *(v24 + 48);
  if (v45(v29, 1, v42) == 1)
  {

    outlined destroy of Any?(v34, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    v46 = v44;
    v47 = v37;
    if (v45(&v29[v40], 1, v42) == 1)
    {
      outlined destroy of Any?(v29, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v48 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMd;
    v49 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSg_ADtMR;
    v50 = v29;
LABEL_15:
    outlined destroy of Any?(v50, v48, v49);
    goto LABEL_16;
  }

  v47 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v155, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if (v45(&v29[v40], 1, v42) == 1)
  {

    outlined destroy of Any?(v34, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v155, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    goto LABEL_6;
  }

  v51 = v146;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v29[v40], v146, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  v52 = v155;
  v53 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v155, v51, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v51, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of Any?(v34, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  v54 = v52;
  v46 = v44;
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  outlined destroy of Any?(v29, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_ReceivedTimeStampVSgMR);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v55 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v56 = v153;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v55, v153, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v57 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v58 = *(v148 + 48);
  v59 = v151;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v56, v151, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v60 = v46 + v57;
  v61 = v59;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60, v59 + v58, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v62 = *(v149 + 48);
  v63 = v59;
  v64 = v150;
  if (v62(v63, 1, v150) == 1)
  {
    outlined destroy of Any?(v56, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    v65 = v62(v61 + v58, 1, v64);
    v66 = v152;
    if (v65 == 1)
    {
      outlined destroy of Any?(v61, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
      goto LABEL_21;
    }

LABEL_13:
    v48 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMd;
    v49 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSg_ADtMR;
LABEL_14:
    v50 = v61;
    goto LABEL_15;
  }

  v67 = v147;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v147, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  v68 = v62(v61 + v58, 1, v64);
  v66 = v152;
  if (v68 == 1)
  {
    outlined destroy of Any?(v56, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v67, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    goto LABEL_13;
  }

  v71 = v145;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v61 + v58, v145, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v72 = *(v64 + 20);
  v73 = *(v67 + v72);
  v74 = *(v71 + v72);
  if (v73 != v74)
  {

    v75 = closure #1 in static CLP_LogEntry_PrivateData_MeasurementReport.== infix(_:_:)(v73, v74);

    if ((v75 & 1) == 0)
    {
      v97 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
      v98 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd;
      v99 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR;
      outlined destroy of Any?(v153, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
      v100 = v147;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v76 = v147;
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  outlined destroy of Any?(v153, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v76, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  outlined destroy of Any?(v61, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportVSgMR);
  if ((v77 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v78 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v79 = *(v47 + v78);
  v80 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v81 = *(v46 + v80);

  v82 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(v79, v81, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, closure #1 in static CLP_LogEntry_PrivateData_SvInfo.== infix(_:_:));

  if ((v82 & 1) == 0)
  {
    goto LABEL_16;
  }

  v83 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v84 = *(v47 + v83);
  v85 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v86 = *(v46 + v85);

  v87 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_ReceiverBandCorrectionsV_Tt1g5(v84, v86);

  if ((v87 & 1) == 0)
  {
    goto LABEL_16;
  }

  v88 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v89 = v144;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v88, v144, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v90 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v91 = *(v140 + 48);
  v92 = v143;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v89, v143, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v93 = v46 + v90;
  v61 = v92;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v93, v92 + v91, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  v94 = *(v141 + 48);
  v95 = v92;
  v96 = v142;
  if (v94(v95, 1, v142) != 1)
  {
    v101 = v139;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61, v139, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    if (v94(v61 + v91, 1, v96) == 1)
    {
      outlined destroy of Any?(v144, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v101, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      goto LABEL_30;
    }

    v102 = v96;
    v103 = v137;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v61 + v91, v137, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v104 = *(v102 + 20);
    v105 = *(v101 + v104);
    v106 = *(v103 + v104);
    if (v105 == v106 || (, , v107 = closure #1 in static CLP_LogEntry_PrivateData_TimeConversionInfo.== infix(_:_:)(v105, v106), , , v107))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v108 = v139;
      v109 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v103, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      outlined destroy of Any?(v144, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v108, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      outlined destroy of Any?(v61, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
      if ((v109 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v97 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v103, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v98 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd;
    v99 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR;
    outlined destroy of Any?(v144, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
    v100 = v139;
LABEL_27:
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v100, v97);
    v50 = v61;
    v48 = v98;
    v49 = v99;
    goto LABEL_15;
  }

  outlined destroy of Any?(v89, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
  if (v94(v61 + v91, 1, v96) != 1)
  {
LABEL_30:
    v48 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMd;
    v49 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSg_ADtMR;
    goto LABEL_14;
  }

  outlined destroy of Any?(v61, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoVSgMR);
LABEL_34:
  v110 = v47 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v111 = *v110;
  v112 = *(v110 + 8);
  v113 = v46 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  if (v112)
  {
    v114 = v138;
    if ((*(v113 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v114 = v138;
    if ((*(v113 + 8) & 1) != 0 || v111 != *v113)
    {
      goto LABEL_16;
    }
  }

  v115 = v47 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 8);
  v118 = v46 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  if (v117)
  {
    if ((*(v118 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v118 + 8) & 1) != 0 || v116 != *v118)
  {
    goto LABEL_16;
  }

  v119 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v119, v66, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v120 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v121 = *(v133 + 48);
  v122 = v136;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66, v136, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v120, v122 + v121, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  v123 = v135;
  v124 = *(v134 + 48);
  if (v124(v122, 1, v135) == 1)
  {
    outlined destroy of Any?(v66, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    if (v124(v122 + v121, 1, v123) == 1)
    {
      outlined destroy of Any?(v122, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
LABEL_52:
      v128 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v129 = *(v47 + v128);
      v130 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v131 = *(v46 + v130);

      v69 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf51CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffsetV_Tt1g5(v129, v131);

      return v69 & 1;
    }

    goto LABEL_50;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v122, v114, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if (v124(v122 + v121, 1, v123) == 1)
  {
    outlined destroy of Any?(v66, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
LABEL_50:
    v48 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMd;
    v49 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSg_ADtMR;
    v50 = v122;
    goto LABEL_15;
  }

  v125 = v122 + v121;
  v126 = v132;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v125, v132, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v127 = specialized static CLP_LogEntry_PrivateData_KlobucharModelParameters.== infix(_:_:)(v114, v126);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v126, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  outlined destroy of Any?(v66, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v114, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  outlined destroy of Any?(v122, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_KlobucharModelParametersVSgMR);
  if (v127)
  {
    goto LABEL_52;
  }

LABEL_16:

  v69 = 0;
  return v69 & 1;
}

Swift::Int CLP_LogEntry_PrivateData_GlonassSlotInfo.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementReportCallbackContents and conformance CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &protocol conformance descriptor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_SignalCorrelationPeakV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - v9;
  v99 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v11 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  v101 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v18 = MEMORY[0x28223BE20](v101);
  v102 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v85 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_71:
    v80 = 0;
    return v80 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v80 = 1;
    return v80 & 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v90 = v10;
  v91 = (v11 + 48);
  v26 = a2 + v24;
  v88 = (v4 + 48);
  v89 = v8;
  v86 = *(v20 + 72);
  v87 = v17;
  v27 = v99;
  v85 = v15;
  v100 = &v85 - v21;
  while (1)
  {
    v97 = v25;
    v28 = v22;
    result = outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v25, v22, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (!v23)
    {
      break;
    }

    v30 = v102;
    v96 = v26;
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v26, v102, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    v31 = v101[5];
    v32 = *(v15 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v28[v31], v17, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30 + v31, &v17[v32], &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
    v33 = *v91;
    if ((*v91)(v17, 1, v27) == 1)
    {
      if (v33(&v17[v32], 1, v27) != 1)
      {
        goto LABEL_64;
      }

      outlined destroy of Any?(v17, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      v34 = v90;
    }

    else
    {
      v35 = v95;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v95, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      if (v33(&v17[v32], 1, v27) == 1)
      {
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
LABEL_64:
        v82 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
        v83 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
LABEL_65:
        v84 = v17;
        goto LABEL_69;
      }

      v36 = v94;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v17[v32], v94, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      v37 = v27[5];
      v38 = (v35 + v37);
      v39 = *(v35 + v37 + 8);
      v40 = (v36 + v37);
      v41 = *(v36 + v37 + 8);
      if (v39)
      {
        v34 = v90;
        if (!v41)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v38 != *v40)
        {
          LOBYTE(v41) = 1;
        }

        v34 = v90;
        if (v41)
        {
LABEL_61:
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v36, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          v82 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd;
          v83 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR;
          goto LABEL_65;
        }
      }

      v42 = v27[6];
      v43 = (v35 + v42);
      v44 = *(v35 + v42 + 8);
      v45 = (v36 + v42);
      v46 = *(v36 + v42 + 8);
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v43 != *v45)
        {
          LOBYTE(v46) = 1;
        }

        if (v46)
        {
          goto LABEL_61;
        }
      }

      v47 = v27[7];
      v48 = *(v35 + v47);
      v49 = *(v36 + v47);
      if (v48 == 2)
      {
        if (v49 != 2)
        {
          goto LABEL_61;
        }
      }

      else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
      {
        goto LABEL_61;
      }

      type metadata accessor for UnknownStorage();
      v50 = v35;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v36, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      outlined destroy of Any?(v17, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      if ((v51 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v52 = v101[6];
    v53 = *(v89 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v100[v52], v34, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v102 + v52, v34 + v53, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    v54 = *v88;
    v55 = v98;
    if ((*v88)(v34, 1, v98) == 1)
    {
      if (v54(v34 + v53, 1, v55) != 1)
      {
        goto LABEL_67;
      }

      outlined destroy of Any?(v34, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      v27 = v99;
      v17 = v87;
    }

    else
    {
      v56 = v93;
      outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v93, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if (v54(v34 + v53, 1, v55) == 1)
      {
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v56, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_67:
        v82 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
        v83 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
LABEL_68:
        v84 = v34;
LABEL_69:
        outlined destroy of Any?(v84, v82, v83);
LABEL_70:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v102, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v100, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        goto LABEL_71;
      }

      v57 = v92;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v34 + v53, v92, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v58 = v55[5];
      v59 = (v56 + v58);
      v60 = *(v56 + v58 + 8);
      v61 = (v57 + v58);
      v62 = *(v57 + v58 + 8);
      if (v60)
      {
        v27 = v99;
        v17 = v87;
        if (!v62)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v59 != *v61)
        {
          LOBYTE(v62) = 1;
        }

        v27 = v99;
        v17 = v87;
        if (v62)
        {
LABEL_62:
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v56, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          v82 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd;
          v83 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR;
          goto LABEL_68;
        }
      }

      v63 = v55[6];
      v64 = (v56 + v63);
      v65 = *(v56 + v63 + 8);
      v66 = (v57 + v63);
      v67 = *(v57 + v63 + 8);
      if (v65)
      {
        if (!v67)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v64 != *v66)
        {
          LOBYTE(v67) = 1;
        }

        if (v67)
        {
          goto LABEL_62;
        }
      }

      v68 = v55[7];
      v69 = *(v56 + v68);
      v70 = *(v57 + v68);
      if (v69 == 2)
      {
        if (v70 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
      {
        goto LABEL_62;
      }

      type metadata accessor for UnknownStorage();
      v71 = v56;
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v71, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of Any?(v34, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if ((v72 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v73 = v101[7];
    v74 = &v100[v73];
    v75 = v100[v73 + 4];
    v76 = (v102 + v73);
    v77 = *(v102 + v73 + 4);
    if (v75)
    {
      if (!v77)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (*v74 != *v76)
      {
        LOBYTE(v77) = 1;
      }

      if (v77)
      {
        goto LABEL_70;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v78 = v100;
    v79 = v102;
    v80 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v79, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v78, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (v80)
    {
      v15 = v85;
      v26 = v96 + v86;
      v25 = v97 + v86;
      v81 = v23-- == 1;
      v22 = v100;
      if (!v81)
      {
        continue;
      }
    }

    return v80 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf41CLP_LogEntry_PrivateData_SvPositionAtTimeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = *(v59 - 1);
  MEMORY[0x28223BE20](v59);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v9 = &v51 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v51 - v15;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v16 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a1 + v17;
  v57 = a2 + v17;
  v53 = v10;
  v54 = (v4 + 48);
  v52 = *(v14 + 72);
  while (1)
  {
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v18, v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v57, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    v19 = *(v10 + 20);
    v20 = (v60 + v19);
    v21 = *(v60 + v19 + 8);
    v22 = &v13[v19];
    if (v21)
    {
      if ((v22[8] & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v22[8] & 1) != 0 || *v20 != *v22)
    {
      goto LABEL_38;
    }

    v23 = *(v10 + 24);
    v24 = *(v55 + 48);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v23, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(&v13[v23], &v9[v24], &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    v25 = *v54;
    if ((*v54)(v9, 1, v59) == 1)
    {
      break;
    }

    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v9, v58, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    if (v25(&v9[v24], 1, v59) == 1)
    {
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      v48 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef;
      v49 = v58;
      goto LABEL_41;
    }

    v26 = &v9[v24];
    v27 = v56;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v26, v56, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    v28 = v59[5];
    v29 = (v58 + v28);
    v30 = *(v58 + v28 + 8);
    v31 = (v27 + v28);
    v32 = *(v27 + v28 + 8);
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v29 != *v31)
      {
        LOBYTE(v32) = 1;
      }

      if (v32)
      {
LABEL_37:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v56, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
LABEL_38:
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        goto LABEL_42;
      }
    }

    v33 = v59[6];
    v34 = (v58 + v33);
    v35 = *(v58 + v33 + 8);
    v36 = (v56 + v33);
    v37 = *(v56 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
        goto LABEL_37;
      }
    }

    v38 = v59[7];
    v39 = (v58 + v38);
    v40 = *(v58 + v38 + 8);
    v41 = (v56 + v38);
    v42 = *(v56 + v38 + 8);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v39 != *v41)
      {
        LOBYTE(v42) = 1;
      }

      if (v42)
      {
        goto LABEL_37;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v43 = v58;
    v51 = v16;
    v44 = v56;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = v51;
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_33:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v46 = v60;
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v46, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    if (v47)
    {
      v10 = v53;
      v57 += v52;
      v18 += v52;
      if (--v16)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  if (v25(&v9[v24], 1, v59) == 1)
  {
    outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
    goto LABEL_33;
  }

  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
  v49 = v60;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
LABEL_41:
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, v48);
  outlined destroy of Any?(v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
LABEL_42:
  v47 = 0;
  return v47 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf42CLP_LogEntry_PrivateData_SvBandCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 13)
        {
          if (v18 != 13)
          {
            goto LABEL_35;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_35;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = v10[v19 + 8];
        v22 = &v7[v19];
        v23 = v7[v19 + 8];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_35:
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            goto LABEL_36;
          }
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 8];
        v27 = &v7[v24];
        v28 = v7[v24 + 8];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_35;
          }
        }

        v29 = v4[8];
        v30 = &v10[v29];
        v31 = v10[v29 + 8];
        v32 = &v7[v29];
        v33 = v7[v29 + 8];
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v30 != *v32)
          {
            LOBYTE(v33) = 1;
          }

          if (v33)
          {
            goto LABEL_35;
          }
        }

        v34 = v4[9];
        v35 = v10[v34];
        v36 = v7[v34];
        if (v35 == 3)
        {
          if (v36 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v35 != v36)
        {
          goto LABEL_35;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        if (v37)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v37 & 1;
      }
    }

    v37 = 1;
  }

  else
  {
LABEL_36:
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf36CLP_LogEntry_PrivateData_MeasurementV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v25 = a5;
  v26 = a3(0);
  v8 = MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v16, v13, a4);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, v10, a4);
        v19 = *(v26 + 20);
        v20 = *&v13[v19];
        v21 = *&v10[v19];
        if (v20 != v21)
        {

          v22 = v25(v20, v21);

          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, a4);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, a4);
        if (v23)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v23 & 1;
      }

      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, a4);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, a4);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_ReceiverBandCorrectionsV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 13)
        {
          if (v18 != 13)
          {
            goto LABEL_31;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_31;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = v10[v19 + 8];
        v22 = &v7[v19];
        v23 = v7[v19 + 8];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_31:
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            goto LABEL_32;
          }
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 4];
        v27 = &v7[v24];
        v28 = v7[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }
        }

        v29 = v4[8];
        v30 = &v10[v29];
        v31 = v10[v29 + 4];
        v32 = &v7[v29];
        v33 = v7[v29 + 4];
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v30 != *v32)
          {
            LOBYTE(v33) = 1;
          }

          if (v33)
          {
            goto LABEL_31;
          }
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        if (v34)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v34 & 1;
      }
    }

    v34 = 1;
  }

  else
  {
LABEL_32:
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf51CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffsetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        v16 = specialized static CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.== infix(_:_:)(v10, v7);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x23EED9A40]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x23EED9A40]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized CLP_LogEntry_PrivateData_SatelliteSystem.init(rawValue:)(uint64_t result)
{
  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 8;
  }

  if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    return 8;
  }

  return result;
}

unint64_t specialized CLP_LogEntry_PrivateData_Band.init(rawValue:)(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized CLP_LogEntry_PrivateData_SvInfo._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v72 - v6;
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v9 = 0;
  *(v9 + 8) = 1;
  v75 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  v72 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  v10 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = MEMORY[0x277D84F90];
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  v76 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  v77 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  v78 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v15 = 0;
  *(v15 + 4) = 1;
  v79 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  v80 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  v81 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  v82 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = v10;
  v17 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v84 = v16;
  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v86 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  v88 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  v90 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v19 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  v74 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v19 = 0;
  *(v19 + 8) = 1;
  v92 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v21 = v73;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v20, v73, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v21, v1 + v7, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  swift_endAccess();
  v22 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds);
  swift_beginAccess();
  v23 = *v22;
  LOBYTE(v22) = *(v22 + 8);
  swift_beginAccess();
  *v9 = v23;
  *(v9 + 8) = v22;
  v24 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v75;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = v72;
  swift_beginAccess();
  *(v1 + v28) = v27;

  v29 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v11 = v30;
  *(v11 + 8) = v29;
  v31 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v12 = v32;
  *(v12 + 8) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v76;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  LODWORD(v34) = *v36;
  LOBYTE(v36) = *(v36 + 4);
  v37 = v77;
  swift_beginAccess();
  *v37 = v34;
  *(v37 + 4) = v36;
  v38 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  LODWORD(v34) = *v38;
  LOBYTE(v38) = *(v38 + 4);
  v39 = v78;
  swift_beginAccess();
  *v39 = v34;
  *(v39 + 4) = v38;
  v40 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + v40);
  v41 = v79;
  swift_beginAccess();
  *(v1 + v41) = v40;
  v42 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  LOBYTE(v42) = *(a1 + v42);
  v43 = v80;
  swift_beginAccess();
  *(v1 + v43) = v42;
  v44 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v81;
  swift_beginAccess();
  *(v1 + v45) = v44;
  v46 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v82;
  swift_beginAccess();
  *(v1 + v47) = v46;
  v48 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v83;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v84;
  swift_beginAccess();
  *(v1 + v52) = v51;

  v53 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v54 = v91;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v53, v91, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  v55 = v85;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v54, v1 + v55, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_PolynomialOrbitVSgMR);
  swift_endAccess();
  v56 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  LOBYTE(v56) = *(a1 + v56);
  v57 = v86;
  swift_beginAccess();
  *(v1 + v57) = v56;
  v58 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  LOBYTE(v58) = *(a1 + v58);
  v59 = v87;
  swift_beginAccess();
  *(v1 + v59) = v58;
  v60 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v88;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  LOBYTE(v62) = *(a1 + v62);
  v63 = v89;
  swift_beginAccess();
  *(v1 + v63) = v62;
  v64 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  LOBYTE(v64) = *(a1 + v64);
  v65 = v90;
  swift_beginAccess();
  *(v1 + v65) = v64;
  v66 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
  swift_beginAccess();
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 8);
  v68 = v74;
  swift_beginAccess();
  *v68 = v67;
  *(v68 + 8) = v66;
  v69 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v69);
  v70 = v92;
  swift_beginAccess();
  *(v1 + v70) = a1;
  return v1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x23EED9A40]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v47 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMR);
  MEMORY[0x28223BE20](v50);
  v53 = &v47 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v54 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v55 = a1;
  v19 = v54[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v21 = v56 + v19;
  v22 = v56;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMd;
    v25 = &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v29 = specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(v14, v11);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  outlined destroy of Any?(v18, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMd, &_s10ALProtobuf29CLP_LogEntry_PrivateData_SvIdVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v54[6];
  v31 = *(v55 + v30);
  v32 = *(v22 + v30);
  if (v31 == 13)
  {
    if (v32 != 13)
    {
      goto LABEL_8;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_8;
  }

  v33 = v54[7];
  v34 = *(v55 + v33);
  v35 = *(v22 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_8;
  }

  v36 = v54[8];
  v37 = *(v50 + 48);
  v38 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55 + v36, v53, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v39 = v22 + v36;
  v40 = v38;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v38 + v37, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  v41 = v52;
  v42 = *(v51 + 48);
  if (v42(v38, 1, v52) == 1)
  {
    if (v42(v38 + v37, 1, v41) == 1)
    {
      outlined destroy of Any?(v38, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
LABEL_26:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_24;
  }

  v43 = v49;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40, v49, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if (v42(v40 + v37, 1, v41) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_24:
    v24 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMd;
    v25 = &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSg_ADtMR;
    v26 = v40;
    goto LABEL_7;
  }

  v44 = v40 + v37;
  v45 = v48;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, v48, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v46 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v43, v45, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v45, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  outlined destroy of Any?(v40, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMd, &_s10ALProtobuf32CLP_LogEntry_PrivateData_SfcfXyzVSgMR);
  if (v46)
  {
    goto LABEL_26;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverClockCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_KlobucharModelParameters.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}