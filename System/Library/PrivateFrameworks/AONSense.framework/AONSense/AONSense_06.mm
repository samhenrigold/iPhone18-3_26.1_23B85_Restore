uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverBandCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SignalCorrelationPeak.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR);
  MEMORY[0x28223BE20](v49);
  v53 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v19 = *(v50 + 20);
  v20 = *(v16 + 56);
  v54 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v21 = v55 + v19;
  v22 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v24 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMd;
    v25 = &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSg_ADtMR;
    v26 = v18;
LABEL_14:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  v27 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
  outlined destroy of Any?(v18, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMd, &_s10ALProtobuf31CLP_LogEntry_PrivateData_SvTimeVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v28 = v50;
  v29 = *(v50 + 24);
  v30 = *(v49 + 48);
  v32 = v53;
  v31 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v29, v53, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22 + v29, v32 + v30, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
  v33 = v52;
  v34 = *(v51 + 48);
  if (v34(v32, 1, v52) != 1)
  {
    v35 = v48;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32, v48, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
    if (v34(v32 + v30, 1, v33) != 1)
    {
      v38 = v32 + v30;
      v39 = v47;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v38, v47, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v40 = specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(v35, v39, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v39, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v35, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      outlined destroy of Any?(v32, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v35, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
    goto LABEL_13;
  }

  if (v34(v32 + v30, 1, v33) != 1)
  {
LABEL_13:
    v24 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMd;
    v25 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSg_ADtMR;
    v26 = v32;
    goto LABEL_14;
  }

  outlined destroy of Any?(v32, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_FrequencyOffsetVSgMR);
LABEL_18:
  v41 = *(v28 + 28);
  v42 = (v31 + v41);
  v43 = *(v31 + v41 + 4);
  v44 = (v22 + v41);
  v45 = *(v22 + v41 + 4);
  if (v43)
  {
    if (v45)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_15:
  v36 = 0;
  return v36 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvMeasurementUsage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GpsToUtcConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoE5SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = *(a1 + v17);
  v19 = *(a2 + v17);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    return 0;
  }

  v20 = v4[10];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v23 = v4[11];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[12];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else if (v28 == 2 || ((v27 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v29 = v4[13];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    return 0;
  }

  v32 = v4[14];
  v33 = *(a1 + v32);
  v34 = *(a2 + v32);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvBandCorrections.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 13)
  {
    if (v7 != 13)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvPositionAtTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v21, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20 + v21, &v13[v22], &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
LABEL_12:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  v26 = specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_Wgs84EcefVSgMR);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SbasL1SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PolynomialOrbit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v5 = *(v4 + 32);
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

  v10 = *(v4 + 36);
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(*a1, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(a1[2], a2[2]))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassL1fSyncState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  v18 = v5[9];
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

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 + 20);
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

  v10 = *(v4 + 24);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_31;
    }
  }

  v26 = v20[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_31;
    }
  }

  v31 = v20[7];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 6)
  {
    if (v33 != 6)
    {
      goto LABEL_31;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_31;
  }

  v52 = v11;
  v54 = v20;
  v56 = v5;
  v34 = v20[8];
  v35 = *(v14 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v34, v19, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v36 = a2 + v34;
  v37 = v56;
  v55 = v35;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v36, &v19[v35], &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v40 = *(v37 + 48);
  v39 = v37 + 48;
  v38 = v40;
  v41 = v40(v19, 1, v4);
  v53 = v40;
  if (v41 != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19, v13, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
    if (v38(&v19[v55], 1, v4) != 1)
    {
      v56 = v39;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v19[v55], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      v43 = specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(v13, v7);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
      outlined destroy of Any?(v19, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v13, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_22:
    v42 = v19;
LABEL_30:
    outlined destroy of Any?(v42, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSg_ADtMR);
    goto LABEL_31;
  }

  if (v38(&v19[v55], 1, v4) != 1)
  {
    goto LABEL_22;
  }

  v56 = v39;
  outlined destroy of Any?(v19, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
LABEL_24:
  v44 = v54[9];
  v45 = *(v14 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v44, v17, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v44, &v17[v45], &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  v46 = v53;
  if (v53(v17, 1, v4) == 1)
  {
    if (v46(&v17[v45], 1, v4) == 1)
    {
      outlined destroy of Any?(v17, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
LABEL_34:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v48 & 1;
    }

    goto LABEL_29;
  }

  v47 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v52, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if (v46(&v17[v45], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v47, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
LABEL_29:
    v42 = v17;
    goto LABEL_30;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v17[v45], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  v50 = specialized static CLP_LogEntry_PrivateData_GlonassSubsecondConversion.== infix(_:_:)(v47, v7);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v47, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  outlined destroy of Any?(v17, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMd, &_s10ALProtobuf51CLP_LogEntry_PrivateData_GlonassSubsecondConversionVSgMR);
  if (v50)
  {
    goto LABEL_34;
  }

LABEL_31:
  v48 = 0;
  return v48 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v60 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v69);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v60 - v13;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v25 = *(v24 + 20);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v62 = v24;
  v63 = v4;
  v60 = v6;
  v30 = *(v24 + 24);
  v31 = a1;
  v32 = *(v21 + 48);
  v61 = v31;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31 + v30, v23, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v33 = a2 + v30;
  v34 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33, &v23[v32], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v35 = *(v15 + 48);
  if (v35(v23, 1, v14) == 1)
  {
    v36 = v35(&v23[v32], 1, v14);
    v37 = v63;
    if (v36 == 1)
    {
      outlined destroy of Any?(v23, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v39 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd;
    v40 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR;
    v41 = v23;
LABEL_25:
    outlined destroy of Any?(v41, v39, v40);
    goto LABEL_26;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v38 = v35(&v23[v32], 1, v14);
  v37 = v63;
  if (v38 == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v20, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v23[v32], v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v42 = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v20, v17);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v20, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  outlined destroy of Any?(v23, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  v43 = v61;
  v44 = *(v62 + 28);
  v45 = *(v69 + 48);
  v46 = v67;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v61 + v44, v67, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34 + v44, v46 + v45, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v47 = *(v68 + 48);
  if (v47(v46, 1, v37) == 1)
  {
    if (v47(v46 + v45, 1, v37) != 1)
    {
LABEL_24:
      v39 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd;
      v40 = &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR;
      v41 = v46;
      goto LABEL_25;
    }

    outlined destroy of Any?(v46, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_19:
    v52 = *(v62 + 32);
    v53 = *(v69 + 48);
    v54 = v65;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43 + v52, v65, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    v55 = v34 + v52;
    v46 = v54;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v55, v54 + v53, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v47(v54, 1, v37) == 1)
    {
      if (v47(v54 + v53, 1, v37) == 1)
      {
        outlined destroy of Any?(v54, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_29:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v56 & 1;
      }

      goto LABEL_24;
    }

    v48 = v64;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v64, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v47(v54 + v53, 1, v37) == 1)
    {
      goto LABEL_23;
    }

    v58 = v60;
    outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v54 + v53, v60, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v59 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v48, v58);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    outlined destroy of Any?(v54, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v59)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v48 = v66;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46, v66, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v47(v46 + v45, 1, v37) == 1)
  {
LABEL_23:
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_24;
  }

  v49 = v46 + v45;
  v50 = v60;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, v60, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v51 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v48, v50);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v50, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v48, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  outlined destroy of Any?(v46, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  if (v51)
  {
    goto LABEL_19;
  }

LABEL_26:
  v56 = 0;
  return v56 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PhaseTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking(0);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_NavicTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v29 = a1;
  v14 = *(v28 + 20);
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v27;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v15], v27, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      v20 = specialized static CLP_LogEntry_PrivateData_SubSecondConversion.== infix(_:_:)(v9, v19);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      outlined destroy of Any?(v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v9, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMd, &_s10ALProtobuf44CLP_LogEntry_PrivateData_SubSecondConversionVSgMR);
LABEL_10:
  v21 = *(v28 + 24);
  v22 = (v29 + v21);
  v23 = *(v29 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (v25)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LeapSecondChange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 + 20);
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

  v10 = *(v4 + 24);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_17;
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
      goto LABEL_17;
    }
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 5)
  {
    if (v22 != 5)
    {
      goto LABEL_17;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_17;
  }

  v23 = v14[7];
  v24 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v13, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v25 = a2 + v23;
  v26 = v24;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, &v13[v24], &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
LABEL_20:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_16;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
LABEL_16:
    outlined destroy of Any?(v13, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSg_ADtMR);
    goto LABEL_17;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v26], v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  v30 = specialized static CLP_LogEntry_PrivateData_LeapSecondChange.== infix(_:_:)(v10, v7);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  outlined destroy of Any?(v13, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_LeapSecondChangeVSgMR);
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_17:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GpsTimeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v52 = &v46 - v10;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v22 = *(v21 + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_21;
    }
  }

  v46 = v6;
  v53 = a2;
  v27 = *(v21 + 24);
  v28 = a1;
  v29 = *(v18 + 48);
  v47 = v28;
  v48 = v21;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v27, v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v27, &v20[v29], &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v30 = *(v12 + 48);
  if (v30(v20, 1, v11) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v17, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
    if (v30(&v20[v29], 1, v11) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v20[v29], v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      v34 = specialized static CLP_LogEntry_PrivateData_LeapSecondInfo.== infix(_:_:)(v17, v14);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v14, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      outlined destroy of Any?(v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
      if ((v34 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v17, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
LABEL_12:
    v31 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMd;
    v32 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSg_ADtMR;
    v33 = v20;
LABEL_20:
    outlined destroy of Any?(v33, v31, v32);
    goto LABEL_21;
  }

  if (v30(&v20[v29], 1, v11) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of Any?(v20, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
LABEL_14:
  v35 = *(v48 + 28);
  v36 = *(v9 + 48);
  v37 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47 + v35, v52, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v53 + v35, v37 + v36, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  v38 = v51;
  v39 = *(v50 + 48);
  if (v39(v37, 1, v51) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_19;
  }

  v40 = v49;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v49, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v40, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
LABEL_19:
    v31 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMd;
    v32 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSg_ADtMR;
    v33 = v37;
    goto LABEL_20;
  }

  v43 = v37 + v36;
  v44 = v46;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v43, v46, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  v45 = specialized static CLP_LogEntry_PrivateData_GpsToUtcConversion.== infix(_:_:)(v40, v44);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v40, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  outlined destroy of Any?(v37, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_GpsToUtcConversionVSgMR);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_21:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FullSvTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime(0);
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
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GalileoE1SyncState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = v5[6];
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = v5[8];
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceivedTimeStamp.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 8);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FrequencyOffset.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MeasurementReportCallbackContents.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReceiverClockModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Clock.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v64 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMR);
  MEMORY[0x28223BE20](v70);
  v10 = &v64 - v9;
  v11 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v64 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMR);
  MEMORY[0x28223BE20](v74);
  v77 = &v64 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMR);
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v27 = *(v26 + 20);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_28;
    }
  }

  v64 = v6;
  v65 = v10;
  v32 = *(v26 + 24);
  v33 = *(v23 + 48);
  v66 = a1;
  v67 = v26;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v32, v25, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v34 = a2 + v32;
  v35 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, &v25[v33], &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  v36 = *(v17 + 48);
  if (v36(v25, 1, v16) == 1)
  {
    if (v36(&v25[v33], 1, v16) == 1)
    {
      outlined destroy of Any?(v25, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
      goto LABEL_14;
    }

LABEL_12:
    v37 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMd;
    v38 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSg_ADtMR;
    v39 = v25;
LABEL_27:
    outlined destroy of Any?(v39, v37, v38);
    goto LABEL_28;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v22, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if (v36(&v25[v33], 1, v16) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
    goto LABEL_12;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v25[v33], v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  v40 = specialized static CLP_LogEntry_PrivateData_ReceiverClockModel.== infix(_:_:)(v22, v19);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v19, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v22, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  outlined destroy of Any?(v25, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_ReceiverClockModelVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v41 = v66;
  v42 = *(v67 + 28);
  v43 = *(v74 + 48);
  v44 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v66 + v42, v77, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v35 + v42, v44 + v43, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
  v45 = v76;
  v46 = *(v75 + 48);
  if (v46(v44, 1, v76) != 1)
  {
    v49 = v73;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v73, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
    v50 = v46(v44 + v43, 1, v45);
    v48 = v65;
    if (v50 != 1)
    {
      v51 = v44 + v43;
      v52 = v69;
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v51, v69, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      v53 = specialized static CLP_LogEntry_PrivateData_ReceiverClockCorrections.== infix(_:_:)(v49, v52);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v52, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
      outlined destroy of Any?(v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
      if ((v53 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v49, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
    goto LABEL_19;
  }

  v47 = v46(v44 + v43, 1, v45);
  v48 = v65;
  if (v47 != 1)
  {
LABEL_19:
    v37 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMd;
    v38 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSg_ADtMR;
    v39 = v44;
    goto LABEL_27;
  }

  outlined destroy of Any?(v44, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_ReceiverClockCorrectionsVSgMR);
LABEL_21:
  v54 = *(v67 + 32);
  v55 = *(v70 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v41 + v54, v48, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v35 + v54, v48 + v55, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  v56 = v72;
  v57 = *(v71 + 48);
  if (v57(v48, 1, v72) == 1)
  {
    if (v57(v48 + v55, 1, v56) == 1)
    {
      outlined destroy of Any?(v48, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
LABEL_31:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v59 & 1;
    }

    goto LABEL_26;
  }

  v58 = v68;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v68, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if (v57(v48 + v55, 1, v56) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
LABEL_26:
    v37 = &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMd;
    v38 = &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSg_ADtMR;
    v39 = v48;
    goto LABEL_27;
  }

  v61 = v48 + v55;
  v62 = v64;
  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(v61, v64, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  v63 = specialized static CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion.== infix(_:_:)(v58, v62);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v62, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v58, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  outlined destroy of Any?(v48, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMd, &_s10ALProtobuf52CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversionVSgMR);
  if (v63)
  {
    goto LABEL_31;
  }

LABEL_28:
  v59 = 0;
  return v59 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v21, v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20 + v21, &v13[v22], &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
LABEL_12:
    outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  v26 = specialized static CLP_LogEntry_PrivateData_GlonassSlotInfo.== infix(_:_:)(v10, v7);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo);
  outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_GlonassSlotInfoVSgMR);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ConstellationId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassId(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a1;
  v21 = a2;
  v22 = *(v14 + 24);
  v23 = *(v11 + 48);
  v53 = v20;
  v54 = v14;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20 + v22, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v13[v23], &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
    if (v24(&v13[v23], 1, v4) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v23], v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      v27 = specialized static CLP_LogEntry_PrivateData_GlonassId.== infix(_:_:)(v10, v7);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
LABEL_12:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSg_ADtMR);
    goto LABEL_13;
  }

  if (v24(&v13[v23], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_GlonassIdVSgMR);
LABEL_16:
  v28 = v54[7];
  v29 = (v53 + v28);
  v30 = *(v53 + v28 + 4);
  v31 = (v21 + v28);
  v32 = *(v21 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v33 = v54[8];
  v34 = (v53 + v33);
  v35 = *(v53 + v33 + 4);
  v36 = (v21 + v33);
  v37 = *(v21 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v38 = v54[9];
  v39 = (v53 + v38);
  v40 = *(v53 + v38 + 4);
  v41 = (v21 + v38);
  v42 = *(v21 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v43 = v54[10];
  v44 = (v53 + v43);
  v45 = *(v53 + v43 + 4);
  v46 = (v21 + v43);
  v47 = *(v21 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_13;
    }
  }

  v48 = v54[11];
  v49 = (v53 + v48);
  v50 = *(v53 + v48 + 4);
  v51 = (v21 + v48);
  v52 = *(v21 + v48 + 4);
  if ((v50 & 1) == 0)
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_13;
    }

LABEL_46:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v25 & 1;
  }

  if (v52)
  {
    goto LABEL_46;
  }

LABEL_13:
  v25 = 0;
  return v25 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SvId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v15 = *(v14 + 20);
  v28 = a1;
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_13;
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
      goto LABEL_13;
    }
  }

  v20 = a2;
  v21 = *(v14 + 24);
  v22 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v28 + v21, v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20 + v21, &v13[v22], &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v22], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_12;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if (v23(&v13[v22], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
LABEL_12:
    outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSg_ADtMR);
    goto LABEL_13;
  }

  outlined init with take of CLP_LogEntry_PrivateData_GlonassSlotInfo(&v13[v22], v7, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  v26 = specialized static CLP_LogEntry_PrivateData_ConstellationId.== infix(_:_:)(v10, v7);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v7, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  outlined destroy of CLP_LogEntry_PrivateData_GlonassSlotInfo(v10, type metadata accessor for CLP_LogEntry_PrivateData_ConstellationId);
  outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_ConstellationIdVSgMR);
  if (v26)
  {
    goto LABEL_16;
  }

LABEL_13:
  v24 = 0;
  return v24 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GlonassSlotInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotInfo and conformance CLP_LogEntry_PrivateData_GlonassSlotInfo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassSlotSource and conformance CLP_LogEntry_PrivateData_GlonassSlotSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SatelliteSystem and conformance CLP_LogEntry_PrivateData_SatelliteSystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Band and conformance CLP_LogEntry_PrivateData_Band);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_FullSvTimeSource and conformance CLP_LogEntry_PrivateData_FullSvTimeSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MeasurementDetectionMethod and conformance CLP_LogEntry_PrivateData_MeasurementDetectionMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MultipathIndicator and conformance CLP_LogEntry_PrivateData_MultipathIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvPositionSource and conformance CLP_LogEntry_PrivateData_SvPositionSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvHealthIndication and conformance CLP_LogEntry_PrivateData_SvHealthIndication);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IonosphericCorrectionSource and conformance CLP_LogEntry_PrivateData_IonosphericCorrectionSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge and conformance CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated and conformance CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SvReferencePoint and conformance CLP_LogEntry_PrivateData_SvReferencePoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_SatelliteSystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_SatelliteSystem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_Band(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CLP_LogEntry_PrivateData_GlonassSlotSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CLP_LogEntry_PrivateData_GlonassSlotSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_ConstellationId(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassId?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassId);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvPositionAtTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, a6, a7);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsL1SyncState(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsL2CSyncState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GalileoE5SyncState(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_234Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_235Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_324Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_325Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_PhaseTracking(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SignalCorrelationPeak(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvTime?, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffset?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SbasL1SyncState(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for CLP_LogEntry_PrivateData_SyncState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_351Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_352Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverClockModel(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Clock(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverClockModel?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverClockCorrections?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion?, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvBandCorrections(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource?, &type metadata for CLP_LogEntry_PrivateData_IonosphericCorrectionSource, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_207Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + *(a3 + 24);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_208Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = *(*(v16 - 8) + 56);
    v18 = a1 + *(a4 + 24);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_PolynomialOrbit(uint64_t a1)
{
  type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for [Double], MEMORY[0x277D839F8], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_ReceiverBandCorrections(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GlonassSlotInfo(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  type metadata accessor for UnknownStorage();
  if (v11 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v12 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, a6, a7, MEMORY[0x277D83D88]);
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_LeapSecondInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge?, &type metadata for CLP_LogEntry_PrivateData_LeapSecondChangeKnowledge, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondChange?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsToUtcConversion(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GpsTimeInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsToUtcConversion?, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_GlonassTimeInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated?, &type metadata for CLP_LogEntry_PrivateData_GlonassLeapSecondDeprecated, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassSubsecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SubSecondConversion(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_531Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 28);

  return v19(v20, a2, v18);
}

uint64_t __swift_store_extra_inhabitant_index_532Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for UnknownStorage();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_LeapSecondInfoVSgMR);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 28);

  return v21(v22, a2, a2, v20);
}

void type metadata completion function for CLP_LogEntry_PrivateData_GalileoTimeInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_NavicTimeInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_KlobucharModelParameters(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for Float?, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Band?, &type metadata for CLP_LogEntry_PrivateData_Band, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvReferencePoint?, &type metadata for CLP_LogEntry_PrivateData_SvReferencePoint, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SfcfXyz?, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SyncState._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL1SyncState);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL2CSyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL2CSyncState);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsL5SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GpsL5SyncState);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassL1fSyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassL1fSyncState);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouB1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB1SyncState);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouB2SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouB2SyncState);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoE1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE1SyncState);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoE5SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoE5SyncState);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SbasL1SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_SbasL1SyncState);
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementExtension._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FullSvTime?, type metadata accessor for CLP_LogEntry_PrivateData_FullSvTime);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvMeasurementUsage?, type metadata accessor for CLP_LogEntry_PrivateData_SvMeasurementUsage);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_Measurement._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SyncState?, type metadata accessor for CLP_LogEntry_PrivateData_SyncState);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvTime?, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffset?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PhaseTracking?, type metadata accessor for CLP_LogEntry_PrivateData_PhaseTracking);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MeasurementExtension?, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementExtension);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking?, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_Clock?, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_SvInfo._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SvId?, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PolynomialOrbit?, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_LeapSecondInfo?, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_SubSecondConversion?, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GpsTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GlonassTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_BeidouTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_GalileoTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_NavicTimeInfo?, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata completion function for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(uint64_t a1)
{
  type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_ReceivedTimeStamp?, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_MeasurementReport?, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_TimeConversionInfo?, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSlotInfo?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_KlobucharModelParameters?, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t CLP_LogEntry_LogEntry.eventRecordTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
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
  v12 = a1 + v7[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  }

  return result;
}

int *CLP_LogEntry_LogEntry.TimeStamp.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
  return result;
}

uint64_t CLP_LogEntry_LogEntry.eventRecordTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_LogEntry.eventRecordTime.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
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
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  }

  return CLP_LogEntry_LogEntry.eventRecordTime.modify;
}

BOOL CLP_LogEntry_LogEntry.hasEventRecordTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 24), v3, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  return v6;
}

Swift::Void __swiftcall CLP_LogEntry_LogEntry.clearEventRecordTime()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 24);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t CLP_LogEntry_LogEntry.privateDataCapture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 28), v5, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v5, a1, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  CLP_LogEntry_PrivateData_PrivateDataCapture.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  }

  return result;
}

uint64_t outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CLP_LogEntry_LogEntry.privateDataCapture.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*CLP_LogEntry_LogEntry.privateDataCapture.modify(void *a1))(uint64_t **a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    CLP_LogEntry_PrivateData_PrivateDataCapture.init()(v14);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
    }
  }

  else
  {
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v8, v14, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  }

  return CLP_LogEntry_LogEntry.privateDataCapture.modify;
}

void CLP_LogEntry_LogEntry.eventRecordTime.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of CLP_LogEntry_LogEntry.TimeStamp(v11, v10, a5);
    outlined destroy of Any?(v14 + v9, a3, a4);
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v11, a5);
  }

  else
  {
    outlined destroy of Any?(v14 + v9, a3, a4);
    outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t outlined init with copy of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL CLP_LogEntry_LogEntry.hasPrivateDataCapture.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 28), v3, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  return v6;
}

Swift::Void __swiftcall CLP_LogEntry_LogEntry.clearPrivateDataCapture()()
{
  v1 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 28);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

double CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.cfAbsoluteTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearCfAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.machAbsoluteTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearMachAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.getter()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearMachContinuousTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.getter()
{
  v1 = (v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_LogEntry.TimeStamp.pipelinedMonotonicTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_LogEntry.TimeStamp.clearPipelinedMonotonicTimeNs()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_LogEntry.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  ExtensionFieldValueSet.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 28);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t variable initialization expression of CLP_LogEntry_LogEntry._eventRecordTime@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t CLP_LogEntry_LogEntry._protobuf_extensionFieldValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CLP_LogEntry_LogEntry._protobuf_extensionFieldValues.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_LogEntry(0) + 20);
  v4 = type metadata accessor for ExtensionFieldValueSet();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t protocol witness for ExtensibleMessage._protobuf_extensionFieldValues.getter in conformance CLP_LogEntry_LogEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ExtensibleMessage._protobuf_extensionFieldValues.setter in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for ExtensionFieldValueSet();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CLP_LogEntry_LogEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 4)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_LogEntry(0);
        lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);
        dispatch thunk of Decoder.decodeExtensionField(values:messageType:fieldNumber:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_LogEntry(0);
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp;
        v8 = &protocol conformance descriptor for CLP_LogEntry_LogEntry.TimeStamp;
        v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp;
LABEL_12:
        lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_LogEntry(0);
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture;
    v8 = &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture;
    v9 = &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture;
    goto LABEL_12;
  }

  return result;
}

uint64_t CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = closure #1 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(v5, a1, a2, a3);
  if (!v4)
  {
    type metadata accessor for CLP_LogEntry_LogEntry(0);
    dispatch thunk of Visitor.visitExtensionFields(fields:start:end:)();
    closure #2 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 24), v7, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &protocol conformance descriptor for CLP_LogEntry_LogEntry.TimeStamp);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v11, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
}

uint64_t closure #2 in CLP_LogEntry_LogEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + *(v12 + 28), v7, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_LogEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  ExtensionFieldValueSet.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_LogEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_LogEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t *CLP_LogEntry_LogEntry.TimeStamp.protoMessageName.unsafeMutableAddressor()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  return &static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName;
}

uint64_t static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName.getter()
{
  if (one-time initialization token for protoMessageName != -1)
  {
    swift_once();
  }

  v0 = static CLP_LogEntry_LogEntry.TimeStamp.protoMessageName;

  return v0;
}

uint64_t CLP_LogEntry_LogEntry.TimeStamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }
}

int *CLP_LogEntry_LogEntry.TimeStamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

Swift::Int CLP_LogEntry_LogEntry.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &protocol conformance descriptor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &protocol conformance descriptor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry.TimeStamp and conformance CLP_LogEntry_LogEntry.TimeStamp, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp, &protocol conformance descriptor for CLP_LogEntry_LogEntry.TimeStamp);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static CLP_LogEntry_LogEntry.TimeStamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_LogEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v38 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMR);
  MEMORY[0x28223BE20](v41);
  v44 = &v38 - v6;
  v7 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMR);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - v16;
  v42 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  v18 = *(v42 + 24);
  v19 = *(v15 + 56);
  v46 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v17, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v20 = v47 + v18;
  v21 = v47;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, &v17[v19], &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  v22 = *(v8 + 48);
  if (v22(v17, 1, v7) == 1)
  {
    if (v22(&v17[v19], 1, v7) == 1)
    {
      outlined destroy of Any?(v17, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v23 = &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMd;
    v24 = &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSg_AFtMR;
    v25 = v17;
LABEL_14:
    outlined destroy of Any?(v25, v23, v24);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v13, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if (v22(&v17[v19], 1, v7) == 1)
  {
    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(&v17[v19], v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  v26 = specialized static CLP_LogEntry_LogEntry.TimeStamp.== infix(_:_:)(v13, v10);
  outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v13, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
  outlined destroy of Any?(v17, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMd, &_s10ALProtobuf013CLP_LogEntry_cD0V9TimeStampVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = *(v42 + 28);
  v28 = *(v41 + 48);
  v29 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v46 + v27, v44, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v27, v29 + v28, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
  v30 = *(v43 + 48);
  v31 = v45;
  if (v30(v29, 1, v45) != 1)
  {
    v32 = v40;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v29, v40, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
    if (v30(v29 + v28, 1, v31) != 1)
    {
      v35 = v29 + v28;
      v36 = v39;
      outlined init with take of CLP_LogEntry_LogEntry.TimeStamp(v35, v39, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v36, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
      outlined destroy of Any?(v29, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of CLP_LogEntry_LogEntry.TimeStamp(v32, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
    goto LABEL_13;
  }

  if (v30(v29 + v28, 1, v31) != 1)
  {
LABEL_13:
    v23 = &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMd;
    v24 = &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSg_ADtMR;
    v25 = v29;
    goto LABEL_14;
  }

  outlined destroy of Any?(v29, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMd, &_s10ALProtobuf025CLP_LogEntry_PrivateData_eF7CaptureVSgMR);
LABEL_18:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ExtensionFieldValueSet();
    lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type ExtensionFieldValueSet and conformance ExtensionFieldValueSet, MEMORY[0x277D21710], MEMORY[0x277D21718]);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v33 & 1;
  }

LABEL_15:
  v33 = 0;
  return v33 & 1;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_LogEntry(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ExtensionFieldValueSet();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_LogEntry.TimeStamp?, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(319, &lazy cache variable for type metadata for CLP_LogEntry_PrivateData_PrivateDataCapture?, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for CLP_LogEntry_LogEntry.TimeStamp(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int64?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ALResultOptions.toPb()@<X0>(void *a1@<X8>)
{
  CLP_LogEntry_AONLoc_Request.ResultOptions.init()(a1);
  v1 = ALResultOptions._maxBatchSize.getter();
  if ((v1 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.batchSize.setter(v1);
  }

  v2 = ALResultOptions._intervalSec.getter();
  if ((v2 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.setter(*&v2);
  }

  v3 = ALResultOptions._maxAgeSec.getter();
  if ((v3 & 0x100000000) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.maxAgeSec.setter(*&v3);
  }

  started = ALResultOptions._startCfaTimeSec.getter();
  if ((v5 & 1) == 0)
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.startCfaTimeSec.setter(*&started);
  }

  result = ALResultOptions._endCfaTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.setter(*&result);
  }

  return result;
}

uint64_t ALResultOptions.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = (v12 - v4);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request(0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CLP_LogEntry_AONLoc_Request.init()(v8);
  CLP_LogEntry_AONLoc_Request.type.setter(3);
  CLP_LogEntry_AONLoc_Request.ResultOptions.init()(v5);
  ALResultOptions.intervalSec.getter();
  CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.setter(v9);
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v5, v3, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  CLP_LogEntry_AONLoc_Request.resultOptions.setter(v3);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request, type metadata accessor for CLP_LogEntry_AONLoc_Request, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Request);
  v10 = Message.serializedData(partial:)();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v5, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v8, type metadata accessor for CLP_LogEntry_AONLoc_Request);
  return v10;
}

uint64_t ALResultOptions.init(pb:)(uint64_t a1)
{
  ALResultOptions.init()();
  if (CLP_LogEntry_AONLoc_Request.ResultOptions.hasRepeatIntervalSec.getter())
  {
    CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.getter();
    ALResultOptions._intervalSec.setter();
  }

  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(a1, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
}

void ALResultOptions.init(data:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v12 - v10;
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Request.ResultOptions and conformance CLP_LogEntry_AONLoc_Request.ResultOptions, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v11, v9, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
    ALResultOptions.init()();
    if (CLP_LogEntry_AONLoc_Request.ResultOptions.hasRepeatIntervalSec.getter())
    {
      CLP_LogEntry_AONLoc_Request.ResultOptions.repeatIntervalSec.getter();
      LOBYTE(v12[0]) = 0;
      ALResultOptions._intervalSec.setter();
    }

    outlined consume of Data._Representation(a1, a2);
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v9, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v11, type metadata accessor for CLP_LogEntry_AONLoc_Request.ResultOptions);
  }
}

uint64_t ALWiFiScanSingleAccessPoint.Band.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC4C48 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiRfBand.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE4988])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4970])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4978])
  {
    return 2;
  }

  if (v4 != *MEMORY[0x277CE4980])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t ALWiFiScanSingleAccessPoint.Mode.init(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_278BC4C68 + a1);

  return v5(a2, v6, v4);
}

uint64_t CLP_LogEntry_PrivateData_WifiAccessPointMode.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE49A8])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4990])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4998])
  {
    return 2;
  }

  if (v4 != *MEMORY[0x277CE49A0])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 3;
}

uint64_t ALWiFiScanSingleAccessPoint.toPb(pb:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v37 - v1;
  v40 = type metadata accessor for ALWiFiScanSingleAccessPoint.Mode();
  v3 = *(v40 - 8);
  v4 = MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for ALWiFiScanSingleAccessPoint.Band();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  v18 = MEMORY[0x23EEDA1F0](v15);
  if ((v19 & 1) == 0)
  {
    v18 = CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(v18);
  }

  v20 = MEMORY[0x23EEDA250](v18);
  if (v21)
  {
    v20 = CLP_LogEntry_PrivateData_WifiAccessPoint.ssid.setter(v20, v21);
  }

  v22 = MEMORY[0x23EEDA2B0](v20);
  if ((v22 & 0x100000000) == 0)
  {
    v22 = CLP_LogEntry_PrivateData_WifiAccessPoint.rssiDb.setter(v22);
  }

  v23 = MEMORY[0x23EEDA2D0](v22);
  if ((v23 & 0x100000000) == 0)
  {
    v23 = CLP_LogEntry_PrivateData_WifiAccessPoint.channel.setter(v23);
  }

  v24 = MEMORY[0x23EEDA290](v23);
  if ((v24 & 0x100000000) == 0)
  {
    v24 = CLP_LogEntry_PrivateData_WifiAccessPoint.ageS.setter(*&v24);
  }

  v25 = MEMORY[0x23EEDA2F0](v24);
  if (v25 != 2)
  {
    v25 = CLP_LogEntry_PrivateData_WifiAccessPoint.isMoving.setter(v25 & 1);
  }

  v26 = MEMORY[0x23EEDA1B0](v25);
  if ((v26 & 0x100000000) == 0)
  {
    v26 = CLP_LogEntry_PrivateData_WifiAccessPoint.frequencyKhz.setter(v26);
  }

  v27 = MEMORY[0x23EEDA270](v26);
  if (v27 != 2)
  {
    v27 = CLP_LogEntry_PrivateData_WifiAccessPoint.isApplePersonalHotspot.setter(v27 & 1);
  }

  MEMORY[0x23EEDA210](v27);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v28 = outlined destroy of Any?(v9, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4BandOSgMR);
    goto LABEL_28;
  }

  (*(v11 + 32))(v17, v9, v10);
  (*(v11 + 16))(v14, v17, v10);
  v29 = (*(v11 + 88))(v14, v10);
  if (v29 != *MEMORY[0x277CE4988])
  {
    if (v29 == *MEMORY[0x277CE4970])
    {
      v30 = 1;
      goto LABEL_27;
    }

    if (v29 == *MEMORY[0x277CE4978])
    {
      v30 = 2;
      goto LABEL_27;
    }

    if (v29 == *MEMORY[0x277CE4980])
    {
      v30 = 3;
      goto LABEL_27;
    }

    (*(v11 + 8))(v14, v10);
  }

  v30 = 0;
LABEL_27:
  CLP_LogEntry_PrivateData_WifiAccessPoint.band.setter(v30);
  v28 = (*(v11 + 8))(v17, v10);
LABEL_28:
  MEMORY[0x23EEDA230](v28);
  v31 = v40;
  if ((*(v3 + 48))(v2, 1, v40) == 1)
  {
    return outlined destroy of Any?(v2, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMd, &_s11ALDataTypes27ALWiFiScanSingleAccessPointV4ModeOSgMR);
  }

  v33 = v39;
  (*(v3 + 32))(v39, v2, v31);
  v34 = v38;
  (*(v3 + 16))(v38, v33, v31);
  v35 = (*(v3 + 88))(v34, v31);
  if (v35 != *MEMORY[0x277CE49A8])
  {
    if (v35 == *MEMORY[0x277CE4990])
    {
      v36 = 1;
      goto LABEL_38;
    }

    if (v35 == *MEMORY[0x277CE4998])
    {
      v36 = 2;
      goto LABEL_38;
    }

    if (v35 == *MEMORY[0x277CE49A0])
    {
      v36 = 3;
      goto LABEL_38;
    }

    (*(v3 + 8))(v34, v31);
  }

  v36 = 0;
LABEL_38:
  CLP_LogEntry_PrivateData_WifiAccessPoint.mode.setter(v36);
  return (*(v3 + 8))(v33, v31);
}

uint64_t ALWiFiScanSingleAccessPoint.toPb()@<X0>(uint64_t a1@<X8>)
{
  CLP_LogEntry_PrivateData_WifiAccessPoint.init()(a1);

  return ALWiFiScanSingleAccessPoint.toPb(pb:)();
}

uint64_t ALWiFiScanSingleAccessPoint.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v2);
  ALWiFiScanSingleAccessPoint.toPb(pb:)();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPoint and conformance CLP_LogEntry_PrivateData_WifiAccessPoint, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v3 = Message.serializedData(partial:)();
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v2, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  return v3;
}

void ALWiFiScanResult.init(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v14 - v12;
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v13, v11, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
    ALWiFiScanResult.init(pb:)(v11, a3);
    outlined consume of Data._Representation(a1, a2);
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v13, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult);
  }
}

void ALWiFiScanResult.toPb()(char *a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ALWiFiScanSingleAccessPoint();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for ALTimeStamp();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = CLP_LogEntry_PrivateData_WifiScanResult.init()(a1);
  MEMORY[0x23EED9D90](v17);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = outlined destroy of Any?(v12, &_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    ALTimeStamp.toPb()(v9);
    CLP_LogEntry_PrivateData_WifiScanResult.scanTimestamp.setter(v9);
    v18 = (*(v14 + 8))(v16, v13);
  }

  v19 = MEMORY[0x23EED9D70](v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v29 = a1;
    v30 = v19;
    v21 = *a1;
    v22 = v31;
    v23 = *(v35 + 16);
    v24 = v19 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v32 = *(v35 + 72);
    v33 = v23;
    v35 += 16;
    v25 = (v35 - 8);
    do
    {
      v33(v6, v24, v22);
      CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v4);
      ALWiFiScanSingleAccessPoint.toPb(pb:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      }

      (*v25)(v6, v22);
      v21[2] = v27 + 1;
      outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(v4, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
      v24 += v32;
      --v20;
    }

    while (v20);

    *v29 = v21;
  }

  else
  {
  }

  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanResult and conformance CLP_LogEntry_PrivateData_WifiScanResult, type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiScanResult);
  ALFWiFiScanResultsRequester.query(options:callback:start:end:)();
}

uint64_t CLP_LogEntry_PrivateData_WifiAssociationState.init(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CLP_LogEntry_PrivateData_WifiAssociationState.init()(a3);
  if ((a2 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.setter(1);
    CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v8);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v8);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v8);
    CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(a1);
    return CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v8);
  }

  return result;
}

void ALWiFiNotification.toPb()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_WifiScanResult(0);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes16ALWiFiScanResultVSgMd, &_s11ALDataTypes16ALWiFiScanResultVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v51 - v9;
  v10 = type metadata accessor for ALWiFiScanResult();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v57 = type metadata accessor for ALTimeStamp();
  v17 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMd, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - v20;
  v22 = type metadata accessor for ALWiFiNotification.NotiType();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v51 - v27;
  v29 = CLP_LogEntry_PrivateData_WifiNotification.init()(a1);
  MEMORY[0x23EEDA0E0](v29);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v30 = outlined destroy of Any?(v21, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMd, &_s11ALDataTypes18ALWiFiNotificationV8NotiTypeOSgMR);
  }

  else
  {
    (*(v23 + 32))(v28, v21, v22);
    (*(v23 + 16))(v26, v28, v22);
    v31 = specialized CLP_LogEntry_PrivateData_WifiNotificationType.init(_:)(v26);
    CLP_LogEntry_PrivateData_WifiNotification.type.setter(v31);
    v30 = (*(v23 + 8))(v28, v22);
  }

  MEMORY[0x23EEDA080](v30);
  v32 = v57;
  v33 = (*(v17 + 48))(v16, 1, v57);
  v34 = v58;
  if (v33 == 1)
  {
    v35 = outlined destroy of Any?(v16, &_s11ALDataTypes11ALTimeStampVSgMd, &_s11ALDataTypes11ALTimeStampVSgMR);
  }

  else
  {
    v36 = v51;
    (*(v17 + 32))(v51, v16, v32);
    v37 = v52;
    ALTimeStamp.toPb()(v52);
    CLP_LogEntry_PrivateData_WifiNotification.eventReceiptTime.setter(v37);
    v35 = (*(v17 + 8))(v36, v32);
  }

  MEMORY[0x23EEDA0A0](v35);
  v39 = v59;
  v38 = v60;
  if ((*(v59 + 48))(v34, 1, v60) == 1)
  {
    v40 = outlined destroy of Any?(v34, &_s11ALDataTypes16ALWiFiScanResultVSgMd, &_s11ALDataTypes16ALWiFiScanResultVSgMR);
  }

  else
  {
    v41 = v53;
    (*(v39 + 32))(v53, v34, v38);
    v42 = v54;
    ALWiFiScanResult.toPb()(v54);
    CLP_LogEntry_PrivateData_WifiNotification.scan.setter(v42);
    v40 = (*(v39 + 8))(v41, v38);
  }

  v43 = MEMORY[0x23EEDA0C0](v40);
  if ((v44 & 1) == 0)
  {
    v45 = v55;
    v46 = v43;
    CLP_LogEntry_PrivateData_WifiAssociationState.init()(v55);
    CLP_LogEntry_PrivateData_WifiAssociationState.isAssociated.setter(1);
    v47 = v56;
    CLP_LogEntry_PrivateData_WifiAccessPoint.init()(v56);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v47);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.getter(v47);
    CLP_LogEntry_PrivateData_WifiAccessPoint.mac.setter(v46);
    CLP_LogEntry_PrivateData_WifiAssociationState.ap.setter(v47);
    CLP_LogEntry_PrivateData_WifiNotification.associatedState.setter(v45);
  }

  v48 = ALWiFiNotification._simulated.getter();
  if (v48 != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.simulated.setter(v48 & 1);
  }

  v49 = ALWiFiNotification._available.getter();
  if (v49 != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.available.setter(v49 & 1);
  }

  isAp = ALWiFiNotification._isApAwake.getter();
  if (isAp != 2)
  {
    CLP_LogEntry_PrivateData_WifiNotification.isApAwake.setter(isAp & 1);
  }

  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiNotification and conformance CLP_LogEntry_PrivateData_WifiNotification, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification, &protocol conformance descriptor for CLP_LogEntry_PrivateData_WifiNotification);
  ALFWiFiScanResultsRequester.query(options:callback:start:end:)();
}

uint64_t ALWiFiNotifications.toPb()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ALWiFiNotification();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v35 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (v30 - v13);
  CLP_LogEntry_AONLoc_Indication.init()(a1);
  CLP_LogEntry_AONLoc_Indication.type.setter(4);
  CLP_LogEntry_AONLoc_WiFiIndication.init()(v14);
  v15 = ALWiFiNotifications.results.getter();
  v16 = *(v15 + 16);
  if (v16)
  {
    v32 = v1;
    v33 = a1;
    v34 = v2;
    v30[1] = v15;
    v31 = v14;
    v17 = *v14;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v36 = *(v18 + 56);
    v37 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    v23 = v39;
    do
    {
      v24 = v22;
      v37(v9, v20, v6);
      ALWiFiNotification.toPb()(v23);
      (*v21)(v9, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v17, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMd, &_ss23_ContiguousArrayStorageCy10ALProtobuf41CLP_LogEntry_PrivateData_WifiNotificationVGMR, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      }

      v17[2] = v26 + 1;
      v23 = v39;
      outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(v39, v17 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26, type metadata accessor for CLP_LogEntry_PrivateData_WifiNotification);
      v20 += v36;
      --v16;
      v22 = v24;
    }

    while (v16);

    v14 = v31;
    *v31 = v17;
  }

  else
  {
  }

  v27 = ALWiFiNotifications.isLastBatch.getter();
  CLP_LogEntry_AONLoc_WiFiIndication.isLastBatch.setter(v27 & 1);
  v28 = v35;
  _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOcTm_0(v14, v35, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
  CLP_LogEntry_AONLoc_Indication.wifiIndication.setter(v28);
  type metadata accessor for ALProtobufUtil();
  type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Indication);
  ALFWiFiScanResultsRequester.query(options:callback:start:end:)();
  return _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v14, type metadata accessor for CLP_LogEntry_AONLoc_WiFiIndication);
}

uint64_t ALWiFiNotifications.serializedData()()
{
  v2 = v1;
  v3 = type metadata accessor for ALWiFiNotifications();
  v43 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CLP_LogEntry_AONLoc_Indication(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ALWiFiNotifications.toPb()(v12);
  if (!v1)
  {
    v38 = v0;
    v39 = v5;
    v13 = v43;
    v40 = v9;
    v41 = v6;
    v42 = v7;
    lazy protocol witness table accessor for type CLP_LogEntry_AONLoc_Request and conformance CLP_LogEntry_AONLoc_Request(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_Indication and conformance CLP_LogEntry_AONLoc_Indication, type metadata accessor for CLP_LogEntry_AONLoc_Indication, &protocol conformance descriptor for CLP_LogEntry_AONLoc_Indication);
    v2 = Message.serializedData(partial:)();
    v15 = v14;
    _s10ALProtobuf27CLP_LogEntry_AONLoc_RequestV13ResultOptionsVWOhTm_0(v12, type metadata accessor for CLP_LogEntry_AONLoc_Indication);
    v37 = 0;
    v17 = v40;
    corelog.getter(v40);
    v18 = v13;
    v19 = v17;
    v20 = v39;
    v21 = v3;
    (*(v18 + 16))(v39, v38, v3);
    outlined copy of Data._Representation(v2, v15);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    outlined consume of Data._Representation(v2, v15);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v24 = 136446466;
      v36 = v23;
      v25 = ALWiFiNotifications.description.getter();
      v26 = v20;
      v28 = v27;
      (*(v18 + 8))(v26, v21);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v44);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      outlined copy of Data._Representation(v2, v15);
      v30 = Data.description.getter();
      v32 = v31;
      outlined consume of Data._Representation(v2, v15);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v44);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_23CEAD000, v22, v36, "#WiFi,serializedData,notif,%{public}s,data,%{public}s", v24, 0x16u);
      v34 = v38;
      swift_arrayDestroy();
      MEMORY[0x23EEDAF70](v34, -1, -1);
      MEMORY[0x23EEDAF70](v24, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v20, v21);
    }

    (*(v42 + 8))(v19, v41);
  }

  return v2;
}

uint64_t static ALWiFiNotifications.serializedIndications(results:isLastBatch:)(uint64_t a1, char a2)
{
  v2 = type metadata accessor for ALWiFiNotifications();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  ALWiFiNotifications.init(_results:_isLastBatch:)();
  v6 = ALWiFiNotifications.serializedData()();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t specialized CLP_LogEntry_PrivateData_WifiNotificationType.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiNotification.NotiType();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CE4940])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CE4948])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CE4938])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CE4960])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x277CE4930])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x277CE4958])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CE4900])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x277CE48F0])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x277CE4928])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x277CE4910])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x277CE4908])
  {
    return 10;
  }

  if (v4 == *MEMORY[0x277CE4918])
  {
    return 11;
  }

  if (v4 == *MEMORY[0x277CE4920])
  {
    return 12;
  }

  if (v4 == *MEMORY[0x277CE4950])
  {
    return 13;
  }

  if (v4 != *MEMORY[0x277CE48F8])
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  return 14;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_WifiAccessPoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ALTimeStamp.toPb()@<X0>(uint64_t a1@<X8>)
{
  CLP_LogEntry_PrivateData_TimeStamp.init()(a1);
  v1 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v2 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.setter(*&v1);
  }

  v3 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v4 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.setter(*&v3);
  }

  result = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v6 & 1) == 0)
  {
    return CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.setter(*&result);
  }

  return result;
}

uint64_t ALTimeStamp.serializedData()()
{
  v0 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  CLP_LogEntry_PrivateData_TimeStamp.init()(v3);
  v6 = ALTimeStamp.cfAbsoluteTimeSec.getter();
  if ((v7 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.setter(*&v6);
  }

  v8 = ALTimeStamp.machAbsoluteTimeSec.getter();
  if ((v9 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.setter(*&v8);
  }

  v10 = ALTimeStamp.machContinuousTimeSec.getter();
  if ((v11 & 1) == 0)
  {
    CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.setter(*&v10);
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v3, v5);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp();
  v12 = Message.serializedData(partial:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v5);
  return v12;
}

uint64_t outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp);
  }

  return result;
}

uint64_t static ALProtobufUtil.stringfyJson<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for JSONEncodingOptions();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSONEncodingOptions.init()();
  v9 = Message.jsonUTF8Data(options:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  static String.Encoding.utf8.getter();
  v12 = String.init(data:encoding:)();
  v14 = v13;
  outlined consume of Data._Representation(v9, v11);
  if (v14)
  {
    return v12;
  }

  else
  {
    return 0x3E6C696E3CLL;
  }
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(_:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for JSONEncodingOptions();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of ALXPCDataService(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pMd, &_s21InternalSwiftProtobuf7Message_pMR);
  swift_dynamicCast();
  JSONEncodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);
  v13 = Message.jsonUTF8Data(options:)();
  if (v1)
  {
    (*(v7 + 8))(v9, v6);
    outlined destroy of CLP_LogEntry_LogEntry(v12, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  else
  {
    v15 = v13;
    v16 = v9;
    v17 = v14;
    (*(v7 + 8))(v16, v6);
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v19 = v18;
    outlined consume of Data._Representation(v15, v17);
    if (!v19)
    {
      v5 = 0x3E6C696E3CLL;
    }

    outlined destroy of CLP_LogEntry_LogEntry(v12, type metadata accessor for CLP_LogEntry_LogEntry);
  }

  return v5;
}

uint64_t static ALProtobufUtil.stringfyLogEntryJson(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for JSONEncodingOptions();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CLP_LogEntry_LogEntry(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v40 = a2;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry, type metadata accessor for CLP_LogEntry_LogEntry, &protocol conformance descriptor for CLP_LogEntry_LogEntry);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v32 = 0.0;
    v33 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_23D1B0500;
    CLP_LogEntry_LogEntry.eventRecordTime.getter(v10);
    v18 = CLP_LogEntry_LogEntry.TimeStamp.machContinuousTimeS.getter();
    outlined destroy of CLP_LogEntry_LogEntry(v10, type metadata accessor for CLP_LogEntry_LogEntry.TimeStamp);
    v19 = MEMORY[0x277D83A80];
    *(v17 + 56) = MEMORY[0x277D839F8];
    *(v17 + 64) = v19;
    *(v17 + 32) = v18;
    v20 = CLP_LogEntry_LogEntry.hasPrivateDataCapture.getter();
    v21 = MEMORY[0x277D839F0];
    *(v17 + 96) = MEMORY[0x277D839B0];
    *(v17 + 104) = v21;
    *(v17 + 72) = v20;
    type metadata accessor for OS_os_log();
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("time,%.2f,has,%d", v32, v33);

    v22 = v34;
    JSONEncodingOptions.init()();
    v23 = v32;
    v24 = Message.jsonUTF8Data(options:)();
    if (v23 == 0.0)
    {
      v27 = v24;
      v28 = v25;
      (*(v35 + 8))(v22, v33);
      static String.Encoding.utf8.getter();
      v29 = String.init(data:encoding:)();
      v31 = v30;
      outlined consume of Data._Representation(v27, v28);
      if (v31)
      {
        v13 = v29;
      }

      else
      {
        v13 = 0x3E6C696E3CLL;
      }

      outlined destroy of CLP_LogEntry_LogEntry(v16, type metadata accessor for CLP_LogEntry_LogEntry);
    }

    else
    {
      (*(v35 + 8))(v22, v33);
      outlined destroy of CLP_LogEntry_LogEntry(v16, type metadata accessor for CLP_LogEntry_LogEntry);
    }
  }

  return v13;
}

uint64_t static ALProtobufUtil.serialized(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Google_Protobuf_UInt32Value();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEDA370](v4);
  MEMORY[0x23EEDA360](a1);
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type Google_Protobuf_UInt32Value and conformance Google_Protobuf_UInt32Value, MEMORY[0x277D215B8], MEMORY[0x277D215B0]);
  v7 = Message.serializedData(partial:)();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t static ALProtobufUtil.serialized(_:)(double a1)
{
  v1 = type metadata accessor for Google_Protobuf_DoubleValue();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEDA340](v3);
  Google_Protobuf_DoubleValue.value.setter();
  lazy protocol witness table accessor for type CLP_LogEntry_LogEntry and conformance CLP_LogEntry_LogEntry(&lazy protocol witness table cache variable for type Google_Protobuf_DoubleValue and conformance Google_Protobuf_DoubleValue, MEMORY[0x277D21598], MEMORY[0x277D21590]);
  v6 = Message.serializedData(partial:)();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t outlined destroy of CLP_LogEntry_LogEntry(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v8 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_LogEntry(v5, a1, type metadata accessor for Proto_Gpsd_LogEntry);
  }

  Proto_Gpsd_LogEntry.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_LogEntry(a1, v6, type metadata accessor for Proto_Gpsd_LogEntry);
  v12 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gpsd_LogEntry(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    Proto_Gpsd_LogEntry.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_LogEntry(v8, v14, type metadata accessor for Proto_Gpsd_LogEntry);
  }

  return CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.modify;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.aonlocLogEntry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gpsd_LogEntry(v5, a1, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  }

  CLP_LogEntry_AONLoc_LogEntry.init()(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.aonlocLogEntry.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v11);
    *(v2 + v7) = v10;
  }

  outlined init with take of Proto_Gpsd_LogEntry(a1, v6, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v13, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  return swift_endAccess();
}

void (*CLP_LogEntry_PrivateData_PrivateDataCapture.aonlocLogEntry.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR) - 8) + 64);
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
  v9 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    CLP_LogEntry_AONLoc_LogEntry.init()(v14);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gpsd_LogEntry(v8, v14, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  }

  return CLP_LogEntry_PrivateData_PrivateDataCapture.aonlocLogEntry.modify;
}

void CLP_LogEntry_PrivateData_PrivateDataCapture.gpsdLogEntry.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of Proto_Gpsd_LogEntry(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
      v15 = swift_allocObject();
      CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of Proto_Gpsd_LogEntry(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v21, v12 + v22, a5, a6);
    swift_endAccess();
    outlined destroy of Proto_Gpsd_LogEntry(v16, a3);
  }

  else
  {
    v23 = *(v8 + 72);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v23 + v9);
    if ((v24 & 1) == 0)
    {
      v26 = *(v8 + 128);
      v27 = *(v8 + 72);
      type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
      v28 = swift_allocObject();
      CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v25);
      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of Proto_Gpsd_LogEntry(v16, v21, a3);
    (*(v30 + 56))(v21, 0, 1, v29);
    v31 = *a4;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v21, v25 + v31, a5, a6);
    swift_endAccess();
  }

  free(v16);
  free(v17);
  free(v20);
  free(v21);

  free(v8);
}

BOOL CLP_LogEntry_PrivateData_PrivateDataCapture.hasGpsdLogEntry.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v15;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.clearGpsdLogEntry()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v16 = swift_allocObject();
    v17 = v15;
    v15 = v16;
    CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v17);
    *(v9 + v13) = v16;
  }

  v18 = a3(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = *a4;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v15 + v19, a1, a2);
  return swift_endAccess();
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v2) = static CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.defaultInstance;
}

uint64_t variable initialization expression of CLP_LogEntry_PrivateData_PrivateDataCapture._storage()
{
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture._protobuf_nameMap.unsafeMutableAddressor()
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for _NameMap();

  return __swift_project_value_buffer(v0, static CLP_LogEntry_PrivateData_PrivateDataCapture._protobuf_nameMap);
}

uint64_t static CLP_LogEntry_PrivateData_PrivateDataCapture._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static CLP_LogEntry_PrivateData_PrivateDataCapture._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  v10 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  v12 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v13, v8, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v8, v1 + v9, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v5, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);

  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v5, v1 + v11, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with take of Proto_Gpsd_LogEntry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Proto_Gpsd_LogEntry(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Proto_Gpsd_LogEntry(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.__deallocating_deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  outlined destroy of Any?(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(0);
    v9 = swift_allocObject();
    CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.init(copying:)(v8);
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

      if (result == 1004)
      {
        break;
      }

      if (result == 1018)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
        v13 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry;
        v14 = &protocol conformance descriptor for CLP_LogEntry_AONLoc_LogEntry;
        v15 = &lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry;
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for Proto_Gpsd_LogEntry(0);
    v13 = type metadata accessor for Proto_Gpsd_LogEntry;
    v14 = &protocol conformance descriptor for Proto_Gpsd_LogEntry;
    v15 = &lazy protocol witness table cache variable for type Proto_Gpsd_LogEntry and conformance Proto_Gpsd_LogEntry;
LABEL_7:
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_PrivateDataCapture.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20));
  result = closure #1 in closure #1 in CLP_LogEntry_PrivateData_PrivateDataCapture.traverse<A>(visitor:)(v8, a1, a2, a3);
  if (!v4)
  {
    closure #2 in closure #1 in CLP_LogEntry_PrivateData_PrivateDataCapture.traverse<A>(visitor:)(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in CLP_LogEntry_PrivateData_PrivateDataCapture.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  }

  outlined init with take of Proto_Gpsd_LogEntry(v7, v11, type metadata accessor for Proto_Gpsd_LogEntry);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type Proto_Gpsd_LogEntry and conformance Proto_Gpsd_LogEntry, type metadata accessor for Proto_Gpsd_LogEntry, &protocol conformance descriptor for Proto_Gpsd_LogEntry);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gpsd_LogEntry(v11, type metadata accessor for Proto_Gpsd_LogEntry);
}

uint64_t closure #2 in closure #1 in CLP_LogEntry_PrivateData_PrivateDataCapture.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v12, v7, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Any?(v7, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  }

  outlined init with take of Proto_Gpsd_LogEntry(v7, v11, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry, &protocol conformance descriptor for CLP_LogEntry_AONLoc_LogEntry);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Proto_Gpsd_LogEntry(v11, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
}

BOOL closure #1 in static CLP_LogEntry_PrivateData_PrivateDataCapture.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v49 = type metadata accessor for CLP_LogEntry_AONLoc_LogEntry(0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSg_ADtMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSg_ADtMR);
  MEMORY[0x28223BE20](v46);
  v50 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v8;
  v9 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSg_ADtMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v51 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v22, v20, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v24 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__gpsdLogEntry;
  swift_beginAccess();
  v25 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20, v15, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v24, &v15[v25], &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) != 1)
  {
    v27 = v51;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v51, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
    if (v26(&v15[v25], 1, v9) != 1)
    {
      v28 = v45;
      outlined init with take of Proto_Gpsd_LogEntry(&v15[v25], v45, type metadata accessor for Proto_Gpsd_LogEntry);
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type Proto_Gpsd_LogEntry and conformance Proto_Gpsd_LogEntry, type metadata accessor for Proto_Gpsd_LogEntry, &protocol conformance descriptor for Proto_Gpsd_LogEntry);

      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Proto_Gpsd_LogEntry(v28, type metadata accessor for Proto_Gpsd_LogEntry);
      outlined destroy of Any?(v20, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
      outlined destroy of Proto_Gpsd_LogEntry(v27, type metadata accessor for Proto_Gpsd_LogEntry);
      outlined destroy of Any?(v15, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
      if (v29)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    outlined destroy of Any?(v20, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
    outlined destroy of Proto_Gpsd_LogEntry(v27, type metadata accessor for Proto_Gpsd_LogEntry);
LABEL_6:
    outlined destroy of Any?(v15, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSg_ADtMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSg_ADtMR);
    goto LABEL_7;
  }

  outlined destroy of Any?(v20, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
  if (v26(&v15[v25], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v15, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMd, &_s10ALProtobuf19Proto_Gpsd_LogEntryVSgMR);
LABEL_9:
  v30 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  v31 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v48, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v32 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_PrivateDataCaptureP33_EAF2BEFD088097B94979D70F24702EAF13_StorageClass__aonlocLogEntry;
  swift_beginAccess();
  v33 = *(v46 + 48);
  v34 = v50;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v31, v50, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v32, v34 + v33, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  v35 = *(v47 + 48);
  v36 = v49;
  if (v35(v34, 1, v49) == 1)
  {

    outlined destroy of Any?(v31, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
    if (v35(v34 + v33, 1, v36) == 1)
    {
      outlined destroy of Any?(v34, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
      return 1;
    }

    goto LABEL_14;
  }

  v37 = v44;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v34, v44, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  if (v35(v34 + v33, 1, v36) == 1)
  {

    outlined destroy of Any?(v31, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
    outlined destroy of Proto_Gpsd_LogEntry(v37, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
LABEL_14:
    outlined destroy of Any?(v34, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSg_ADtMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSg_ADtMR);
    return 0;
  }

  v39 = v34 + v33;
  v40 = v43;
  outlined init with take of Proto_Gpsd_LogEntry(v39, v43, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_AONLoc_LogEntry and conformance CLP_LogEntry_AONLoc_LogEntry, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry, &protocol conformance descriptor for CLP_LogEntry_AONLoc_LogEntry);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of Proto_Gpsd_LogEntry(v40, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  outlined destroy of Any?(v31, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  outlined destroy of Proto_Gpsd_LogEntry(v37, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
  outlined destroy of Any?(v34, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMd, &_s10ALProtobuf020CLP_LogEntry_AONLoc_cD0VSgMR);
  return (v41 & 1) != 0;
}

Swift::Int CLP_LogEntry_PrivateData_PrivateDataCapture.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0);
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance CLP_LogEntry_PrivateData_PrivateDataCapture@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance CLP_LogEntry_PrivateData_PrivateDataCapture(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CLP_LogEntry_PrivateData_PrivateDataCapture(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PrivateDataCapture(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture, type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture, &protocol conformance descriptor for CLP_LogEntry_PrivateData_PrivateDataCapture);

  return MEMORY[0x28217E440](a1, a2, v4);
}

uint64_t specialized static CLP_LogEntry_PrivateData_PrivateDataCapture.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static CLP_LogEntry_PrivateData_PrivateDataCapture.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PrivateDataCapture and conformance CLP_LogEntry_PrivateData_PrivateDataCapture(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for CLP_LogEntry_PrivateData_PrivateDataCapture(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for CLP_LogEntry_PrivateData_PrivateDataCapture._StorageClass(uint64_t a1)
{
  type metadata accessor for Proto_Gpsd_LogEntry?(319, &lazy cache variable for type metadata for Proto_Gpsd_LogEntry?, type metadata accessor for Proto_Gpsd_LogEntry);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Proto_Gpsd_LogEntry?(319, &lazy cache variable for type metadata for CLP_LogEntry_AONLoc_LogEntry?, type metadata accessor for CLP_LogEntry_AONLoc_LogEntry);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Proto_Gpsd_LogEntry?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LocationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_LocationType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_LocationType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_LocationType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_LocationType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_LocationType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_LocationType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BatchedLocationFixType(uint64_t a1, uint64_t a2)
{
  fixed = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType();

  return MEMORY[0x28217E238](a1, a2, fixed);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_GnssModeOfOperation(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BatchMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_OperatingMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_PipelineOperatingMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DominantMotionModeType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DominantMotionModeType@<X0>(Swift::Int a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DominantMotionModeType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DominantMotionModeType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_DominantMotionModeType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_DominantMotionModeType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_DominantMotionModeType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_ReachabilityType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance CLP_LogEntry_PrivateData_ReachabilityType@<X0>(unint64_t a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_ReachabilityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_ReachabilityType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_ReachabilityType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::CLP_LogEntry_PrivateData_ReachabilityType_optional *a2@<X8>)
{
  result = specialized CLP_LogEntry_PrivateData_ReachabilityType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_BatteryChargerType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_SensorFusionMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiAccessPointMode(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiRfBand(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiRfBand and conformance CLP_LogEntry_PrivateData_WifiRfBand();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiScanType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CLP_LogEntry_PrivateData_WifiScanType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10ALProtobuf37CLP_LogEntry_PrivateData_WifiScanTypeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_WifiNotificationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiNotificationType and conformance CLP_LogEntry_PrivateData_WifiNotificationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_LocationServicesEnabled(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_DataAvailability(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_IndoorOutdoorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TimeStamp.cfAbsoluteTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 20);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeStamp.clearCfAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TimeStamp.machAbsoluteTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeStamp.clearMachAbsoluteTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_TimeStamp.machContinuousTimeS.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_TimeStamp.clearMachContinuousTimeS()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*CLP_LogEntry_PrivateData_AccelSample.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 20);
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

uint64_t CLP_LogEntry_PrivateData_AccelSample.xMps2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccelSample.xMps2.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_AccelSample.clearXMps2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.yMps2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccelSample.yMps2.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_AccelSample.clearYMps2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.zMps2.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_AccelSample.zMps2.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_AccelSample.clearZMps2()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_AccelSample(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_Accel.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_Accel.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Accel(0) + 24);
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

uint64_t variable initialization expression of CLP_LogEntry_PrivateData_AccelSample._applicableTime@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t (*CLP_LogEntry_PrivateData_GyroSample.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 20);
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

BOOL CLP_LogEntry_PrivateData_AccelSample.hasApplicableTime.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
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

uint64_t CLP_LogEntry_PrivateData_AccelSample.clearApplicableTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

float CLP_LogEntry_PrivateData_AccelSample.xMps2.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GyroSample.xRadps.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GyroSample.xRadps.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 24);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GyroSample.clearXRadps()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_AccelSample.yMps2.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GyroSample.yRadps.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GyroSample.yRadps.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 28);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GyroSample.clearYRadps()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float CLP_LogEntry_PrivateData_AccelSample.zMps2.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t CLP_LogEntry_PrivateData_GyroSample.zRadps.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_GyroSample.zRadps.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 32);
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

Swift::Void __swiftcall CLP_LogEntry_PrivateData_GyroSample.clearZRadps()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_GyroSample(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_AccelSample.init()@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = v4[5];
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + v4[6];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v4[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v4[8];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t CLP_LogEntry_PrivateData_Gyro.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_Gyro.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Gyro(0) + 24);
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

uint64_t CLP_LogEntry_PrivateData_Accel.clearEventReceiptTime()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  outlined destroy of Any?(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t CLP_LogEntry_PrivateData_Accel.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CLP_LogEntry_PrivateData_Accel.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t CLP_LogEntry_PrivateData_Accel.init()@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v3 = a1(0);
  UnknownStorage.init()();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t (*CLP_LogEntry_PrivateData_BaroSample.applicableTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 20);
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

uint64_t CLP_LogEntry_PrivateData_BaroSample.pressure.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BaroSample.pressure.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BaroSample.clearPressure()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.temperature.setter(float a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_BaroSample.temperature.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.processID.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_BaroSample.clearTemperature()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t CLP_LogEntry_PrivateData_BaroSample.init()@<X0>(uint64_t a1@<X8>)
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

uint64_t CLP_LogEntry_PrivateData_Baro.eventReceiptTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(a1, v1 + v3, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*CLP_LogEntry_PrivateData_Baro.eventReceiptTime.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v15 = *(type metadata accessor for CLP_LogEntry_PrivateData_Baro(0) + 24);
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

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.latitude.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientLocationCoordinate.latitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientLocationCoordinate.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_ClientLocationCoordinate.longitude.setter(double a1)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*CLP_LogEntry_PrivateData_ClientLocationCoordinate.longitude.modify(uint64_t a1))(uint64_t result)
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
  return CLP_LogEntry_AONLoc_Request.machContinuousTimeNs.modify;
}

Swift::Void __swiftcall CLP_LogEntry_PrivateData_ClientLocationCoordinate.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t CLP_LogEntry_PrivateData_DaemonLocation.suitability.getter()
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

void (*CLP_LogEntry_PrivateData_DaemonLocation.suitability.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 4)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return CLP_LogEntry_PrivateData_DaemonLocation.suitability.modify;
}