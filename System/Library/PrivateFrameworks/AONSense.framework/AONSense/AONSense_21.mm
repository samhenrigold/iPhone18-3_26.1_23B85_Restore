uint64_t specialized static Proto_Gnss_Emergency_LocationId.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 7)
  {
    if (v6 != 7)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, specialized static Proto_Gnss_Emergency_LteCellInfo.== infix(_:_:)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf32Proto_Gnss_Emergency_GsmCellInfoV_Tt1g5(a1[1], a2[1]) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf34Proto_Gnss_Emergency_GpsAcqElementV_Tt1g5Tm(a1[2], a2[2], type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, specialized static Proto_Gnss_Emergency_WcdmaCellInfo.== infix(_:_:)))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_TowAssist.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
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
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_PointAltitude.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v30 = a3(0);
  v31 = a1;
  v16 = *(v30 + 20);
  v17 = *(v13 + 56);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v16, v15, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a2 + v16, &v15[v17], &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v15, v11, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v21 = v29;
      outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v15[v17], v29, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v22 = specialized static Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted.== infix(_:_:)(v11, v21, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v21, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      outlined destroy of Any?(v15, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    outlined destroy of Any?(v15, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSg_ADtMR);
    goto LABEL_7;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Any?(v15, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMd, &_s10ALProtobuf35Proto_Gnss_Emergency_EllipsoidPointVSgMR);
LABEL_10:
  v23 = *(v30 + 24);
  v24 = (v31 + v23);
  v25 = *(v31 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (v27)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_CellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_25;
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
      goto LABEL_25;
    }
  }

  v30 = v14[8];
  v31 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(a1 + v30, v13, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v32 = a2 + v30;
  v33 = v31;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v32, &v13[v31], &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  v34 = *(v5 + 48);
  if (v34(v13, 1, v4) == 1)
  {
    if (v34(&v13[v33], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
LABEL_28:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_24;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if (v34(&v13[v33], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_24:
    outlined destroy of Any?(v13, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSg_ADtMR);
    goto LABEL_25;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v13[v33], v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v37 = specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(v10, v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  outlined destroy of Any?(v13, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMd, &_s10ALProtobuf25Proto_Gnss_Emergency_PlmnVSgMR);
  if (v37)
  {
    goto LABEL_28;
  }

LABEL_25:
  v35 = 0;
  return v35 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Polygon.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_GanssStoredSatDataElemV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_HorizWithUncertaintyVelocity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
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
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
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
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_SLPAddress.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = v4[6];
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

  v8 = v4[7];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v4[8];
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

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(*a1, *a2))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_GsmCellInfo.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v5[7];
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

  v19 = v5[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
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
      return 0;
    }
  }

  v24 = v5[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
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
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssMeasurementElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement(0);
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
  if (v26 == 6)
  {
    if (v27 != 6)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
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

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssSignalMeasurementInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v15 = v4[8];
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

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10ALProtobuf43Proto_Gnss_Emergency_WlanMeasurementElementV_Tt1g5Tm(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, specialized static Proto_Gnss_Emergency_GanssMeasurementElement.== infix(_:_:)))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v15 = *(v14 + 20);
  v26 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 7)
  {
    if (v17 != 7)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v26 + v19, v13, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v18 + v19, &v13[v20], &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      outlined destroy of Any?(v13, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v13, v10, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
LABEL_10:
    outlined destroy of Any?(v13, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSg_ADtMR);
    goto LABEL_11;
  }

  outlined init with take of Proto_Gnss_Emergency_SLPAddress(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  v24 = specialized static Proto_Gnss_Emergency_GanssSignalMeasurementInfo.== infix(_:_:)(v10, v7);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v7, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  outlined destroy of Proto_Gnss_Emergency_SLPAddress(v10, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo);
  outlined destroy of Any?(v13, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMd, &_s10ALProtobuf47Proto_Gnss_Emergency_GanssSignalMeasurementInfoVSgMR);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_MeasurementReportWithEstimate.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Proto_Gnss_Emergency_Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
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
  lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Configuration and conformance Proto_Gnss_Emergency_Configuration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_LcsGanssId and conformance Proto_Gnss_Emergency_LcsGanssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionMethod and conformance Proto_Gnss_Emergency_PositionMethod);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionReqType and conformance Proto_Gnss_Emergency_PositionReqType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionSession and conformance Proto_Gnss_Emergency_PositionSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PositionProtocol and conformance Proto_Gnss_Emergency_PositionProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionErrorCode and conformance Proto_Gnss_Emergency_SessionErrorCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_TriggerType and conformance Proto_Gnss_Emergency_TriggerType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Status and conformance Proto_Gnss_Emergency_Status);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_EndCause and conformance Proto_Gnss_Emergency_EndCause);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ConnectionStatus and conformance Proto_Gnss_Emergency_ConnectionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_CellType and conformance Proto_Gnss_Emergency_CellType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FreqMode and conformance Proto_Gnss_Emergency_FreqMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SLPAddressType and conformance Proto_Gnss_Emergency_SLPAddressType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ErrorCodes and conformance Proto_Gnss_Emergency_ErrorCodes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsModemState and conformance Proto_Gnss_Emergency_ClsModemState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SessionProtocol and conformance Proto_Gnss_Emergency_SessionProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_PosProtocol and conformance Proto_Gnss_Emergency_PosProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MethodType and conformance Proto_Gnss_Emergency_MethodType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_Environment and conformance Proto_Gnss_Emergency_Environment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AdditionalInfo and conformance Proto_Gnss_Emergency_AdditionalInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssId and conformance Proto_Gnss_Emergency_GnssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_SupportedGADShapes and conformance Proto_Gnss_Emergency_SupportedGADShapes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_FixType and conformance Proto_Gnss_Emergency_FixType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ClsNetworkType and conformance Proto_Gnss_Emergency_ClsNetworkType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GnssTimeId and conformance Proto_Gnss_Emergency_GnssTimeId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_ShapeType and conformance Proto_Gnss_Emergency_ShapeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_VelocityType and conformance Proto_Gnss_Emergency_VelocityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MultipathIndicator and conformance Proto_Gnss_Emergency_MultipathIndicator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssId and conformance Proto_Gnss_Emergency_GanssId);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementsResult and conformance Proto_Gnss_Emergency_MeasurementsResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AidMask and conformance Proto_Gnss_Emergency_AidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssCommonAidMask and conformance Proto_Gnss_Emergency_GanssCommonAidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssGenericAidMask and conformance Proto_Gnss_Emergency_GanssGenericAidMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GanssSignalIdMask and conformance Proto_Gnss_Emergency_GanssSignalIdMask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AssistanceRequest and conformance Proto_Gnss_Emergency_AssistanceRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_UtranSfnGpsUncertainty and conformance Proto_Gnss_Emergency_UtranSfnGpsUncertainty);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_GpsDopplerUncMpsExt and conformance Proto_Gnss_Emergency_GpsDopplerUncMpsExt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_MeasurementAndEstimateResponseType and conformance Proto_Gnss_Emergency_MeasurementAndEstimateResponseType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_AfltAction and conformance Proto_Gnss_Emergency_AfltAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult()
{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult;
  if (!lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Proto_Gnss_Emergency_WlanMeasurementResult and conformance Proto_Gnss_Emergency_WlanMeasurementResult);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_PositionMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_PositionMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_SessionErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_SessionErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_EndCause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_EndCause(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Proto_Gnss_Emergency_ErrorCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Proto_Gnss_Emergency_ErrorCodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Emergency_SuplConfig(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_LteCellInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_WcdmaCellInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_FreqMode?, &type metadata for Proto_Gnss_Emergency_FreqMode, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_LocationId(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_LteCellInfo], type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GsmCellInfo], type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_WcdmaCellInfo], type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UnknownStorage();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellType?, &type metadata for Proto_Gnss_Emergency_CellType, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_WlanMeasurementRequest(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_WlanMeasurementElement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GsmCellInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_SLPAddress(uint64_t a1)
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SLPAddressType?, &type metadata for Proto_Gnss_Emergency_SLPAddressType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_SuplInitVer2Extension(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SLPAddress?, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_TriggerType?, &type metadata for Proto_Gnss_Emergency_TriggerType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_SuplContext(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Configuration?, type metadata accessor for Proto_Gnss_Emergency_Configuration, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for Proto_Gnss_Emergency_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
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

void type metadata completion function for Proto_Gnss_Emergency_Notification(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for Bool?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_ClsUtranCellTime(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsGpsCellTime?, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsModemState?, &type metadata for Proto_Gnss_Emergency_ClsModemState, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_SessionInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionProtocol?, &type metadata for Proto_Gnss_Emergency_SessionProtocol, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PosProtocol?, &type metadata for Proto_Gnss_Emergency_PosProtocol, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_UtranGpsTimeMeasured(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsUtranCellTime?, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsGpsCellTime?, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsTimeMeasured(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_UtranGpsTimeMeasured?, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased?, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted?, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsTimeMeasuredParams(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsNetworkType?, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsTimeMeasured?, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_Plmn(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_LocationInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_FixType?, &type metadata for Proto_Gnss_Emergency_FixType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsTOD?, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_CellInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Plmn?, type metadata accessor for Proto_Gnss_Emergency_Plmn, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_806Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v16 = a1 + *(a3 + 32);

    return v15(v16, a2, v14);
  }
}

uint64_t __swift_store_extra_inhabitant_index_807Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v18 = a1 + *(a4 + 32);

    return v17(v18, a2, a2, v16);
  }
}

void type metadata completion function for Proto_Gnss_Emergency_UtranGanssTimeMeasured(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt64?, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellInfo?, type metadata accessor for Proto_Gnss_Emergency_CellInfo, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GeranGanssTimeMeasured(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellInfo?, type metadata accessor for Proto_Gnss_Emergency_CellInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_ClsEutranCell(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Plmn?, type metadata accessor for Proto_Gnss_Emergency_Plmn, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssTimeMeasuredParams(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsNetworkType?, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssTimeMeasured?, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssLocationInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GnssTimeId?, &type metadata for Proto_Gnss_Emergency_GnssTimeId, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_FixType?, &type metadata for Proto_Gnss_Emergency_FixType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_PointUncertainEllipse(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidPoint?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidPoint?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_EllipsoidArc(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidPoint?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_PointAltitude(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidPoint?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_EutranCellTime(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t a7)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, a4, a5, MEMORY[0x277D83940]);
  if (v9 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v10 <= 0x3F)
    {
      type metadata accessor for Bool?(319, a6, a7, MEMORY[0x277D83D88]);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_LocEstimate(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ShapeType?, &type metadata for Proto_Gnss_Emergency_ShapeType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ShapeInfo?, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_VelocityInfo(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_HorizontalVelocity?, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_HorizWithVertVelocity?, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity?, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity?, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_VelocityEstimate(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_VelocityType?, &type metadata for Proto_Gnss_Emergency_VelocityType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_VelocityInfo?, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssMeasurementElement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_MultipathIndicator?, &type metadata for Proto_Gnss_Emergency_MultipathIndicator, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssSignalMeasurementInfo(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GanssMeasurementElement], type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssId?, &type metadata for Proto_Gnss_Emergency_GanssId, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssSignalMeasurementInfo?, type metadata accessor for Proto_Gnss_Emergency_GanssSignalMeasurementInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssMeasurements(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GnssTimeId?, &type metadata for Proto_Gnss_Emergency_GnssTimeId, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssTimeMeasuredParams?, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss?, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsMeasurementElement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_MultipathIndicator?, &type metadata for Proto_Gnss_Emergency_MultipathIndicator, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsAssistanceRequest(uint64_t a1)
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssDataBitAssist(uint64_t a1)
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [UInt32], MEMORY[0x277D84CC0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssNavModelAddData(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GanssStoredSatDataElem], type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_HorizWithVertVelocity(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for Bool?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1076Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_1077Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Emergency_GanssAssistanceRequest(uint64_t a1)
{
  type metadata accessor for Bool?(319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_LcsGanssId], &type metadata for Proto_Gnss_Emergency_LcsGanssId, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GanssAidRequestPerGanss], type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_ClsGeranCellTime(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_CtsCdmaCellTime(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsTowCdmaCellTime?, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_CellTimeData(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CtsEutranCellTime?, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CtsCdmaCellTime?, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_779Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for UnknownStorage();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v10);
  }

  else if (a2 == 249)
  {
    v14 = *(a1 + *(a3 + 20));
    if (v14 <= 6)
    {
      v15 = 6;
    }

    else
    {
      v15 = *(a1 + *(a3 + 20));
    }

    v16 = v15 - 6;
    if (v14 >= 6)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + *(a3 + 24);

    return v18(v19, a2, v17);
  }
}

uint64_t __swift_store_extra_inhabitant_index_780Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = type metadata accessor for UnknownStorage();
  v13 = *(result - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = *(v13 + 56);

    return v14(a1, a2, a2, result);
  }

  else if (a3 == 249)
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 24);

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Emergency_CellTimeAssistance(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsNetworkType?, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellTimeData?, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_TowAssist(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsReferenceTime(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_TowAssist], type metadata accessor for Proto_Gnss_Emergency_TowAssist, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionProtocol?, &type metadata for Proto_Gnss_Emergency_SessionProtocol, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PosProtocol?, &type metadata for Proto_Gnss_Emergency_PosProtocol, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_ReferenceLocation(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionProtocol?, &type metadata for Proto_Gnss_Emergency_SessionProtocol, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PosProtocol?, &type metadata for Proto_Gnss_Emergency_PosProtocol, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for Proto_Gnss_Emergency_SummaryReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    a4();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Emergency_GpsNavigationModel(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GpsEphemeris], type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionProtocol?, &type metadata for Proto_Gnss_Emergency_SessionProtocol, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PosProtocol?, &type metadata for Proto_Gnss_Emergency_PosProtocol, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_CellFTAssistanceRequest(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for Bool?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_743Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = type metadata accessor for UnknownStorage();
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a2)
  {
    v16 = v14;
    v17 = *(v15 + 48);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a2)
  {
    v16 = v19;
    v17 = *(v20 + 48);
    v18 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v23 = *(*(v22 - 8) + 48);
  v24 = a1 + *(a3 + 24);

  return v23(v24, a2, v22);
}

uint64_t __swift_store_extra_inhabitant_index_744Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = type metadata accessor for UnknownStorage();
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a3)
  {
    v18 = v16;
    v19 = *(v17 + 56);
    v20 = a1;
LABEL_5:

    return v19(v20, a2, a2, v18);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v22 = *(v21 - 8);
  if (*(v22 + 84) == a3)
  {
    v18 = v21;
    v19 = *(v22 + 56);
    v20 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v25 = *(*(v24 - 8) + 56);
  v26 = a1 + *(a4 + 24);

  return v25(v26, a2, a2, v24);
}

void type metadata completion function for Proto_Gnss_Emergency_CplaneContext(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Configuration?, type metadata accessor for Proto_Gnss_Emergency_Configuration, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Cdma1xContext?, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_EmergConfig(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CplaneConfig?, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SuplConfig?, type metadata accessor for Proto_Gnss_Emergency_SuplConfig, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsAcqElement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsDopplerUncMpsExt?, &type metadata for Proto_Gnss_Emergency_GpsDopplerUncMpsExt, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsAcqAssistance(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for [Proto_Gnss_Emergency_GpsAcqElement], type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellTimeAssistance?, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionProtocol?, &type metadata for Proto_Gnss_Emergency_SessionProtocol, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PosProtocol?, &type metadata for Proto_Gnss_Emergency_PosProtocol, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_725Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_726Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

void type metadata completion function for Proto_Gnss_Emergency_CellFTAssistance(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Result?, &type metadata for Proto_Gnss_Result, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsNetworkType?, &type metadata for Proto_Gnss_Emergency_ClsNetworkType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_CellTimeData?, type metadata accessor for Proto_Gnss_Emergency_CellTimeData, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Bool?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for Proto_Gnss_Emergency_NetworkReferenceLocation(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_Configuration(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    type metadata accessor for Bool?(319, a4, a5, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_Is801LocationInd(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bool?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_FixType?, &type metadata for Proto_Gnss_Emergency_FixType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Bool?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Is801VelocityInfo?, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Is801ClockInfo?, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Is801HeightInfo?, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_Init._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_QoP?, type metadata accessor for Proto_Gnss_Emergency_QoP, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SLPAddress?, type metadata accessor for Proto_Gnss_Emergency_SLPAddress, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Notification?, type metadata accessor for Proto_Gnss_Emergency_Notification, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SuplInitVer2Extension?, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_SessionStatus._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_NetworkReferenceLocation?, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_NetworkReferenceTime?, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_UtranGanssTimeMeasured?, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GeranGanssTimeMeasured?, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_ClsEutranCell?, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_ShapeInfo._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PointUncertainCircle?, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PointUncertainEllipse?, type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid?, type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidArc?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_EllipsoidPoint?, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_PointAltitude?, type metadata accessor for Proto_Gnss_Emergency_PointAltitude, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_Polygon?, type metadata accessor for Proto_Gnss_Emergency_Polygon, MEMORY[0x277D83D88]);
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

void type metadata completion function for Proto_Gnss_Emergency_PositionReport._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionInfo?, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_LocationInfo?, type metadata accessor for Proto_Gnss_Emergency_LocationInfo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssLocationInfo?, type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_LocEstimate?, type metadata accessor for Proto_Gnss_Emergency_LocEstimate, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_VelocityEstimate?, type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GpsMeasurements._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsTimeMeasuredParams?, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsTOD?, type metadata accessor for Proto_Gnss_Emergency_GpsTOD, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssDataBitAssist?, type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssNavModelAddData?, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssAddAssistDataChoices?, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(uint64_t a1)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionInfo?, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsAssistanceRequest?, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GanssAssistanceRequest?, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for Proto_Gnss_Emergency_MeasurementReport._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_SessionInfo?, type metadata accessor for Proto_Gnss_Emergency_SessionInfo, MEMORY[0x277D83D88]);
  if (v8 <= 0x3F)
  {
    type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, &lazy cache variable for type metadata for Proto_Gnss_Emergency_GpsMeasurements?, type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      type metadata accessor for [Proto_Gnss_Emergency_LteCellInfo](319, a4, a5, MEMORY[0x277D83D88]);
      if (v10 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Result(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Result and conformance Proto_Gnss_Result();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_GnssContent(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_EstimationTechnology(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_EstimationTechnology and conformance Proto_Gnss_EstimationTechnology();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_TimeQuality(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_TimeQuality and conformance Proto_Gnss_TimeQuality();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_PositionAssistType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_PositionAssistType and conformance Proto_Gnss_PositionAssistType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_MotionActivityContext(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_MotionActivityContext and conformance Proto_Gnss_MotionActivityContext();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_MotionActivityContext@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gnss_MotionActivityContext_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_MotionActivityContext.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_MotionActivityContext@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gnss_MotionActivityContext_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_MotionActivityContext.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_MovingState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_MovingState and conformance Proto_Gnss_MovingState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_MovingState@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gnss_MovingState_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_MovingState.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_MovingState@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gnss_MovingState_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_MovingState.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_Reliability(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_Reliability@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gnss_Reliability_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_Reliability.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_Reliability@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gnss_Reliability_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_Reliability.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_DeviceMountState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_DeviceMountState and conformance Proto_Gnss_DeviceMountState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_DeviceMountState@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gnss_DeviceMountState_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_DeviceMountState.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_DeviceMountState@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gnss_DeviceMountState_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_DeviceMountState.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_SignalEnvironmentType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_SignalEnvironmentType and conformance Proto_Gnss_SignalEnvironmentType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Proto_Gnss_SignalEnvironmentType@<X0>(unint64_t a1@<X0>, ALProtobuf::Proto_Gnss_SignalEnvironmentType_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_SignalEnvironmentType.init(rawValue:)(a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Proto_Gnss_SignalEnvironmentType@<X0>(Swift::Int *a1@<X0>, ALProtobuf::Proto_Gnss_SignalEnvironmentType_optional *a2@<X8>)
{
  result = specialized Proto_Gnss_SignalEnvironmentType.init(rawValue:)(*a1);
  a2->value = result;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_DeleteGnssDataBitMask(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_DeleteGnssDataBitMask and conformance Proto_Gnss_DeleteGnssDataBitMask();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Proto_Gnss_Position.latitude.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.latitude.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearLatitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.longitude.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.longitude.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearLongitude()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.altWgs84.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.altWgs84.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearAltWgs84()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.undulation.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.undulation.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearUndulation()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.verticalUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.verticalUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearVerticalUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.semiMajorHorizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.semiMajorHorizontalUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearSemiMajorHorizontalUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.semiMinorHorizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.semiMinorHorizontalUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearSemiMinorHorizontalUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.semiMajorAzimuthHorizontalUncertainty.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 48);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Position.semiMajorAzimuthHorizontalUncertainty.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.semiMajorAzimuthHorizontalUncertainty.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 48);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearSemiMajorAzimuthHorizontalUncertainty()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 48);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.source.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 52));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Position.source.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.source.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearSource()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 52);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Position.reliability.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 56));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Position.reliability.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Position.reliability.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 56);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t Proto_Gnss_Position.assistanceUsed.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 60));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Position.assistanceUsed.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Position.assistanceUsed.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 60);
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

Swift::Void __swiftcall Proto_Gnss_Position.clearAssistanceUsed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 60);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Position.gnssContentInFix.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Position(0) + 64));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_Position.gnssContentInFix.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Position(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Position.gnssContentInFix.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Position(0) + 64);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *Proto_Gnss_Position.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Position(0);
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
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + result[14]) = 6;
  v12 = a1 + result[15];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a1 + result[16]) = 6;
  return result;
}

double Proto_Gnss_Position.latitude.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 20);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.horizSpeed.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.horizSpeed.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearHorizSpeed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.longitude.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.horizSpeedUnc.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.horizSpeedUnc.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearHorizSpeedUnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.altWgs84.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 28);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.vertVelocity.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.vertVelocity.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearVertVelocity()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.undulation.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 32);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.vertVelocityUnc.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.vertVelocityUnc.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearVertVelocityUnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.verticalUncertainty.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 36);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.course.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.course.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearCourse()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.semiMajorHorizontalUncertainty.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Velocity.courseUnc.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Velocity(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Velocity.courseUnc.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Velocity(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Velocity.clearCourseUnc()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Velocity(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *Proto_Gnss_Velocity.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Velocity(0);
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
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t Proto_Gnss_Time.gpsNanoSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.gpsNanoSeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearGpsNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Time.gpsTimeUncertaintyNanoSeconds.setter(float a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.gpsTimeUncertaintyNanoSeconds.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearGpsTimeUncertaintyNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Time.leapSecondsFromGpsStartValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_Time.leapSecondsFromGpsStartValid.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Request.type.modify;
}

uint64_t Proto_Gnss_Time.leapSecondsFromGpsStart.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.leapSecondsFromGpsStart.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearLeapSecondsFromGpsStart()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Time.clockNanoSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.clockNanoSeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearClockNanoSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Time.machContinuousSeconds.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.machContinuousSeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearMachContinuousSeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Proto_Gnss_Position.semiMinorHorizontalUncertainty.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 44);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_Time.machContinuousUncertaintySeconds.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.machContinuousUncertaintySeconds.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 44);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearMachContinuousUncertaintySeconds()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Time.basebandSystemTimeNs.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 48));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Time.basebandSystemTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.basebandSystemTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 48);
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
  return CLP_LogEntry_AONLoc_Request.ResultOptions.endCfaTimeSec.modify;
}

Swift::Void __swiftcall Proto_Gnss_Time.clearBasebandSystemTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 48);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_Time.basebandSystemTimeUncNs.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 52));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_Time.basebandSystemTimeUncNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Time(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_Time.basebandSystemTimeUncNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Time(0) + 52);
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

Swift::Void __swiftcall Proto_Gnss_Time.clearBasebandSystemTimeUncNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_Time(0) + 52);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *Proto_Gnss_Time.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Time(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  *(a1 + result[7]) = 2;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t Proto_Gnss_Fix.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Time(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Time(v5, a1, type metadata accessor for Proto_Gnss_Time);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  *(a1 + v8[7]) = 2;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[13];
  *v17 = 0;
  *(v17 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Fix.time.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Time(a1, v6, type metadata accessor for Proto_Gnss_Time);
  v11 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Fix.time.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Time(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__time;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
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
    *(v14 + v9[7]) = 2;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v14 + v9[11];
    *v24 = 0;
    *(v24 + 8) = 1;
    v25 = v14 + v9[12];
    *v25 = 0;
    *(v25 + 8) = 1;
    v26 = v14 + v9[13];
    *v26 = 0;
    *(v26 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Time(v8, v14, type metadata accessor for Proto_Gnss_Time);
  }

  return Proto_Gnss_Fix.time.modify;
}

uint64_t Proto_Gnss_Fix.position.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Position(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Time(v5, a1, type metadata accessor for Proto_Gnss_Position);
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
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v8[12];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v8[13];
  *v18 = 0;
  *(v18 + 4) = 1;
  *(a1 + v8[14]) = 6;
  v19 = a1 + v8[15];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a1 + v8[16]) = 6;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Fix.position.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Time(a1, v6, type metadata accessor for Proto_Gnss_Position);
  v11 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
  return swift_endAccess();
}

uint64_t (*Proto_Gnss_Fix.position.modify(uint64_t *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for Proto_Gnss_Position(0);
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
  Proto_Gnss_Fix.position.getter(v11);
  return Proto_Gnss_Fix.position.modify;
}

void Proto_Gnss_Fix.position.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    outlined init with copy of Proto_Gnss_Time(v2[11], v2[10], type metadata accessor for Proto_Gnss_Position);
    v4 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v7 = swift_allocObject();
      specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v6);

      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    outlined init with take of Proto_Gnss_Time(v9, v12, type metadata accessor for Proto_Gnss_Position);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v6 + v13, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Time(v8, type metadata accessor for Proto_Gnss_Position);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v18 = swift_allocObject();
      specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v17);

      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    outlined init with take of Proto_Gnss_Time(v8, v12, type metadata accessor for Proto_Gnss_Position);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__position;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v12, v17 + v21, &_s10ALProtobuf19Proto_Gnss_PositionVSgMd, &_s10ALProtobuf19Proto_Gnss_PositionVSgMR);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL Proto_Gnss_Fix.hasTime.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  outlined destroy of Any?(v11, a1, a2);
  return v15;
}

uint64_t Proto_Gnss_Fix.clearTime()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v16 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

uint64_t Proto_Gnss_Fix.velocity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  v8 = type metadata accessor for Proto_Gnss_Velocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Time(v5, a1, type metadata accessor for Proto_Gnss_Velocity);
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
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_Fix.velocity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Time(a1, v6, type metadata accessor for Proto_Gnss_Velocity);
  v11 = type metadata accessor for Proto_Gnss_Velocity(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_Fix.velocity.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Velocity(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__velocity;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
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
    v23 = v14 + v9[9];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v14 + v9[10];
    *v24 = 0;
    *(v24 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMd, &_s10ALProtobuf19Proto_Gnss_VelocityVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Time(v8, v14, type metadata accessor for Proto_Gnss_Velocity);
  }

  return Proto_Gnss_Fix.velocity.modify;
}

void Proto_Gnss_Fix.time.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    outlined init with copy of Proto_Gnss_Time(*(v8 + 120), *(v8 + 112), a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v8 + 128);
      v14 = *(v8 + 72);
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v15 = swift_allocObject();
      specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v18 = *(v8 + 96);
    v19 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of Proto_Gnss_Time(v17, v21, a3);
    (*(v19 + 56))(v21, 0, 1, v18);
    v22 = *a4;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v21, v12 + v22, a5, a6);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Time(v16, a3);
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
      type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
      v28 = swift_allocObject();
      specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v25);

      *(v27 + v26) = v28;
      v25 = v28;
    }

    v17 = *(v8 + 112);
    v16 = *(v8 + 120);
    v29 = *(v8 + 96);
    v30 = *(v8 + 104);
    v21 = *(v8 + 80);
    v20 = *(v8 + 88);
    outlined init with take of Proto_Gnss_Time(v16, v21, a3);
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

void (*Proto_Gnss_Fix.spoofingFlags.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__spoofingFlags;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_Fix.spoofingFlags.modify;
}

uint64_t Proto_Gnss_Fix.estimationTechnology.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t Proto_Gnss_Fix.estimationTechnology.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v7 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  result = swift_beginAccess();
  *(v6 + v8) = a1;
  return result;
}

void (*Proto_Gnss_Fix.estimationTechnology.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 5)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return Proto_Gnss_Fix.estimationTechnology.modify;
}

void Proto_Gnss_Fix.estimationTechnology.modify(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  *(v7 + v11) = v3;

  free(v2);
}

BOOL Proto_Gnss_Fix.hasEstimationTechnology.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Fix(0) + 20));
  v2 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  return *(v1 + v2) != 5;
}

Swift::Void __swiftcall Proto_Gnss_Fix.clearEstimationTechnology()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Fix(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Fix._StorageClass(0);
    v5 = swift_allocObject();
    specialized Proto_Gnss_Fix._StorageClass.init(copying:)(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  v6 = OBJC_IVAR____TtCV10ALProtobuf14Proto_Gnss_FixP33_CE77F83568258924918786B79242136A13_StorageClass__estimationTechnology;
  swift_beginAccess();
  *(v4 + v6) = 5;
}

uint64_t Proto_Gnss_TimeTransferData.isGpsWeekValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_TimeTransferData.isGpsWeekValid.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_TimeTransferData.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + *(v6 + 24), v5, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v7 = type metadata accessor for Proto_Gnss_Time(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return outlined init with take of Proto_Gnss_Time(v5, a1, type metadata accessor for Proto_Gnss_Time);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a1 + v7[7]) = 2;
  v11 = a1 + v7[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[9];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v7[11];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v7[12];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v7[13];
  *v16 = 0;
  *(v16 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_TimeTransferData.time.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  outlined destroy of Any?(v1 + v3, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  outlined init with take of Proto_Gnss_Time(a1, v1 + v3, type metadata accessor for Proto_Gnss_Time);
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Proto_Gnss_TimeTransferData.time.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_Time(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v1 + v15, v8, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    *(v14 + v9[7]) = 2;
    v19 = v14 + v9[8];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v14 + v9[9];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v14 + v9[11];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[12];
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = v14 + v9[13];
    *v24 = 0;
    *(v24 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Time(v8, v14, type metadata accessor for Proto_Gnss_Time);
  }

  return Proto_Gnss_TimeTransferData.time.modify;
}

void Proto_Gnss_TimeTransferData.time.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Proto_Gnss_Time((*a1)[5], v4, type metadata accessor for Proto_Gnss_Time);
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    outlined init with take of Proto_Gnss_Time(v4, v9 + v3, type metadata accessor for Proto_Gnss_Time);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Proto_Gnss_Time(v5, type metadata accessor for Proto_Gnss_Time);
  }

  else
  {
    outlined destroy of Any?(v9 + v3, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
    outlined init with take of Proto_Gnss_Time(v5, v9 + v3, type metadata accessor for Proto_Gnss_Time);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Proto_Gnss_TimeTransferData.hasTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v0 + *(v4 + 24), v3, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v5 = type metadata accessor for Proto_Gnss_Time(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  return v6;
}

Swift::Void __swiftcall Proto_Gnss_TimeTransferData.clearTime()()
{
  v1 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 24);
  outlined destroy of Any?(v0 + v1, &_s10ALProtobuf15Proto_Gnss_TimeVSgMd, &_s10ALProtobuf15Proto_Gnss_TimeVSgMR);
  v2 = type metadata accessor for Proto_Gnss_Time(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Proto_Gnss_TimeTransferData.quality.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 28));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_TimeTransferData.quality.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_TimeTransferData.quality.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_Time.leapSecondsFromGpsStart.getter(uint64_t (*a1)(void))
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

uint64_t Proto_Gnss_TimeTransferData.constellationsUsed.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_TimeTransferData.constellationsUsed.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_TimeTransferData.clearConstellationsUsed()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_Time.clockNanoSeconds.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_TimeTransferData.basebandSystemTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_TimeTransferData.basebandSystemTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_TimeTransferData.clearBasebandSystemTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_TimeTransferData.basebandSystemTimeUncNs.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_TimeTransferData.basebandSystemTimeUncNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_TimeTransferData.basebandSystemTimeUncNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40);
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

Swift::Void __swiftcall Proto_Gnss_TimeTransferData.clearBasebandSystemTimeUncNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_TimeTransferData(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_TimeTransferData.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  *(a1 + v2[5]) = 2;
  v3 = v2[6];
  v4 = type metadata accessor for Proto_Gnss_Time(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[7]) = 7;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t variable initialization expression of Proto_Gnss_TimeTransferData._time@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Proto_Gnss_Time(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Proto_Gnss_TimeTransferDataExtend.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v6 + v7, v5, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v8 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return outlined init with take of Proto_Gnss_Time(v5, a1, type metadata accessor for Proto_Gnss_TimeTransferData);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  v10 = v8[6];
  v11 = type metadata accessor for Proto_Gnss_Time(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v8[7]) = 7;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Any?(v5, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  }

  return result;
}

uint64_t Proto_Gnss_TimeTransferDataExtend.data.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v10 = swift_allocObject();
    specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  outlined init with take of Proto_Gnss_Time(a1, v6, type metadata accessor for Proto_Gnss_TimeTransferData);
  v11 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v6, v9 + v12, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  return swift_endAccess();
}

void (*Proto_Gnss_TimeTransferDataExtend.data.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
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
  v15 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v16 + v17, v8, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    *(v14 + v9[5]) = 2;
    v19 = v9[6];
    v20 = type metadata accessor for Proto_Gnss_Time(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    *(v14 + v9[7]) = 7;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v14 + v9[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v14 + v9[10];
    *v23 = 0;
    *(v23 + 8) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Any?(v8, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
    }
  }

  else
  {
    outlined init with take of Proto_Gnss_Time(v8, v14, type metadata accessor for Proto_Gnss_TimeTransferData);
  }

  return Proto_Gnss_TimeTransferDataExtend.data.modify;
}

void Proto_Gnss_TimeTransferDataExtend.data.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Proto_Gnss_Time(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_TimeTransferData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
      v9 = swift_allocObject();
      specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Time(v11, v15, type metadata accessor for Proto_Gnss_TimeTransferData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v6 + v16, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
    swift_endAccess();
    outlined destroy of Proto_Gnss_Time(v10, type metadata accessor for Proto_Gnss_TimeTransferData);
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
      type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
      v22 = swift_allocObject();
      specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    outlined init with take of Proto_Gnss_Time(v10, v15, type metadata accessor for Proto_Gnss_TimeTransferData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
    swift_beginAccess();
    outlined assign with take of Proto_Gpsd_Response?(v15, v19 + v25, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL Proto_Gnss_TimeTransferDataExtend.hasData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined init with copy of CLP_LogEntry_AONLoc_Request.ResultOptions?(v4 + v5, v3, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  v6 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  outlined destroy of Any?(v3, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  return v7;
}

Swift::Void __swiftcall Proto_Gnss_TimeTransferDataExtend.clearData()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_TimeTransferDataExtend._StorageClass(0);
    v8 = swift_allocObject();
    specialized Proto_Gnss_TimeTransferDataExtend._StorageClass.init(copying:)(v7);

    *(v1 + v5) = v8;
    v7 = v8;
  }

  v9 = type metadata accessor for Proto_Gnss_TimeTransferData(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__data;
  swift_beginAccess();
  outlined assign with take of Proto_Gpsd_Response?(v4, v7 + v10, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMd, &_s10ALProtobuf27Proto_Gnss_TimeTransferDataVSgMR);
  swift_endAccess();
}

uint64_t Proto_Gnss_Fix.spoofingFlags.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t Proto_Gnss_Fix.spoofingFlags.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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
  *(v15 + 8) = 0;
  return result;
}

void (*Proto_Gnss_TimeTransferDataExtend.timeMarkBeforeMachAbsTick.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkBeforeMachAbsTick;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_TimeTransferDataExtend.timeMarkBeforeMachAbsTick.modify;
}

void Proto_Gnss_Fix.spoofingFlags.modify(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
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

BOOL Proto_Gnss_Fix.hasSpoofingFlags.getter(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

uint64_t Proto_Gnss_Fix.clearSpoofingFlags()(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t), void *a4)
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

void (*Proto_Gnss_TimeTransferDataExtend.timeMarkAfterMachAbsTick.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkAfterMachAbsTick;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_TimeTransferDataExtend.timeMarkAfterMachAbsTick.modify;
}

void (*Proto_Gnss_TimeTransferDataExtend.currentMachContMinusMachAbsNs.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__currentMachContMinusMachAbsNs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_TimeTransferDataExtend.currentMachContMinusMachAbsNs.modify;
}

void (*Proto_Gnss_TimeTransferDataExtend.timeMarkCenterMachAbsTimeNs.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf33Proto_Gnss_TimeTransferDataExtendP33_CE77F83568258924918786B79242136A13_StorageClass__timeMarkCenterMachAbsTimeNs;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return Proto_Gnss_TimeTransferDataExtend.timeMarkCenterMachAbsTimeNs.modify;
}

uint64_t Proto_Gnss_Fix.init()@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t Proto_Gnss_Time.gpsNanoSeconds.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Proto_Gnss_RawPressureSample.machContinuousTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_RawPressureSample.machContinuousTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_RawPressureSample.clearMachContinuousTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

float Proto_Gnss_Time.gpsTimeUncertaintyNanoSeconds.getter(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_RawPressureSample.pressure.setter(float a1)
{
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_RawPressureSample.pressure.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_RawPressureSample.clearPressure()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_RawPressureSample(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_RawPressureSample.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_RawPressureSample(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t Proto_Gnss_SensorSample3Axis.machContinuousTimeNs.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SensorSample3Axis.machContinuousTimeNs.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_SensorSample3Axis.clearMachContinuousTimeNs()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_SensorSample3Axis.x.setter(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SensorSample3Axis.x.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_SensorSample3Axis.clearX()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float Proto_Gnss_SensorSample3Axis.y.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_SensorSample3Axis.y.setter(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SensorSample3Axis.y.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_SensorSample3Axis.clearY()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

float Proto_Gnss_SensorSample3Axis.z.getter()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t Proto_Gnss_SensorSample3Axis.z.setter(float a1)
{
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SensorSample3Axis.z.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_SensorSample3Axis.clearZ()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SensorSample3Axis(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_SensorSample3Axis.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_SensorSample3Axis(0);
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
  return result;
}

uint64_t Proto_Gnss_SvId.satelliteSystem.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_SvId.satelliteSystem.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SvId.satelliteSystem.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_SvId.clearSatelliteSystem()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_SvId.prn.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_SvId.prn.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SvId.prn.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_SvId.clearPrn()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_SvId.gloSlotNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_SvId.gloSlotNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SvId.gloSlotNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_SvId.clearGloSlotNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_SvId.gloSlotSource.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SvId.gloSlotSource.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_SvId.clearGloSlotSource()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Proto_Gnss_SvId.gloFrequencyNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_SvId.gloFrequencyNumber.setter(int a1)
{
  result = type metadata accessor for Proto_Gnss_SvId(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Proto_Gnss_SvId.gloFrequencyNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_SvId(0) + 36);
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

Swift::Void __swiftcall Proto_Gnss_SvId.clearGloFrequencyNumber()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_SvId(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

int *Proto_Gnss_SvId.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_SvId(0);
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

uint64_t Proto_Gnss_PwrMeasurement.localTime.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_PwrMeasurement.localTime.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_PwrMeasurement.clearLocalTime()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_PwrMeasurement.measIntervalSec.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_PwrMeasurement.measIntervalSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 24);
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

Swift::Void __swiftcall Proto_Gnss_PwrMeasurement.clearMeasIntervalSec()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_PwrMeasurement.activeIntervalSec.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_PwrMeasurement.activeIntervalSec.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_PwrMeasurement.clearActiveIntervalSec()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_PwrMeasurement.avgPwrMw.setter(double a1)
{
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_PwrMeasurement.avgPwrMw.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 32);
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

Swift::Void __swiftcall Proto_Gnss_PwrMeasurement.clearAvgPwrMw()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_PwrMeasurement.status.setter(char a1)
{
  v2 = a1 & 1;
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t (*Proto_Gnss_PwrMeasurement.status.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_PwrMeasurement(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Proto_Gnss_PwrMeasurement.PowerLoggingStatus and conformance Proto_Gnss_PwrMeasurement.PowerLoggingStatus();

  return MEMORY[0x28217E238](a1, a2, v4);
}

int *Proto_Gnss_PwrMeasurement.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
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
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t Proto_Gnss_DecodedRti.mTimeOfFileGenerationInSecondsSinceGpsEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_DecodedRti.mTimeOfFileGenerationInSecondsSinceGpsEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_DecodedRti.clearMTimeOfFileGenerationInSecondsSinceGpsEpoch()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_DecodedRti.mIsDataIntegrityValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_DecodedRti.mIsDataIntegrityValid.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedRti(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_DecodedRti.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_DecodedRti(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.mTimeOfGpsDataStartInSecondsSinceGpsEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_DecodedExtendedEphemeris.mTimeOfGpsDataStartInSecondsSinceGpsEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 20);
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

Swift::Void __swiftcall Proto_Gnss_DecodedExtendedEphemeris.clearMTimeOfGpsDataStartInSecondsSinceGpsEpoch()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.mIsDataIntegrityValid.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_DecodedExtendedEphemeris.mIsDataIntegrityValid.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.mTimeOfGpsDataEndInSecondsSinceGpsEpoch.getter()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.mTimeOfGpsDataEndInSecondsSinceGpsEpoch.setter(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Proto_Gnss_DecodedExtendedEphemeris.mTimeOfGpsDataEndInSecondsSinceGpsEpoch.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28);
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

Swift::Void __swiftcall Proto_Gnss_DecodedExtendedEphemeris.clearMTimeOfGpsDataEndInSecondsSinceGpsEpoch()()
{
  v1 = v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.assistanceFileType.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t Proto_Gnss_DecodedExtendedEphemeris.assistanceFileType.setter(char a1)
{
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*Proto_Gnss_DecodedExtendedEphemeris.assistanceFileType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return CLP_LogEntry_AONLoc_Response.requestType.modify;
}

int *Proto_Gnss_DecodedExtendedEphemeris.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 2;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + result[8]) = 7;
  return result;
}

uint64_t Proto_Gnss_Position.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 6)
      {
        if (result > 9)
        {
          if (result == 10)
          {
            v6 = v3;
            type metadata accessor for Proto_Gnss_Position(0);
            lazy protocol witness table accessor for type Proto_Gnss_Reliability and conformance Proto_Gnss_Reliability();
LABEL_24:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_5;
          }

          if (result != 11)
          {
            if (result != 12)
            {
              goto LABEL_5;
            }

            v6 = v3;
            type metadata accessor for Proto_Gnss_Position(0);
            lazy protocol witness table accessor for type Proto_Gnss_GnssContent and conformance Proto_Gnss_GnssContent();
            goto LABEL_24;
          }

          type metadata accessor for Proto_Gnss_Position(0);
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        }

        else
        {
          if (result == 7 || result == 8)
          {
LABEL_4:
            type metadata accessor for Proto_Gnss_Position(0);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            goto LABEL_5;
          }

          type metadata accessor for Proto_Gnss_Position(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 3 || result == 1 || result == 2 || result == 3)
      {
        goto LABEL_4;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *Proto_Gnss_Position.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for Proto_Gnss_Position(0);
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

  closure #5 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Position);
  closure #6 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Position);
  closure #7 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3, type metadata accessor for Proto_Gnss_Position);
  closure #8 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #9 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #10 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #11 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3);
  closure #12 in Proto_Gnss_Position.traverse<A>(visitor:)(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}