uint64_t specialized static CLP_LogEntry_PrivateData_TunnelBridgeNotification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSg_ADtMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSg_ADtMR);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeNotification(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v55 + v19;
  v22 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v35, v52, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v48, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
LABEL_22:
    v24 = &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSg_ADtMd;
    v25 = &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSg_ADtMR;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  v45 = specialized static CLP_LogEntry_PrivateData_TunnelBridgeAssistance.== infix(_:_:)(v42, v44);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance);
  outlined destroy of Any?(v39, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMd, &_s10ALProtobuf47CLP_LogEntry_PrivateData_TunnelBridgeAssistanceVSgMR);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_RhythmicStreamingControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
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
  if (v12 == 5)
  {
    if (v13 != 5)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 == 2)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

LABEL_26:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_TunnelBridgeAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v50 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelBridgeAssistance(0);
  v51 = a1;
  v14 = v50[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v49;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v49, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v50[6];
  v22 = (v51 + v21);
  v23 = *(v51 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v50[7];
  v27 = (v51 + v26);
  v28 = *(v51 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v50[8];
  v32 = (v51 + v31);
  v33 = *(v51 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v50[9];
  v37 = *(v51 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    goto LABEL_7;
  }

  v39 = v50[10];
  v40 = *(v51 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    goto LABEL_7;
  }

  v42 = v50[11];
  v43 = *(v51 + v42);
  v44 = *(a2 + v42);
  if (v43 == 2)
  {
    if (v44 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v44 == 2 || ((v43 ^ v44) & 1) != 0)
  {
    goto LABEL_7;
  }

  v45 = v50[12];
  v46 = *(v51 + v45);
  v47 = *(a2 + v45);
  if (v46 == 2)
  {
    if (v47 == 2)
    {
LABEL_48:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v47 != 2 && ((v46 ^ v47) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MediatedMotionActivity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_14;
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
      goto LABEL_14;
    }
  }

  v20 = a1;
  v21 = a2;
  v22 = *(v14 + 24);
  v23 = *(v11 + 48);
  v37 = v20;
  v38 = v14;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v20 + v22, v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v22, &v13[v23], &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
    if (v24(&v13[v23], 1, v4) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v23], v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v29 = *(v4 + 20);
      v30 = *&v10[v29];
      v31 = *&v7[v29];
      if (v30 == v31 || (, , v32 = closure #1 in static CLP_LogEntry_PrivateData_MotionActivity.== infix(_:_:)(v30, v31), , , v32))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
        outlined destroy of Any?(v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v25 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd;
      v26 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR;
LABEL_13:
      outlined destroy of Any?(v13, v25, v26);
      goto LABEL_14;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_12:
    v25 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMd;
    v26 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMR;
    goto LABEL_13;
  }

  if (v24(&v13[v23], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
LABEL_19:
  v34 = *(v38 + 28);
  v35 = *(v37 + v34);
  v36 = *(v21 + v34);
  if (v35 != 2)
  {
    if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v27 & 1;
  }

  if (v36 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_FalseStepDetectorState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FalseStepDetectorState(0);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SignalEnvironmentInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironmentInfo(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureBuilding.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSectionV_Tt1g5Tm(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection, specialized static CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.== infix(_:_:)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuilding(0);
  v5 = *(v4 + 24);
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

  v10 = *(v4 + 28);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_DigitalElevationModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
  v54 = a1;
  v14 = v53[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v52;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v53[6];
  v22 = (v54 + v21);
  v23 = *(v54 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v53[7];
  v27 = (v54 + v26);
  v28 = *(v54 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v53[8];
  v32 = (v54 + v31);
  v33 = *(v54 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v53[9];
  v37 = (v54 + v36);
  v38 = *(v54 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v53[10];
  v42 = (v54 + v41);
  v43 = *(v54 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v53[11];
  v47 = (v54 + v46);
  v48 = *(v54 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (v50)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MapMatchingRouteHint.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = MEMORY[0x28223BE20](v12);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v47 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatchingRouteHint(0);
  v17 = *(v47 + 24);
  v45 = v12;
  v18 = *(v12 + 48);
  v49 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v17, v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v48 = a2;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v17, &v16[v18], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v20 = v4;
      outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v21 = v16;
LABEL_14:
    outlined destroy of Any?(v21, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v20 = v4;
  v22 = &v16[v18];
  v23 = v44;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v22, v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v24 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v16, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v25 = v46;
  v26 = v47;
  v27 = *(v47 + 28);
  v28 = *(v45 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v49 + v27, v46, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v29 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48 + v27, v25 + v28, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v30 = v20;
  if (v19(v25, 1, v20) != 1)
  {
    v31 = v43;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v43, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v19((v25 + v28), 1, v30) != 1)
    {
      v34 = v44;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v25 + v28, v44, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v35 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v31, v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v35 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v31, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_13;
  }

  if (v19((v25 + v28), 1, v20) != 1)
  {
LABEL_13:
    v21 = v25;
    goto LABEL_14;
  }

  outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_18:
  v36 = *(v26 + 32);
  v37 = *(v49 + v36);
  v38 = *(v29 + v36);
  if (v37 == 7)
  {
    if (v38 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_15;
  }

  v39 = *(v26 + 36);
  v40 = *(v49 + v39);
  v41 = *(v29 + v39);
  if (v40 == 7)
  {
    if (v41 != 7)
    {
      goto LABEL_15;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_15;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf038CLP_LogEntry_PrivateData_MapsRouteHintG0V_Tt1g5(*v49, *v29))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v32 & 1;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MotionStateObserver.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSg_ADtMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSg_ADtMR);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v55 + v19;
  v22 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v35, v52, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v48, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
LABEL_22:
    v24 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSg_ADtMd;
    v25 = &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSg_ADtMR;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  v45 = specialized static CLP_LogEntry_PrivateData_WorkoutUpdate.== infix(_:_:)(v42, v44);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  outlined destroy of Any?(v39, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMd, &_s10ALProtobuf38CLP_LogEntry_PrivateData_WorkoutUpdateVSgMR);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ClientSatelliteInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 7)
  {
    if (v7 != 7)
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
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
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

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
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
      return 0;
    }
  }

  v33 = v4[11];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 == 2)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

LABEL_46:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SensorFusionStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_XtraFileAvailable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
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
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_SignalEnvironment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v34 = type metadata accessor for CLP_LogEntry_PrivateData_SignalEnvironment(0);
  v35 = a1;
  v14 = v34[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v33;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v34[6];
  v22 = *(v35 + v21);
  v23 = *(a2 + v21);
  if (v22 == 8)
  {
    if (v23 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v34[7];
  v25 = *(v35 + v24);
  v26 = *(a2 + v24);
  if (v25 == 8)
  {
    if (v26 != 8)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v34[8];
  v28 = (v35 + v27);
  v29 = *(v35 + v27 + 4);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 4);
  if (v29)
  {
    if (v31)
    {
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WifiAssociationState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAssociationState(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_12;
  }

  v18 = a1;
  v19 = a2;
  v20 = *(v14 + 24);
  v21 = *(v11 + 48);
  v26[1] = v18;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18 + v20, v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v19 + v20, &v13[v21], &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
LABEL_15:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_11;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
LABEL_11:
    outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSg_ADtMR);
    goto LABEL_12;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v21], v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  v25 = specialized static CLP_LogEntry_PrivateData_WifiAccessPoint.== infix(_:_:)(v10, v7);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint);
  outlined destroy of Any?(v13, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointVSgMR);
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_TechnologyStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 14)
  {
    if (v7 != 14)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WifiAccessPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WifiAccessPoint(0);
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
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
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

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 4)
  {
    if (v25 != 4)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  v26 = v4[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
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
      return 0;
    }
  }

  v31 = v4[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  v36 = v4[11];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v4[12];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v40 ^ v41) & 1) != 0)
  {
    return 0;
  }

  v42 = v4[13];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 != 4)
  {
    if (v43 == v44)
    {
      goto LABEL_52;
    }

    return 0;
  }

  if (v44 != 4)
  {
    return 0;
  }

LABEL_52:
  v45 = v4[14];
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_TunnelEndPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSg_ADtMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPoint(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v61 + v19;
  v22 = v61;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v35, v58, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
LABEL_27:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v54, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
LABEL_22:
    v24 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSg_ADtMd;
    v25 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSg_ADtMR;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = closure #1 in static CLP_LogEntry_PrivateData_TunnelEndPointAssistance.== infix(_:_:)(v47, v48);

    if ((v49 & 1) == 0)
    {
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v54, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
      v24 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd;
      v25 = &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v50, type metadata accessor for CLP_LogEntry_PrivateData_TunnelEndPointAssistance);
  outlined destroy of Any?(v39, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMd, &_s10ALProtobuf49CLP_LogEntry_PrivateData_TunnelEndPointAssistanceVSgMR);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WorkoutUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 72)
  {
    if (v17 != 72)
    {
      goto LABEL_18;
    }
  }

  else if (v17 == 72 || qword_23D1C6DD8[v16] != qword_23D1C6DD8[v17])
  {
    goto LABEL_18;
  }

  v18 = v14[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_18;
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
      goto LABEL_18;
    }
  }

  v35 = v14;
  v23 = v14[7];
  v24 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v23, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v25 = a2 + v23;
  v26 = v24;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, &v13[v24], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v27(&v13[v26], 1, v4) != 1)
    {
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v26], v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v30 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v30 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_17:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_18;
  }

  if (v27(&v13[v26], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_21:
  v31 = v35[8];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 != 72)
  {
    if (v33 == 72 || qword_23D1C6DD8[v32] != qword_23D1C6DD8[v33])
    {
      goto LABEL_18;
    }

LABEL_26:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v28 & 1;
  }

  if (v33 == 72)
  {
    goto LABEL_26;
  }

LABEL_18:
  v28 = 0;
  return v28 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_OutdoorUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_OutdoorUpdate(0);
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
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v19 != v20)
  {
    return 0;
  }

  v21 = v4[9];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
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
      return 0;
    }
  }

  v26 = v4[10];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 != 4)
  {
    if (v27 == v28)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v28 != 4)
  {
    return 0;
  }

LABEL_31:
  v29 = v4[11];
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

  v32 = v4[12];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WorkoutSettings.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 67)
  {
    if (v23 != 67)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 != 5)
  {
    if (v25 == v26)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v26 != 5)
  {
    return 0;
  }

LABEL_27:
  v27 = v4[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 3)
  {
    if (v29 != 3)
    {
      return 0;
    }
  }

  else if (v28 != v29)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WorkoutEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v65[-v6];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSg_ADtMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSg_ADtMR);
  MEMORY[0x28223BE20](v69);
  v72 = &v65[-v7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v76 = &v65[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v73 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v65[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v65[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v74 = &v65[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v65[-v24];
  v78 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v79 = v18;
  v26 = v78[5];
  v27 = *(v18 + 48);
  v77 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v26, v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v80 + v26, &v25[v27], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v28 = *(v9 + 48);
  if (v28(v25, 1, v8) == 1)
  {
    if (v28(&v25[v27], 1, v8) == 1)
    {
      outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v25;
LABEL_14:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_15;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v25, v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(&v25[v27], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = &v25[v27];
  v33 = v76;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v32, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v34 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v17, v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v33, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v25, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v35 = v78;
  v36 = v78[6];
  v37 = *(v79 + 48);
  v38 = v77;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77 + v36, v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v39 = v80 + v36;
  v40 = v80;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, &v23[v37], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(v23, 1, v8) == 1)
  {
    if (v28(&v23[v37], 1, v8) == 1)
    {
      outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v41 = v75;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v75, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(&v23[v37], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v41, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_13:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v23;
    goto LABEL_14;
  }

  v44 = &v23[v37];
  v45 = v76;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v44, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v66 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v41, v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v41, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v46 = v35[7];
  v47 = *(v38 + v46);
  v48 = *(v40 + v46);
  if (v47 == 19)
  {
    if (v48 != 19)
    {
      goto LABEL_15;
    }
  }

  else if (v47 != v48)
  {
    goto LABEL_15;
  }

  v49 = v35[8];
  v50 = *(v79 + 48);
  v51 = v74;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v49, v74, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40 + v49, &v51[v50], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(v51, 1, v8) != 1)
  {
    v52 = v73;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v51, v73, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v28(&v51[v50], 1, v8) != 1)
    {
      v53 = &v51[v50];
      v54 = v76;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v53, v76, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v55 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v52, v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v51, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v52, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_27;
  }

  if (v28(&v51[v50], 1, v8) != 1)
  {
LABEL_27:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v51;
    goto LABEL_14;
  }

  outlined destroy of Any?(v51, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_29:
  v56 = v78[9];
  v57 = *(v69 + 48);
  v58 = v72;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38 + v56, v72, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v40 + v56, &v58[v57], &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  v59 = v71;
  v60 = *(v70 + 48);
  if (v60(v58, 1, v71) == 1)
  {
    if (v60(&v58[v57], 1, v59) == 1)
    {
      outlined destroy of Any?(v58, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
LABEL_36:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }

    goto LABEL_34;
  }

  v61 = v68;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v58, v68, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  if (v60(&v58[v57], 1, v59) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
LABEL_34:
    v29 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSg_ADtMd;
    v30 = &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSg_ADtMR;
    v31 = v58;
    goto LABEL_14;
  }

  v62 = &v58[v57];
  v63 = v67;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v62, v67, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  v64 = specialized static CLP_LogEntry_PrivateData_WorkoutSettings.== infix(_:_:)(v61, v63);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v63, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  outlined destroy of Any?(v58, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMd, &_s10ALProtobuf40CLP_LogEntry_PrivateData_WorkoutSettingsVSgMR);
  if (v64)
  {
    goto LABEL_36;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_PlaceInference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_PlaceInference(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    if (*v12 != *v14 || v13 != v15)
    {
      v17 = v4;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_25:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (!v23)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Gyro.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v28 = a4;
  v29 = a5;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  v26 = a3(0);
  v18 = *(v26 + 24);
  v19 = *(v15 + 56);
  v30 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v18, v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v18, &v17[v19], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v20 = *(v9 + 48);
  if (v20(v17, 1, v8) == 1)
  {
    if (v20(&v17[v19], 1, v8) == 1)
    {
      outlined destroy of Any?(v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v17, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v20(&v17[v19], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v21 = v27;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v17[v19], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v22 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v13, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v13, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v17, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34CLP_LogEntry_PrivateData_MagSampleV_Tt1g5Tm(*v30, *a2, v28, v29) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_ReachabilityState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReachabilityState(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v7 == 5 || qword_23D1C7018[v6] != qword_23D1C7018[v7])
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v10 == 5 || qword_23D1C7018[v9] != qword_23D1C7018[v10])
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_DeviceMotionSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus(0);
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v87 = &v85 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSg_ADtMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSg_ADtMR);
  MEMORY[0x28223BE20](v88);
  v91 = &v85 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion(0);
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v85 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSg_ADtMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSg_ADtMR);
  MEMORY[0x28223BE20](v94);
  v97 = &v85 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v85 - v22;
  v98 = type metadata accessor for CLP_LogEntry_PrivateData_DeviceMotionSample(0);
  v99 = a1;
  v24 = *(v98 + 20);
  v25 = *(v21 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v26 = v100 + v24;
  v27 = v100;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, &v23[v25], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v23;
LABEL_15:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_16;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v19, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v23[v25], v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v34 = v98;
  v33 = v99;
  v35 = *(v98 + 24);
  v36 = *(v94 + 48);
  v37 = v97;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v99 + v35, v97, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v35, v37 + v36, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  v38 = v96;
  v39 = *(v95 + 48);
  if (v39(v37, 1, v96) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v40 = v93;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v93, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
LABEL_13:
    v29 = &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSg_ADtMd;
    v30 = &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSg_ADtMR;
LABEL_14:
    v31 = v37;
    goto LABEL_15;
  }

  v43 = v92;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v37 + v36, v92, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  v44 = *(v38 + 20);
  v45 = *(v40 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {

    v47 = closure #1 in static CLP_LogEntry_PrivateData_MotionTypeDeviceMotion.== infix(_:_:)(v45, v46);

    if ((v47 & 1) == 0)
    {
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
      v29 = &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd;
      v30 = &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v40, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeDeviceMotion);
  outlined destroy of Any?(v37, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMd, &_s10ALProtobuf041CLP_LogEntry_PrivateData_MotionTypeDeviceG0VSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v49 = v34[7];
  v50 = *(v33 + v49);
  v51 = *(v27 + v49);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    goto LABEL_16;
  }

  v52 = v34[8];
  v53 = (v33 + v52);
  v54 = *(v33 + v52 + 4);
  v55 = (v27 + v52);
  v56 = *(v27 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_16;
    }
  }

  v57 = v34[9];
  v58 = *(v33 + v57);
  v59 = *(v27 + v57);
  if (v58 == 5)
  {
    if (v59 != 5)
    {
      goto LABEL_16;
    }
  }

  else if (v58 != v59)
  {
    goto LABEL_16;
  }

  v60 = v34[10];
  v61 = *(v88 + 48);
  v62 = v91;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33 + v60, v91, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  v63 = v27 + v60;
  v37 = v62;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v63, v62 + v61, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
  v64 = v90;
  v65 = *(v89 + 48);
  if (v65(v62, 1, v90) != 1)
  {
    v71 = v87;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v37, v87, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
    if (v65(v37 + v61, 1, v64) == 1)
    {
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
      goto LABEL_45;
    }

    v72 = v37 + v61;
    v73 = v86;
    outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v72, v86, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    v74 = *(v64 + 20);
    v75 = (v71 + v74);
    v76 = *(v71 + v74 + 4);
    v77 = (v73 + v74);
    v78 = *(v73 + v74 + 4);
    if (v76)
    {
      if (!v78)
      {
LABEL_48:
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
        v29 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd;
        v30 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR;
        goto LABEL_14;
      }
    }

    else
    {
      if (*v75 != *v77)
      {
        LOBYTE(v78) = 1;
      }

      if (v78)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v73, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v71, type metadata accessor for CLP_LogEntry_PrivateData_SensorFusionStatus);
    outlined destroy of Any?(v37, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
    if ((v84 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  if (v65(v62 + v61, 1, v64) != 1)
  {
LABEL_45:
    v29 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSg_ADtMd;
    v30 = &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSg_ADtMR;
    goto LABEL_14;
  }

  outlined destroy of Any?(v62, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMd, &_s10ALProtobuf43CLP_LogEntry_PrivateData_SensorFusionStatusVSgMR);
LABEL_40:
  v66 = v34[11];
  v67 = (v33 + v66);
  v68 = *(v33 + v66 + 4);
  v69 = (v27 + v66);
  v70 = *(v27 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_16;
    }
  }

  v79 = v34[12];
  v80 = (v33 + v79);
  v81 = *(v33 + v79 + 4);
  v82 = (v27 + v79);
  v83 = *(v27 + v79 + 4);
  if (v81)
  {
    if (v83)
    {
LABEL_63:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if ((v83 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_16:
  v41 = 0;
  return v41 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WifiScanResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(char *, char *))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v26 = a3(0);
  v19 = *(v26 + 24);
  v20 = *(v16 + 56);
  v31 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v19, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  v22 = v27;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v23 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointV_Tt1g5Tm(*v31, *a2, v28, v29, v30) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v24 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Natalimetry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSg_ADtMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSg_ADtMR);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v53 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  v54 = a1;
  v19 = v53[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v55 + v19;
  v22 = v55;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v53[6];
  v31 = (v54 + v30);
  v32 = *(v54 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v53[7];
  v36 = *(v49 + 48);
  v37 = v52;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54 + v35, v52, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  v40 = v51;
  v41 = *(v50 + 48);
  if (v41(v37, 1, v51) == 1)
  {
    if (v41(v37 + v36, 1, v40) == 1)
    {
      outlined destroy of Any?(v37, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
LABEL_24:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v42 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v48, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
LABEL_22:
    v24 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSg_ADtMd;
    v25 = &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSg_ADtMR;
    v26 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v36;
  v44 = v47;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v43, v47, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  v45 = specialized static CLP_LogEntry_PrivateData_BodyMetrics.== infix(_:_:)(v42, v44);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v44, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v42, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  outlined destroy of Any?(v39, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMd, &_s10ALProtobuf36CLP_LogEntry_PrivateData_BodyMetricsVSgMR);
  if (v45)
  {
    goto LABEL_24;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MotionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v61 + v19;
  v22 = v61;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v35, v58, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
LABEL_27:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v54, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
LABEL_22:
    v24 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMd;
    v25 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSg_ADtMR;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = closure #1 in static CLP_LogEntry_PrivateData_MotionActivity.== infix(_:_:)(v47, v48);

    if (!v49)
    {
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v54, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
      v24 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd;
      v25 = &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v50, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  outlined destroy of Any?(v39, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMd, &_s10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityVSgMR);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_BodyMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
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
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
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

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
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
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      return 0;
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
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
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
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      return 0;
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
      return 0;
    }
  }

  v48 = v4[14];
  v49 = *(a1 + v48);
  v50 = *(a2 + v48);
  if (v49 != 8)
  {
    if (v49 == v50)
    {
      goto LABEL_57;
    }

    return 0;
  }

  if (v50 != 8)
  {
    return 0;
  }

LABEL_57:
  v51 = v4[15];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      return 0;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WristState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v41 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v42 = a1;
  v14 = v41[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v40;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v40, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v41[6];
  v22 = *(v42 + v21);
  v23 = *(a2 + v21);
  if (v22 == 4)
  {
    if (v23 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v22 != v23)
  {
    goto LABEL_7;
  }

  v24 = v41[7];
  v25 = *(v42 + v24);
  v26 = *(a2 + v24);
  if (v25 == 4)
  {
    if (v26 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  v27 = v41[8];
  v28 = *(v42 + v27);
  v29 = *(a2 + v27);
  if (v28 == 4)
  {
    if (v29 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_7;
  }

  v30 = v41[9];
  v31 = *(v42 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    goto LABEL_7;
  }

  v33 = v41[10];
  v34 = *(v42 + v33);
  v35 = *(a2 + v33);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    goto LABEL_7;
  }

  v36 = v41[11];
  v37 = *(v42 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 == 2)
    {
LABEL_37:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v38 != 2 && ((v37 ^ v38) & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WatchOrientation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 4)
  {
    if (v7 != 4)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_WatchState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_WristState(0);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v63 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSg_ADtMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSg_ADtMR);
  MEMORY[0x28223BE20](v67);
  v70 = &v63 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation(0);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v63 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSg_ADtMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSg_ADtMR);
  MEMORY[0x28223BE20](v72);
  v75 = &v63 - v12;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v76 = type metadata accessor for CLP_LogEntry_PrivateData_WatchState(0);
  v77 = a1;
  v24 = v76[5];
  v25 = *(v21 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v24, v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v26 = v78 + v24;
  v27 = v78;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, &v23[v25], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v30 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v31 = v23;
LABEL_28:
    outlined destroy of Any?(v31, v29, v30);
    goto LABEL_29;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23, v19, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v23[v25], v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v32 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v19, v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v16, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v23, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v32 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  v34 = v76;
  v33 = v77;
  v35 = v76[6];
  v36 = (v77 + v35);
  v37 = *(v77 + v35 + 4);
  v38 = (v27 + v35);
  v39 = *(v27 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_29;
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
      goto LABEL_29;
    }
  }

  v40 = v76[7];
  v41 = *(v72 + 48);
  v42 = v75;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v77 + v40, v75, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v43 = v27 + v40;
  v44 = v42;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v43, v42 + v41, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
  v45 = v74;
  v46 = *(v73 + 48);
  if (v46(v42, 1, v74) != 1)
  {
    v47 = v71;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v71, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
    if (v46(v44 + v41, 1, v45) != 1)
    {
      v48 = v44 + v41;
      v49 = v66;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v48, v66, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      v50 = specialized static CLP_LogEntry_PrivateData_WatchOrientation.== infix(_:_:)(v47, v49);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v49, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v47, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
      outlined destroy of Any?(v44, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
      if ((v50 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v47, type metadata accessor for CLP_LogEntry_PrivateData_WatchOrientation);
LABEL_19:
    v29 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSg_ADtMd;
    v30 = &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSg_ADtMR;
LABEL_27:
    v31 = v44;
    goto LABEL_28;
  }

  if (v46(v42 + v41, 1, v45) != 1)
  {
    goto LABEL_19;
  }

  outlined destroy of Any?(v42, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMd, &_s10ALProtobuf41CLP_LogEntry_PrivateData_WatchOrientationVSgMR);
LABEL_21:
  v51 = v34[8];
  v52 = *(v67 + 48);
  v53 = v70;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v33 + v51, v70, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v54 = v27 + v51;
  v44 = v53;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v54, v53 + v52, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  v55 = v69;
  v56 = *(v68 + 48);
  if (v56(v53, 1, v69) == 1)
  {
    if (v56(v53 + v52, 1, v55) == 1)
    {
      outlined destroy of Any?(v53, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
LABEL_32:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v58 & 1;
    }

    goto LABEL_26;
  }

  v57 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v44, v65, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  if (v56(v44 + v52, 1, v55) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
LABEL_26:
    v29 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSg_ADtMd;
    v30 = &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSg_ADtMR;
    goto LABEL_27;
  }

  v60 = v44 + v52;
  v61 = v64;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v60, v64, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  v62 = specialized static CLP_LogEntry_PrivateData_WristState.== infix(_:_:)(v57, v61);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v61, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v57, type metadata accessor for CLP_LogEntry_PrivateData_WristState);
  outlined destroy of Any?(v44, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMd, &_s10ALProtobuf35CLP_LogEntry_PrivateData_WristStateVSgMR);
  if (v62)
  {
    goto LABEL_32;
  }

LABEL_29:
  v58 = 0;
  return v58 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_BaroSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_BaroSample(0);
  v34 = a1;
  v14 = v33[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v32;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v33[6];
  v22 = (v34 + v21);
  v23 = *(v34 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v33[7];
  v27 = (v34 + v26);
  v28 = *(v34 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (v30)
    {
LABEL_22:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_StepCount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry(0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSg_ADtMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_StepCount(0);
  v60 = a1;
  v19 = v59[5];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v61 + v19;
  v22 = v61;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v25 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v26 = v18;
LABEL_7:
    outlined destroy of Any?(v26, v24, v25);
    goto LABEL_8;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v29 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v59[6];
  v31 = (v60 + v30);
  v32 = *(v60 + v30 + 4);
  v33 = (v22 + v30);
  v34 = *(v22 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_8;
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
      goto LABEL_8;
    }
  }

  v35 = v59[7];
  v36 = *(v55 + 48);
  v37 = v58;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v60 + v35, v58, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  v38 = v22 + v35;
  v39 = v37;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v38, v37 + v36, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  v40 = *(v56 + 48);
  v41 = v37;
  v42 = v57;
  if (v40(v41, 1, v57) == 1)
  {
    if (v40(v39 + v36, 1, v42) == 1)
    {
      outlined destroy of Any?(v39, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
LABEL_27:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_22;
  }

  v43 = v54;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v39, v54, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  if (v40(v39 + v36, 1, v42) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v43, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
LABEL_22:
    v24 = &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSg_ADtMd;
    v25 = &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSg_ADtMR;
LABEL_23:
    v26 = v39;
    goto LABEL_7;
  }

  v44 = v42;
  v45 = v53;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v39 + v36, v53, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  v46 = *(v44 + 20);
  v47 = *(v43 + v46);
  v48 = *(v45 + v46);
  if (v47 != v48)
  {

    v49 = closure #1 in static CLP_LogEntry_PrivateData_StepCountEntry.== infix(_:_:)(v47, v48);

    if (!v49)
    {
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v54, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
      v24 = &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd;
      v25 = &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR;
      goto LABEL_23;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v50 = v54;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v45, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v50, type metadata accessor for CLP_LogEntry_PrivateData_StepCountEntry);
  outlined destroy of Any?(v39, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMd, &_s10ALProtobuf034CLP_LogEntry_PrivateData_StepCountD0VSgMR);
  if (v51)
  {
    goto LABEL_27;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_DirectionOfTravel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v79 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v78 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v80 = type metadata accessor for CLP_LogEntry_PrivateData_DirectionOfTravel(0);
  v81 = a1;
  v14 = v80[5];
  v15 = *(v11 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v79;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v79, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v21 = v80[6];
  v22 = (v81 + v21);
  v23 = *(v81 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v26 = v80[7];
  v27 = (v81 + v26);
  v28 = *(v81 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v31 = v80[8];
  v32 = (v81 + v31);
  v33 = *(v81 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v80[9];
  v37 = (v81 + v36);
  v38 = *(v81 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v80[10];
  v42 = (v81 + v41);
  v43 = *(v81 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v80[11];
  v47 = (v81 + v46);
  v48 = *(v81 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_7;
    }
  }

  v51 = v80[12];
  v52 = (v81 + v51);
  v53 = *(v81 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_7;
    }
  }

  v56 = v80[13];
  v57 = (v81 + v56);
  v58 = *(v81 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_7;
    }
  }

  v61 = v80[14];
  v62 = (v81 + v61);
  v63 = *(v81 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_7;
    }
  }

  v66 = v80[15];
  v67 = *(v81 + v66);
  v68 = *(a2 + v66);
  if (v67 == 2)
  {
    if (v68 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v68 == 2 || ((v67 ^ v68) & 1) != 0)
  {
    goto LABEL_7;
  }

  v69 = v80[16];
  v70 = *(v81 + v69);
  v71 = *(a2 + v69);
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v71 == 2 || ((v70 ^ v71) & 1) != 0)
  {
    goto LABEL_7;
  }

  v72 = v80[17];
  v73 = *(v81 + v72);
  v74 = *(a2 + v72);
  if (v73 == 2)
  {
    if (v74 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (v74 == 2 || ((v73 ^ v74) & 1) != 0)
  {
    goto LABEL_7;
  }

  v75 = v80[18];
  v76 = *(v81 + v75);
  v77 = *(a2 + v75);
  if (v76 == 2)
  {
    if (v77 == 2)
    {
LABEL_84:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else if (v77 != 2 && ((v76 ^ v77) & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MotionTypeVector3.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeVector3(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_CompassTypeSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSg_ADtMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSg_ADtMR);
  MEMORY[0x28223BE20](v59);
  v63 = &v56 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v62 = type metadata accessor for CLP_LogEntry_PrivateData_CompassTypeSample(0);
  v19 = *(v62 + 20);
  v20 = *(v16 + 56);
  v64 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65 + v19, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v23 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v24 = v18;
LABEL_15:
    outlined destroy of Any?(v24, v22, v23);
    goto LABEL_16;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v25 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v25 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v27 = v62;
  v26 = v63;
  v28 = *(v62 + 24);
  v29 = *(v59 + 48);
  v30 = v64;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v64 + v28, v63, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  v31 = v65;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v65 + v28, v26 + v29, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
  v32 = v61;
  v33 = *(v60 + 48);
  if (v33(v26, 1, v61) != 1)
  {
    v34 = v58;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26, v58, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
    if (v33(v26 + v29, 1, v32) != 1)
    {
      v37 = v57;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v26 + v29, v57, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v38 = *(v32 + 20);
      v39 = *(v34 + v38);
      v40 = *(v37 + v38);
      if (v39 == v40 || (, , v41 = closure #1 in static CLP_LogEntry_PrivateData_MotionTypeCompass.== infix(_:_:)(v39, v40), , , v41))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v37, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
        outlined destroy of Any?(v26, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v37, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
      v22 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd;
      v23 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR;
      goto LABEL_14;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v34, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeCompass);
LABEL_13:
    v22 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSg_ADtMd;
    v23 = &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSg_ADtMR;
LABEL_14:
    v24 = v26;
    goto LABEL_15;
  }

  if (v33(v26 + v29, 1, v32) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of Any?(v26, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMd, &_s10ALProtobuf42CLP_LogEntry_PrivateData_MotionTypeCompassVSgMR);
LABEL_21:
  v43 = v27[7];
  v44 = (v30 + v43);
  v45 = *(v30 + v43 + 4);
  v46 = (v31 + v43);
  v47 = *(v31 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_16;
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
      goto LABEL_16;
    }
  }

  v48 = v27[8];
  v49 = (v30 + v48);
  v50 = *(v30 + v48 + 4);
  v51 = (v31 + v48);
  v52 = *(v31 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_16;
    }
  }

  v53 = v27[9];
  v54 = *(v30 + v53);
  v55 = *(v31 + v53);
  if (v54 == 2)
  {
    if (v55 == 2)
    {
LABEL_39:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }
  }

  else if (v55 != 2 && ((v54 ^ v55) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Battery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Battery(0);
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
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v13 = v4[7];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 5)
  {
    if (v18 != 5)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = v4[9];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  v22 = v4[10];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Timer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v23 = a1;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = *(a3(0) + 20);
  v16 = *(v12 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v23 + v15, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v15, &v14[v16], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      outlined destroy of Any?(v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v14, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  v19 = v22;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v14[v16], v22, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v20 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v10, v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v19, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MagSample.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v40 = a3(0);
  v41 = a1;
  v16 = v40[5];
  v17 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v16, &v15[v17], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v11, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v21 = v39;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v15[v17], v39, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v22 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v11, v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_7;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v15, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_10:
  v23 = v40[6];
  v24 = (v41 + v23);
  v25 = *(v41 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      goto LABEL_7;
    }
  }

  v28 = v40[7];
  v29 = (v41 + v28);
  v30 = *(v41 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_7;
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
      goto LABEL_7;
    }
  }

  v33 = v40[8];
  v34 = (v41 + v33);
  v35 = *(v41 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (v37)
    {
LABEL_28:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_Baro.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_Baro(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  v17 = v23;
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v23, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v18 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v17, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf35CLP_LogEntry_PrivateData_BaroSampleV_Tt1g5(*v24, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v20 = v4[9];
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(*a1, *a2))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v69 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures(0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v60 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMR);
  MEMORY[0x28223BE20](v63);
  v66 = &v60 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v60 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v67 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna(0);
  v68 = a1;
  v19 = v67[6];
  v20 = *(v16 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v21 = v69;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v69 + v19, &v18[v20], &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMd;
    v24 = &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSg_ADtMR;
    v25 = v18;
LABEL_7:
    outlined destroy of Any?(v25, v23, v24);
    goto LABEL_26;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  v26 = specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox.== infix(_:_:)(v14, v11);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBox);
  outlined destroy of Any?(v18, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMd, &_s10ALProtobuf64CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBoundingBoxVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v27 = v68;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf59CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaBranchV_Tt1g5(*v68, *v21) & 1) == 0)
  {
    goto LABEL_26;
  }

  v28 = v67;
  v29 = v67[7];
  v30 = (v27 + v29);
  v31 = *(v27 + v29 + 8);
  v32 = (v21 + v29);
  v33 = *(v21 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_26;
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
      goto LABEL_26;
    }
  }

  v34 = v67[8];
  v35 = *(v27 + v34);
  v36 = *(v21 + v34);
  if (v35 == 4)
  {
    if (v36 != 4)
    {
      goto LABEL_26;
    }
  }

  else if (v35 != v36)
  {
    goto LABEL_26;
  }

  v37 = v67[9];
  v38 = (v27 + v37);
  v39 = *(v27 + v37 + 4);
  v40 = (v21 + v37);
  v41 = *(v21 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_26;
    }
  }

  v44 = v67[10];
  v45 = *(v63 + 48);
  v46 = v66;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v44, v66, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v47 = v21 + v44;
  v48 = v46;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v47, v46 + v45, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
  v49 = v65;
  v50 = *(v64 + 48);
  if (v50(v46, 1, v65) != 1)
  {
    v51 = v62;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48, v62, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
    if (v50(v48 + v45, 1, v49) != 1)
    {
      v52 = v48 + v45;
      v53 = v61;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v52, v61, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      v54 = specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures.== infix(_:_:)(v51, v53);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v53, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
      outlined destroy of Any?(v48, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
      if ((v54 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v51, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.TreeFeatures);
    goto LABEL_33;
  }

  if (v50(v46 + v45, 1, v49) != 1)
  {
LABEL_33:
    v23 = &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMd;
    v24 = &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSg_AFtMR;
    v25 = v48;
    goto LABEL_7;
  }

  outlined destroy of Any?(v46, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMd, &_s10ALProtobuf53CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavannaV12TreeFeaturesVSgMR);
LABEL_35:
  v55 = v28[11];
  v56 = (v27 + v55);
  v57 = *(v27 + v55 + 8);
  v58 = (v21 + v55);
  v59 = *(v21 + v55 + 8);
  if (v57)
  {
    if (v59)
    {
LABEL_41:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if ((v59 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_26:
  v42 = 0;
  return v42 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapTropicalSavannaData(0);
  v14 = *(v26 + 24);
  v15 = *(v11 + 56);
  v28 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_8:
      v20 = v28;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf40CLP_LogEntry_PrivateData_WifiAccessPointV_Tt1g5Tm(*v28, *a2, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna, specialized static CLP_LogEntry_PrivateData_GEOMapFeatureTropicalSavanna.== infix(_:_:)))
      {
        v21 = *(v26 + 28);
        v22 = *(v20 + v21);
        v23 = *(a2 + v21);
        if (v22 == 2)
        {
          if (v23 != 2)
          {
            goto LABEL_14;
          }
        }

        else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
        {
          goto LABEL_14;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v17 & 1;
      }

LABEL_14:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v27;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v27, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      v19 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v9, v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v18, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  }

  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_VehicleSpeed.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v30 = v14[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v35 = v14[9];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v40 = v14[10];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v45 = v14[11];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 8);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 8);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_49;
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
      goto LABEL_49;
    }
  }

  v50 = v14[12];
  v51 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v50, v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v52 = a2 + v50;
  v53 = v51;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v52, &v13[v51], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v54 = *(v5 + 48);
  if (v54(v13, 1, v4) == 1)
  {
    if (v54(&v13[v53], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
LABEL_52:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v55 & 1;
    }

    goto LABEL_48;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v54(&v13[v53], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
LABEL_48:
    outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
    goto LABEL_49;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v53], v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v57 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v10, v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v7, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v10, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v13, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v57)
  {
    goto LABEL_52;
  }

LABEL_49:
  v55 = 0;
  return v55 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GeomagneticModelData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMR);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for CLP_LogEntry_PrivateData_GeomagneticModelData(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v14, v13, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v14, &v13[v15], &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v9, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
LABEL_6:
    outlined destroy of Any?(v13, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSg_ADtMR);
    goto LABEL_7;
  }

  v18 = v21[0];
  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v13[v15], v21[0], type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  v19 = specialized static CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData.== infix(_:_:)(v9, v18);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v18, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v9, type metadata accessor for CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelData);
  outlined destroy of Any?(v13, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMd, &_s10ALProtobuf051CLP_LogEntry_PrivateData_MotionTypeGeomagneticModelF0VSgMR);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapFeatureBuildingSection(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  v18 = v4[9];
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

  v23 = v4[10];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[11];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
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
      return 0;
    }
  }

  v33 = v4[12];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOMapBuildingData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v48 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D(0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMR);
  MEMORY[0x28223BE20](v42);
  v46 = &v39 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_GEOMapBuildingData(0);
  v19 = *(v43 + 28);
  v20 = *(v16 + 56);
  v47 = a1;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v19, v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v21 = v48;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v48 + v19, &v18[v20], &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMd;
    v24 = &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSg_ADtMR;
    v25 = v18;
LABEL_7:
    outlined destroy of Any?(v25, v23, v24);
    goto LABEL_19;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18, v14, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v26 = specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(v14, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v14, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  outlined destroy of Any?(v18, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMd, &_s10ALProtobuf34CLP_LogEntry_PrivateData_TimeStampVSgMR);
  if ((v26 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v27 = v47;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf46CLP_LogEntry_PrivateData_GEOMapFeatureBuildingV_Tt1g5(*v47, *v21) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(v27[1], v21[1]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = *(v43 + 32);
  v29 = *(v42 + 48);
  v30 = v46;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v27 + v28, v46, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v21 + v28, v30 + v29, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) != 1)
  {
    v33 = v41;
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v30, v41, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
    if (v32(v30 + v29, 1, v31) != 1)
    {
      v34 = v30 + v29;
      v35 = v40;
      outlined init with take of CLP_LogEntry_PrivateData_TimeStamp(v34, v40, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      v36 = specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(v33, v35, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v35, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v33, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
      outlined destroy of Any?(v30, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
      if (v36)
      {
        goto LABEL_18;
      }

LABEL_19:
      v37 = 0;
      return v37 & 1;
    }

    outlined destroy of CLP_LogEntry_PrivateData_TimeStamp(v33, type metadata accessor for CLP_LogEntry_PrivateData_GEOLocationCoordinate2D);
    goto LABEL_16;
  }

  if (v32(v30 + v29, 1, v31) != 1)
  {
LABEL_16:
    v23 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMd;
    v24 = &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSg_ADtMR;
    v25 = v30;
    goto LABEL_7;
  }

  outlined destroy of Any?(v30, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMd, &_s10ALProtobuf48CLP_LogEntry_PrivateData_GEOLocationCoordinate2DVSgMR);
LABEL_18:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v37 & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_GEOLocationCoordinate2D.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
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

  v11 = *(v5 + 24);
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
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
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MapsRouteHintData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapsRouteHintData(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_MapMatcherData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_TunnelEndPointAssistance.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static CLP_LogEntry_PrivateData_LocationDerivedSpeed.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_TimeStamp and conformance CLP_LogEntry_PrivateData_TimeStamp(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType and conformance CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationType and conformance CLP_LogEntry_PrivateData_LocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ClientSatelliteConstellation and conformance CLP_LogEntry_PrivateData_ClientSatelliteConstellation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchedLocationFixType and conformance CLP_LogEntry_PrivateData_BatchedLocationFixType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssModeOfOperation and conformance CLP_LogEntry_PrivateData_GnssModeOfOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_RhythmicGnssWakeMode and conformance CLP_LogEntry_PrivateData_RhythmicGnssWakeMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatchMode and conformance CLP_LogEntry_PrivateData_BatchMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_OperatingMode and conformance CLP_LogEntry_PrivateData_OperatingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_PipelineOperatingMode and conformance CLP_LogEntry_PrivateData_PipelineOperatingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DominantMotionModeType and conformance CLP_LogEntry_PrivateData_DominantMotionModeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_ReachabilityType and conformance CLP_LogEntry_PrivateData_ReachabilityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BatteryChargerType and conformance CLP_LogEntry_PrivateData_BatteryChargerType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel and conformance CLP_LogEntry_PrivateData_SignalEnvironmentFidelityLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel and conformance CLP_LogEntry_PrivateData_MotionTypeCompassCalibrationLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SensorFusionMode and conformance CLP_LogEntry_PrivateData_SensorFusionMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiAccessPointMode and conformance CLP_LogEntry_PrivateData_WifiAccessPointMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WifiScanType and conformance CLP_LogEntry_PrivateData_WifiScanType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_LocationServicesEnabled and conformance CLP_LogEntry_PrivateData_LocationServicesEnabled);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DataAvailability and conformance CLP_LogEntry_PrivateData_DataAvailability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorType and conformance CLP_LogEntry_PrivateData_IndoorOutdoorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_IndoorOutdoorConfidence and conformance CLP_LogEntry_PrivateData_IndoorOutdoorConfidence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.ClientLocationSuitabilityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType and conformance CLP_LogEntry_PrivateData_DaemonLocation.LocationIntegrityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MatchQualityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy and conformance CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.SignalQualityType and conformance CLP_LogEntry_PrivateData_Location.SignalQualityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_Location.MotionDetectedType and conformance CLP_LogEntry_PrivateData_Location.MotionDetectedType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.MountedStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.MountedStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.ConfidenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicleExitStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType and conformance CLP_LogEntry_PrivateData_MotionActivity.VehicularConfidenceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutLocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode and conformance CLP_LogEntry_PrivateData_WorkoutSettings.WorkoutMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_WorkoutEvent.EventType and conformance CLP_LogEntry_PrivateData_WorkoutEvent.EventType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType and conformance CLP_LogEntry_PrivateData_BodyMetrics.NatalimeterGenderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType and conformance CLP_LogEntry_PrivateData_BodyMetrics.UserConditionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType and conformance CLP_LogEntry_PrivateData_MapMatchingRouteHint.RoutingType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.TransmissionStateType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType and conformance CLP_LogEntry_PrivateData_AccessoryVehicleSpeedNotification.SensorType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_DeviceStatus.NotificationType and conformance CLP_LogEntry_PrivateData_DeviceStatus.NotificationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType and conformance CLP_LogEntry_PrivateData_SignalEnvironment.SignalEnvironmentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType and conformance CLP_LogEntry_PrivateData_StepCountEntry.DistanceSourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability()
{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability;
  if (!lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability and conformance CLP_LogEntry_PrivateData_GnssAvailabilityPrediction.GnssAvailability);
  }

  return result;
}