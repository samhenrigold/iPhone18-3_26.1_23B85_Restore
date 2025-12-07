uint64_t outlined init with take of TemperatureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TemperatureQueryModel and conformance TemperatureQueryModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for WellnessSnippets(uint64_t a1)
{
  result = type metadata accessor for OxygenSaturationQueryModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BloodPressureQueryModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for BloodPressureLogModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CycleTrackingLogModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for GenericButtonModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for GenericMedCompletedLogModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for HealthDataLogModel(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for GenericQueryModel(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for HeightQueryModel(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for SingleActivitySummaryModel(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for SleepQueryModel(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for SpecificMedCompletedLogModel(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for TemperatureQueryModel(319);
                          if (v14 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            return 0;
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
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSnippets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WellnessSnippets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSnippets.BloodOxygenDataQueryCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WellnessSnippets.BloodOxygenDataQueryCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized WellnessSnippets.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000273EB0DD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000273EB0DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB0E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB0E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x42636972656E6567 && a2 == 0xED00006E6F747475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000273EB0E50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000273EB0E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000273EB0EB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144746867696568 && a2 == 0xEF79726575516174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6952656E6F6870 && a2 == 0xEA00000000007367 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000273EB0ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6575517065656C73 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000273EB0EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB0F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E69526863746177 && a2 == 0xEA00000000007367)
  {

    return 15;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t type metadata accessor for SleepQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SleepQueryModel;
  if (!type metadata singleton initialization cache for SleepQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of AppPunchout?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t SleepQueryModel.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 24));

  return v1;
}

uint64_t SleepQueryModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.sleepTypeLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 28));

  return v1;
}

uint64_t SleepQueryModel.sleepTypeLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.dataLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 32));

  return v1;
}

uint64_t SleepQueryModel.dataLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 36));

  return v1;
}

uint64_t SleepQueryModel.avgTimeAsleepLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 40));

  return v1;
}

uint64_t SleepQueryModel.avgTimeInBedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleep.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.avgTimeAsleep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepQueryModel(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBed.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.avgTimeInBed.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepQueryModel(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepQueryModel.totalTimeAsleep.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.totalTimeAsleep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepQueryModel(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepQueryModel.totalTimeInBed.getter()
{
  type metadata accessor for SleepQueryModel(0);
}

uint64_t SleepQueryModel.totalTimeInBed.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepQueryModel(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepQueryModel.sleepDuration.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 60));

  return v1;
}

uint64_t SleepQueryModel.sleepDuration.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.avgTimeAsleepData.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 64));

  return v1;
}

uint64_t SleepQueryModel.avgTimeAsleepData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.avgTimeInBedData.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepQueryModel(0) + 68));

  return v1;
}

uint64_t SleepQueryModel.avgTimeInBedData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepQueryModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepQueryModel.init(snippetHeaderModel:dateLabel:sleepTypeLabel:dataLabel:avgTimeAsleepLabel:avgTimeInBedLabel:avgTimeAsleep:avgTimeInBed:totalTimeAsleep:totalTimeInBed:url:sleepDuration:avgTimeAsleepData:avgTimeInBedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v73 = a7;
  v74 = a8;
  v71 = a15;
  v72 = a6;
  v69 = a14;
  v70 = a5;
  v67 = a13;
  v68 = a4;
  v64 = a12;
  v65 = a3;
  v62 = a11;
  v63 = a2;
  v60 = a1;
  v61 = a10;
  v66 = a16;
  v59 = a17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v52 - v25;

  v27 = type metadata accessor for AppPunchout();
  v28 = *(v27 - 8);
  v57 = *(v28 + 56);
  v58 = v28 + 56;
  v57(a9, 1, 1, v27);
  Model = type metadata accessor for SleepQueryModel(0);
  v30 = Model[5];
  v31 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = (a9 + Model[6]);
  v33 = (a9 + Model[7]);
  v34 = (a9 + Model[8]);
  v35 = (a9 + Model[9]);
  v36 = Model[11];
  v37 = (a9 + Model[10]);
  v38 = Model[13];
  v55 = Model[12];
  v56 = v36;
  v54 = v38;
  v39 = Model[15];
  v53 = Model[14];
  v40 = (a9 + v39);
  *v40 = 0;
  v40[1] = 0;
  v41 = (a9 + Model[16]);
  *v41 = 0;
  v41[1] = 0;
  v42 = (a9 + Model[17]);
  *v42 = 0;
  v42[1] = 0;
  v43 = v59;
  SleepQueryModel.createAppPunchout(url:)(v59);
  outlined destroy of AppPunchout?(v43, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v57(v26, 0, 1, v27);
  outlined assign with take of AppPunchout?(v26, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  result = outlined assign with take of AppPunchout?(v60, a9 + v30, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v45 = v65;
  *v32 = v63;
  v32[1] = v45;
  v46 = v70;
  *v33 = v68;
  v33[1] = v46;
  v47 = v73;
  *v34 = v72;
  v34[1] = v47;
  v48 = v61;
  v49 = v62;
  *v35 = v74;
  v35[1] = v48;
  v50 = v64;
  *v37 = v49;
  v37[1] = v50;
  v51 = v55;
  *(a9 + v56) = v67;
  *(a9 + v51) = v69;
  *(a9 + v54) = v71;
  *(a9 + v53) = v66;
  return result;
}

uint64_t SleepQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::String_optional __swiftcall SleepQueryModel.fetchSleepDuration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for SpeakableString();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  Model = type metadata accessor for SleepQueryModel(0);
  if (!*(v1 + Model[11]))
  {
    v28 = v9;
    v29 = v44;
    v30 = v14;
    if (*(v1 + Model[12]))
    {

      v31 = v28;
      dispatch thunk of DialogDuration.hoursMinutesAbbreviated.getter();
      v32 = v30;
      if ((*(v30 + 48))(v31, 1, v13) == 1)
      {

        v27 = v31;
        goto LABEL_11;
      }

      (*(v30 + 32))(v22, v31, v13);
      v33 = SpeakableString.print.getter();
      v39 = v38;

      (*(v32 + 8))(v22, v13);
    }

    else if (*(v1 + Model[13]))
    {

      dispatch thunk of DialogDuration.hoursMinutesAbbreviated.getter();
      if ((*(v14 + 48))(v6, 1, v13) == 1)
      {

        v27 = v6;
        goto LABEL_11;
      }

      (*(v14 + 32))(v19, v6, v13);
      v33 = SpeakableString.print.getter();
      v39 = v41;

      (*(v14 + 8))(v19, v13);
    }

    else
    {
      if (!*(v1 + Model[14]))
      {
        goto LABEL_12;
      }

      v12 = v29;
      dispatch thunk of DialogDuration.hoursMinutesAbbreviated.getter();
      if ((*(v14 + 48))(v29, 1, v13) == 1)
      {
        goto LABEL_3;
      }

      (*(v14 + 32))(v16, v29, v13);
      v33 = SpeakableString.print.getter();
      v39 = v40;

      (*(v14 + 8))(v16, v13);
    }

    v36 = v39;
LABEL_19:
    v37 = v33;
    goto LABEL_20;
  }

  dispatch thunk of DialogDuration.hoursMinutesAbbreviated.getter();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v25, v12, v13);
    v33 = SpeakableString.print.getter();
    v35 = v34;

    (*(v14 + 8))(v25, v13);
    v36 = v35;
    goto LABEL_19;
  }

LABEL_3:

  v27 = v12;
LABEL_11:
  outlined destroy of AppPunchout?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
LABEL_12:
  v37 = 0;
  v36 = 0;
LABEL_20:
  result.value._object = v36;
  result.value._countAndFlagsBits = v37;
  return result;
}

uint64_t SleepQueryModel.getAbbrHoursMinDialogDuration(duration:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DialogDuration.hoursMinutesAbbreviated.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of AppPunchout?(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = SpeakableString.print.getter();
    (*(v4 + 8))(v6, v3);
    return v8;
  }
}

uint64_t SleepQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 1702125924;
      goto LABEL_6;
    case 3:
      result = 0x7079547065656C73;
      break;
    case 4:
      v3 = 1635017060;
LABEL_6:
      result = v3 | 0x6562614C00000000;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x41656D6954677661;
      break;
    case 8:
      result = 0x49656D6954677661;
      break;
    case 9:
    case 10:
      result = 0x6D69546C61746F74;
      break;
    case 11:
      result = 0x7275447065656C73;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SleepQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SleepQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SleepQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SleepQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI15SleepQueryModelV10CodingKeys33_3E46B5761B578D4E26993CD0FAD0675FLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI15SleepQueryModelV10CodingKeys33_3E46B5761B578D4E26993CD0FAD0675FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for AppPunchout();
  lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    Model = type metadata accessor for SleepQueryModel(0);
    LOBYTE(v13) = 1;
    type metadata accessor for SnippetHeaderModel(0);
    lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + Model[11]);
    v12 = 7;
    type metadata accessor for DialogDuration();
    lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type DialogDuration and conformance DialogDuration, MEMORY[0x277D55BB0], MEMORY[0x277D55BB8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + Model[12]);
    v12 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + Model[13]);
    v12 = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = *(v3 + Model[14]);
    v12 = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys);
  }

  return result;
}

uint64_t SleepQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v58 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI15SleepQueryModelV10CodingKeys33_3E46B5761B578D4E26993CD0FAD0675FLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI15SleepQueryModelV10CodingKeys33_3E46B5761B578D4E26993CD0FAD0675FLLOGMR);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v79 = &v58 - v7;
  Model = type metadata accessor for SleepQueryModel(0);
  v9 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppPunchout();
  v13 = *(*(v12 - 8) + 56);
  v71 = v12;
  v13(v11, 1, 1);
  v14 = v9[7];
  v15 = type metadata accessor for SnippetHeaderModel(0);
  v16 = *(*(v15 - 8) + 56);
  v69 = v14;
  v70 = v15;
  v16(&v11[v14], 1, 1);
  v17 = &v11[v9[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v68 = v17;
  v18 = &v11[v9[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v67 = v18;
  v19 = &v11[v9[10]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v11[v9[11]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v11[v9[12]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v66 = v9[13];
  *&v11[v66] = 0;
  v65 = v9[14];
  *&v11[v65] = 0;
  v64 = v9[15];
  *&v11[v64] = 0;
  v63 = v9[16];
  *&v11[v63] = 0;
  v22 = &v11[v9[17]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v11[v9[18]];
  *v23 = 0;
  v23[1] = 0;
  v24 = v9[19];
  v78 = v11;
  v25 = &v11[v24];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type SleepQueryModel.CodingKeys and conformance SleepQueryModel.CodingKeys();
  v27 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v31 = v78;
    __swift_destroy_boxed_opaque_existential_1(v77);
    v57 = v31;
  }

  else
  {
    v76 = v19;
    v60 = v21;
    v61 = v20;
    v28 = v73;
    v59 = v25;
    v29 = v72;
    LOBYTE(v81) = 0;
    lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v30 = v74;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v30;
    v34 = v78;
    outlined assign with take of AppPunchout?(v33, v78, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    LOBYTE(v81) = 1;
    lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v28, v34 + v69, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    LOBYTE(v81) = 2;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v68;
    *v68 = v35;
    v36[1] = v37;
    LOBYTE(v81) = 3;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v67;
    *v67 = v38;
    v39[1] = v40;
    LOBYTE(v81) = 4;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = v76;
    *v76 = v41;
    v42[1] = v43;
    LOBYTE(v81) = 5;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = v61;
    *v61 = v44;
    v45[1] = v46;
    LOBYTE(v81) = 6;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v60;
    *v60 = v47;
    v48[1] = v49;
    type metadata accessor for DialogDuration();
    v80 = 7;
    lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(&lazy protocol witness table cache variable for type DialogDuration and conformance DialogDuration, MEMORY[0x277D55BB0], MEMORY[0x277D55BC0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v34 + v66) = v81;
    v80 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v34 + v65) = v81;
    v80 = 9;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v78[v64] = v81;
    v80 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v78[v63] = v81;
    LOBYTE(v81) = 11;
    *v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22[1] = v50;
    LOBYTE(v81) = 12;
    *v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23[1] = v51;
    LOBYTE(v81) = 13;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v53;
    (*(v29 + 8))(v79, v75);
    v55 = v59;
    *v59 = v52;
    v55[1] = v54;
    v56 = v78;
    outlined init with copy of SleepQueryModel(v78, v62);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v57 = v56;
  }

  return outlined destroy of SleepQueryModel(v57);
}

uint64_t outlined destroy of SleepQueryModel(uint64_t a1)
{
  Model = type metadata accessor for SleepQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of SleepQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for SleepQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AppPunchout and conformance AppPunchout(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SleepQueryModel(uint64_t a1)
{
  type metadata accessor for AppPunchout?(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppPunchout?(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AppPunchout?(319, &lazy cache variable for type metadata for DialogDuration?, MEMORY[0x277D55BB0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for AppPunchout?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SleepQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SleepQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7079547065656C73 && a2 == 0xEE006C6562614C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB0F70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x41656D6954677661 && a2 == 0xED00007065656C73 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x49656D6954677661 && a2 == 0xEC0000006465426ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xEF7065656C734165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xEE006465426E4965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7275447065656C73 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB0F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000273EB0FB0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t SpecificMedCompletedLogModel.time.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SpecificMedCompletedLogModel.time.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SpecificMedCompletedLogModel.requestedMedName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.requestedMedSchedule.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SpecificMedCompletedLogModel.requestedMedSchedule.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t type metadata accessor for SpecificMedCompletedLogModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SpecificMedCompletedLogModel;
  if (!type metadata singleton initialization cache for SpecificMedCompletedLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.dosage.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageString.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 40));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.dosageString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 44));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.dosageUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.medType.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 48));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.medType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 52));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.sashBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.dontDisplayGranularTime.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.isSmartEnabled.setter(char a1)
{
  result = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 64));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 68));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.skippedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.takenLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 72));

  return v1;
}

uint64_t SpecificMedCompletedLogModel.takenLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SpecificMedCompletedLogModel(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTime:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v85 = a8;
  v84 = a7;
  v82 = a6;
  v75 = a5;
  v80 = a4;
  v78 = a3;
  v102 = a22;
  v103 = a23;
  v100 = a20;
  v101 = a21;
  v98 = a18;
  v99 = a19;
  v97 = a17;
  v95 = a15;
  v96 = a16;
  v93 = a13;
  v94 = a14;
  v91 = a12;
  v86 = a11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v26 - 8);
  v92 = &v72 - v27;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0xE000000000000000;
  v28 = type metadata accessor for SpecificMedCompletedLogModel(0);
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  v29 = a9 + v28[8];
  v30 = type metadata accessor for AppPunchout();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v89 = v30;
  v90 = v29;
  v87 = v31 + 56;
  v88 = v32;
  (v32)(v29, 1, 1);
  v33 = a9 + v28[9];
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (a9 + v28[10]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (a9 + v28[11]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (a9 + v28[12]);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = (a9 + v28[13]);
  *v37 = 0xD000000000000010;
  v37[1] = 0x8000000273EB0FF0;
  v83 = v37;
  v81 = v28[14];
  *(a9 + v81) = 0;
  v79 = v28[15];
  *(a9 + v79) = 0;
  v38 = (a9 + v28[16]);
  *v38 = 0;
  v38[1] = 0;
  v77 = v38;
  v39 = (a9 + v28[17]);
  *v39 = 0;
  v39[1] = 0;
  v76 = v39;
  v40 = (a9 + v28[18]);
  *v40 = 0;
  v40[1] = 0;
  v74 = v40;
  v41 = a9 + v28[19];
  v42 = type metadata accessor for SnippetHeaderModel(0);
  v43 = *(*(v42 - 8) + 56);
  v73 = v41;
  v43(v41, 1, 1, v42);
  *a9 = a1;
  v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v44 setTimeStyle_];
  v45 = a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v47 = [v44 stringFromDate_];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = v75;
  *(a9 + 8) = v48;
  *(a9 + 16) = v50;
  v52 = v80;
  *(a9 + 24) = v78;
  *(a9 + 32) = v52;
  v53 = v82;
  *(a9 + 40) = v51;
  *(a9 + 48) = v53;
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v84;
  }

  v55 = (v53 != 0) | v85;
  *v33 = v54;
  v56 = v55 & 1;
  *(v33 + 8) = v55 & 1;

  *v34 = SpecificMedCompletedLogModel.getFormattedDosageString(_:)(v54, v56);
  v34[1] = v57;
  if (v53)
  {

    v58 = 0;
    v59 = 0;
  }

  else
  {
    v58 = a10;
    v53 = 0xE900000000000064;
    v51 = 0x656465654E207341;
    v59 = v86;
  }

  *v35 = v58;
  v35[1] = v59;
  *v36 = v51;
  v36[1] = v53;
  v61 = v91;
  v60 = v92;
  SpecificMedCompletedLogModel.createAppPunchout(url:)(v91);
  outlined destroy of AppPunchout?(v61, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v62 = type metadata accessor for Date();
  (*(*(v62 - 8) + 8))(v45, v62);
  v88(v60, 0, 1, v89);
  outlined assign with take of AppPunchout?(v60, v90, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v63 = v94;
  v64 = v83;
  *v83 = v93;
  v64[1] = v63;
  *(a9 + v81) = v95 & 1;
  *(a9 + v79) = v96 & 1;
  v65 = v98;
  v66 = v77;
  *v77 = v97;
  v66[1] = v65;
  v67 = v100;
  v68 = v76;
  *v76 = v99;
  v68[1] = v67;
  v69 = v102;
  v70 = v74;
  *v74 = v101;
  v70[1] = v69;
  return outlined assign with take of AppPunchout?(v103, v73, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
}

uint64_t SpecificMedCompletedLogModel.getFormattedDosageString(_:)(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
  }

  else
  {
    v2 = trunc(*&result);
    if (*&result > -9.22337204e18 && *&result < 9.22337204e18 && v2 == *&result)
    {
      if ((~result & 0x7FF0000000000000) != 0)
      {
        *&result = COERCE_DOUBLE(dispatch thunk of CustomStringConvertible.description.getter());
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D839F8];
      *(v6 + 16) = xmmword_273EA69E0;
      v8 = MEMORY[0x277D83A80];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v5;
      v9 = String.init(format:arguments:)();

      return v9;
    }
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t SpecificMedCompletedLogModel.init(medStatus:givenTimeString:requestedMedName:requestedMedSchedule:dosage:dosageUnit:url:sashBundleID:dontDisplayGranularTime:isSmartEnabled:loggedLabel:skippedLabel:takenLabel:snippetHeaderModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v73 = a5;
  v70 = a3;
  v71 = a4;
  v72 = a10;
  v89 = a23;
  v90 = a24;
  v87 = a21;
  v88 = a22;
  v85 = a19;
  v86 = a20;
  v84 = a18;
  v82 = a16;
  v83 = a17;
  v80 = a14;
  v81 = a15;
  v79 = a13;
  v74 = a12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v69 - v31;
  v33 = type metadata accessor for SpecificMedCompletedLogModel(0);
  v34 = v33[8];
  v35 = type metadata accessor for AppPunchout();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v78 = v34;
  v75 = v36 + 56;
  v76 = v37;
  v37((a9 + v34), 1, 1, v35);
  v38 = v33[19];
  v39 = type metadata accessor for SnippetHeaderModel(0);
  v40 = *(*(v39 - 8) + 56);
  v77 = v38;
  v40(a9 + v38, 1, 1, v39);
  *a9 = a1;
  v41 = v70;
  v42 = v71;
  *(a9 + 8) = a2;
  *(a9 + 16) = v41;
  v43 = v73;
  *(a9 + 24) = v42;
  *(a9 + 32) = v43;
  v44 = a6;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  if (a7)
  {
    v45 = 0;
  }

  else
  {
    v45 = a8;
  }

  v46 = (a7 != 0) | v72;
  v47 = a9 + v33[9];
  v48 = (a9 + v33[10]);
  v49 = v33[11];
  *v47 = v45;
  v50 = v46 & 1;
  *(v47 + 8) = v46 & 1;

  *v48 = SpecificMedCompletedLogModel.getFormattedDosageString(_:)(v45, v50);
  v48[1] = v51;
  if (a7)
  {

    v52 = 0;
    v53 = 0;
    v54 = v44;
  }

  else
  {
    v52 = a11;
    a7 = 0xE900000000000064;
    v54 = 0x656465654E207341;
    v53 = v74;
  }

  v55 = (a9 + v49);
  *v55 = v52;
  v55[1] = v53;
  v56 = (a9 + v33[12]);
  v57 = (a9 + v33[13]);
  v58 = v33[14];
  v59 = v33[15];
  v60 = (a9 + v33[16]);
  v61 = (a9 + v33[17]);
  v62 = (a9 + v33[18]);
  *v56 = v54;
  v56[1] = a7;
  v63 = v79;
  SpecificMedCompletedLogModel.createAppPunchout(url:)(v79);
  outlined destroy of AppPunchout?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v76(v32, 0, 1, v35);
  outlined assign with take of AppPunchout?(v32, a9 + v78, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v64 = v81;
  *v57 = v80;
  v57[1] = v64;
  *(a9 + v58) = v82 & 1;
  *(a9 + v59) = v83 & 1;
  v65 = v85;
  *v60 = v84;
  v60[1] = v65;
  v66 = v87;
  *v61 = v86;
  v61[1] = v66;
  v67 = v89;
  *v62 = v88;
  v62[1] = v67;
  return outlined assign with take of AppPunchout?(v90, a9 + v77, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
}

unint64_t SpecificMedCompletedLogModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x757461745364656DLL;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x68636E7550707061;
      break;
    case 5:
      result = 0x656761736F64;
      break;
    case 6:
      result = 0x7453656761736F64;
      break;
    case 7:
      result = 0x6E55656761736F64;
      break;
    case 8:
      result = 0x6570795464656DLL;
      break;
    case 9:
      result = 0x646E754268736173;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x457472616D537369;
      break;
    case 12:
      result = 0x614C646567676F6CLL;
      break;
    case 13:
      result = 0x4C64657070696B73;
      break;
    case 14:
      result = 0x62614C6E656B6174;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpecificMedCompletedLogModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SpecificMedCompletedLogModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpecificMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpecificMedCompletedLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SpecificMedCompletedLogModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI28SpecificMedCompletedLogModelV10CodingKeys33_ED1952F575E863E2C9E0E22A9189724CLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI28SpecificMedCompletedLogModelV10CodingKeys33_ED1952F575E863E2C9E0E22A9189724CLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for SpecificMedCompletedLogModel(0);
    v9 = 4;
    type metadata accessor for AppPunchout();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_0(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys);
  }

  return result;
}

uint64_t SpecificMedCompletedLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v64 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI28SpecificMedCompletedLogModelV10CodingKeys33_ED1952F575E863E2C9E0E22A9189724CLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI28SpecificMedCompletedLogModelV10CodingKeys33_ED1952F575E863E2C9E0E22A9189724CLLOGMR);
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v9 = v64 - v8;
  v10 = type metadata accessor for SpecificMedCompletedLogModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v15 = type metadata accessor for AppPunchout();
  v16 = *(*(v15 - 8) + 56);
  v75 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = *(v10 + 76);
  v76 = v12;
  v18 = &v12[v17];
  v19 = type metadata accessor for SnippetHeaderModel(0);
  v20 = *(*(v19 - 8) + 56);
  v70 = v18;
  v20(v18, 1, 1, v19);
  v21 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type SpecificMedCompletedLogModel.CodingKeys and conformance SpecificMedCompletedLogModel.CodingKeys();
  v68 = v9;
  v22 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    v77 = v22;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v23 = v75;
    v24 = v76;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v71);

    outlined destroy of AppPunchout?(v24 + v23, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);

    return outlined destroy of AppPunchout?(v70, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  }

  v25 = v10;
  v64[7] = 0x8000000273EB0FF0;
  v78 = 0;
  v26 = v68;
  v27 = v69;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v75;
  v24 = v76;
  *v76 = v28 & 1;
  v78 = 1;
  v24[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v24[2] = v29;
  v64[6] = v29;
  v78 = 2;
  v24[3] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24[4] = v30;
  v64[5] = v30;
  v78 = 3;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = 0;
  v24[5] = v31;
  v24[6] = v32;
  v64[4] = v32;
  v78 = 4;
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_0(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
  v33 = v77;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v33;
  if (v33)
  {
LABEL_6:
    (*(v67 + 8))(v26, v27);
    v72 = 0;
    v73 = 0;
    v74 = 0;
    goto LABEL_7;
  }

  outlined assign with take of AppPunchout?(v7, v24 + v23, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v78 = 5;
  v34 = v77;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v34)
  {
    v77 = v34;
    goto LABEL_6;
  }

  v38 = v24 + v25[9];
  *v38 = v35;
  v38[8] = v36 & 1;
  v78 = 6;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = (v24 + v25[10]);
  *v40 = v39;
  v40[1] = v41;
  v64[3] = v41;
  v78 = 7;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = (v24 + v25[11]);
  *v43 = v42;
  v43[1] = v44;
  v64[2] = v44;
  v78 = 8;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v77 = 0;
  v46 = &v76[v25[12]];
  *v46 = v45;
  v46[1] = v47;
  v64[1] = v47;
  v78 = 9;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  v77 = 0;
  v49 = &v76[v25[13]];
  *v49 = v48;
  v49[1] = v50;
  v78 = 10;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  v77 = 0;
  v76[v25[14]] = v51 & 1;
  v78 = 11;
  v52 = KeyedDecodingContainer.decode(_:forKey:)();
  v77 = 0;
  v76[v25[15]] = v52 & 1;
  v78 = 12;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = v54;
  v77 = 0;
  v55 = &v76[v25[16]];
  *v55 = v53;
  v55[1] = v54;
  v78 = 13;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v73 = v57;
  v77 = 0;
  v58 = &v76[v25[17]];
  *v58 = v56;
  v58[1] = v57;
  v78 = 14;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v60;
  v77 = 0;
  v61 = &v76[v25[18]];
  *v61 = v59;
  v61[1] = v60;
  v78 = 15;
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_0(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
  v62 = v77;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v62;
  if (v62)
  {
    (*(v67 + 8))(v68, v69);
    v23 = v75;
    v24 = v76;
    goto LABEL_7;
  }

  (*(v67 + 8))(v68, v69);
  outlined assign with take of AppPunchout?(v66, v70, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v63 = v76;
  outlined init with copy of SpecificMedCompletedLogModel(v76, v65);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return outlined destroy of SpecificMedCompletedLogModel(v63);
}

uint64_t outlined init with copy of SpecificMedCompletedLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpecificMedCompletedLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SpecificMedCompletedLogModel(uint64_t a1)
{
  v2 = type metadata accessor for SpecificMedCompletedLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SpecificMedCompletedLogModel(uint64_t a1)
{
  type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_0(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10SnippetKit11AppPunchoutVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t specialized SpecificMedCompletedLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745364656DLL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000273EB1010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000273EB1030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656761736F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7453656761736F64 && a2 == 0xEC000000676E6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E55656761736F64 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6570795464656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646E754268736173 && a2 == 0xEC0000004449656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000273EB1050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4C64657070696B73 && a2 == 0xEC0000006C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x62614C6E656B6174 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 15;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t type metadata accessor for GenericQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericQueryModel;
  if (!type metadata singleton initialization cache for GenericQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericQueryModel.averageValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenericQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenericQueryModel.maxValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenericQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenericQueryModel.minValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenericQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenericQueryModel.mostRecentValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenericQueryModel(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenericQueryModel.totalValue.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenericQueryModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenericQueryModel.averageValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 44));

  return v1;
}

uint64_t GenericQueryModel.averageValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.maxValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 48));

  return v1;
}

uint64_t GenericQueryModel.maxValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.minValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 52));

  return v1;
}

uint64_t GenericQueryModel.minValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.mostRecentValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 56));

  return v1;
}

uint64_t GenericQueryModel.mostRecentValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.totalValueString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 60));

  return v1;
}

uint64_t GenericQueryModel.totalValueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.unit.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 64));

  return v1;
}

uint64_t GenericQueryModel.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.averageLabelString.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenericQueryModel(0) + 68));

  return v1;
}

uint64_t GenericQueryModel.averageLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericQueryModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericQueryModel.init(averageValue:maxValue:minValue:mostRecentValue:totalValue:unit:dateLabel:url:averageLabelString:headerModel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(v86) = a8;
  LODWORD(v83) = a6;
  LODWORD(v80) = a4;
  v94 = a17;
  v95 = a18;
  v96 = a14;
  v92 = a13;
  v93 = a16;
  v90 = a15;
  v91 = a12;
  v85 = a11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v75 - v25;
  v88 = type metadata accessor for AppPunchout();
  v27 = *(v88 - 8);
  v87 = *(v27 + 56);
  v89 = v27 + 56;
  v87(a9, 1, 1, v88);
  Model = type metadata accessor for GenericQueryModel(0);
  v29 = Model[10];
  v75 = v29;
  v30 = type metadata accessor for SpeakableString();
  (*(*(v30 - 8) + 56))(a9 + v29, 1, 1, v30);
  v31 = Model[18];
  v78 = v31;
  v32 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = 0;
  }

  if (a2)
  {
    v34 = a1;
  }

  else
  {
    v34 = v33;
  }

  v84 = v34;
  v35 = a9 + Model[5];
  *v35 = v34;
  v81 = a2 & 1 | ((a1 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v35 + 8) = v81;
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = 0;
  }

  v37 = v80;
  if (v80)
  {
    v38 = a3;
  }

  else
  {
    v38 = v36;
  }

  v82 = v38;
  v39 = a9 + Model[6];
  *v39 = v38;
  v79 = v37 & 1 | ((a3 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v39 + 8) = v79;
  if ((a5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v40 = a5;
  }

  else
  {
    v40 = 0;
  }

  v41 = v83;
  if (v83)
  {
    v42 = a5;
  }

  else
  {
    v42 = v40;
  }

  v80 = v42;
  v43 = a9 + Model[7];
  *v43 = v42;
  v77 = v41 & 1 | ((a5 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v43 + 8) = v77;
  if ((a7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v44 = a7;
  }

  else
  {
    v44 = 0;
  }

  v45 = v86;
  if (v86)
  {
    v46 = a7;
  }

  else
  {
    v46 = v44;
  }

  v83 = v46;
  v47 = a9 + Model[8];
  *v47 = v46;
  v76 = v45 & 1 | ((a7 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v47 + 8) = v76;
  if ((a10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v48 = a10;
  }

  else
  {
    v48 = 0;
  }

  v49 = v85;
  if (v85)
  {
    v50 = a10;
  }

  else
  {
    v50 = v48;
  }

  v51 = a9 + Model[9];
  v52 = Model[15];
  v53 = Model[16];
  v54 = Model[17];
  v55 = (a9 + Model[11]);
  v56 = (a9 + Model[12]);
  v57 = (a9 + Model[13]);
  v86 = (a9 + Model[14]);
  v58 = (a9 + v52);
  *v51 = v50;
  v59 = v49 & 1 | ((a10 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  *(v51 + 8) = v59;
  v60 = (a9 + v53);
  v61 = (a9 + v54);
  v62 = v92;
  *v60 = v91;
  v60[1] = v62;
  outlined assign with copy of SpeakableString?(v96, a9 + v75, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v63 = v90;
  GenericQueryModel.createAppPunchout(url:)(v90);
  v87(v26, 0, 1, v88);
  outlined assign with take of AppPunchout?(v26, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v64 = v94;
  *v61 = v93;
  v61[1] = v64;
  v65 = v95;
  outlined assign with copy of SpeakableString?(v95, a9 + v78, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  *v58 = GenericQueryModel.getFormattedValueString(inputValue:)(v50, v59);
  v58[1] = v66;
  *v55 = GenericQueryModel.getFormattedValueString(inputValue:)(v84, v81);
  v55[1] = v67;
  *v56 = GenericQueryModel.getFormattedValueString(inputValue:)(v82, v79);
  v56[1] = v68;
  *v57 = GenericQueryModel.getFormattedValueString(inputValue:)(v80, v77);
  v57[1] = v69;
  v70 = GenericQueryModel.getFormattedValueString(inputValue:)(v83, v76);
  v72 = v71;
  outlined destroy of AppPunchout?(v65, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = outlined destroy of AppPunchout?(v96, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v74 = v86;
  *v86 = v70;
  v74[1] = v72;
  return result;
}

uint64_t GenericQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t outlined assign with copy of SpeakableString?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t GenericQueryModel.getFormattedValueString(inputValue:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  Model = type metadata accessor for GenericQueryModel(0);
  outlined init with copy of AppPunchout?(v2 + *(Model + 72), v7, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v9 = type metadata accessor for SnippetHeaderModel(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of AppPunchout?(v7, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    return 0;
  }

  v11 = &v7[*(v9 + 24)];
  v13 = *v11;
  v12 = *(v11 + 1);

  outlined destroy of GenericQueryModel(v7, type metadata accessor for SnippetHeaderModel);
  v14 = v13 == 0xD000000000000021 && 0x8000000273EB10F0 == v12;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v13 == 0xD000000000000029 ? (v15 = 0x8000000273EB1120 == v12) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v13 == 0xD00000000000002ALL ? (v16 = 0x8000000273EB1150 == v12) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v13 == 0xD000000000000029 ? (v17 = 0x8000000273EB1180 == v12) : (v17 = 0), v17))))
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return GenericQueryModel.roundUp(inputValue:)(a1, a2 & 1);
    }
  }

  return GenericQueryModel.formatWithCommas(inputValue:)(a1, a2 & 1);
}

uint64_t GenericQueryModel.roundUp(inputValue:)(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 || *&result <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    v2 = trunc(*&result);
    if (*&result > -9.22337204e18 && *&result < 9.22337204e18 && v2 == *&result)
    {
      if ((~result & 0x7FF0000000000000) != 0)
      {
        *&result = COERCE_DOUBLE(dispatch thunk of CustomStringConvertible.description.getter());
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D839F8];
      *(v6 + 16) = xmmword_273EA69E0;
      v8 = MEMORY[0x277D83A80];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v5;
      v9 = String.init(format:arguments:)();

      return v9;
    }
  }

  return result;
}

uint64_t GenericQueryModel.formatWithCommas(inputValue:)(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v3 setNumberStyle_];
  [v3 setMaximumFractionDigits_];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v5 = [v3 stringFromNumber_];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t GenericQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6C61566C61746F74;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_18;
    case 9:
      v3 = 1450076525;
LABEL_18:
      result = v3 | 0x65756C6100000000;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 1953066613;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized GenericQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI17GenericQueryModelV10CodingKeys33_AA8A123D8A292E3A4EB69EB8649F01B2LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI17GenericQueryModelV10CodingKeys33_AA8A123D8A292E3A4EB69EB8649F01B2LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for GenericQueryModel(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    type metadata accessor for SpeakableString();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[3] = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[2] = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[1] = 14;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys);
  }

  return result;
}

uint64_t GenericQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v80 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = &v76 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v76 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI17GenericQueryModelV10CodingKeys33_AA8A123D8A292E3A4EB69EB8649F01B2LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI17GenericQueryModelV10CodingKeys33_AA8A123D8A292E3A4EB69EB8649F01B2LLOGMR);
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v98 = &v76 - v8;
  Model = type metadata accessor for GenericQueryModel(0);
  v10 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppPunchout();
  v14 = *(*(v13 - 8) + 56);
  v91 = v13;
  v14(v12, 1, 1);
  v15 = &v12[v10[7]];
  *v15 = 0;
  v90 = v15;
  v15[8] = 1;
  v16 = &v12[v10[8]];
  *v16 = 0;
  v89 = v16;
  v16[8] = 1;
  v17 = &v12[v10[9]];
  *v17 = 0;
  v88 = v17;
  v17[8] = 1;
  v18 = &v12[v10[10]];
  *v18 = 0;
  v87 = v18;
  v18[8] = 1;
  v19 = &v12[v10[11]];
  *v19 = 0;
  v85 = v19;
  v19[8] = 1;
  v20 = v10[12];
  v21 = type metadata accessor for SpeakableString();
  v22 = *(*(v21 - 8) + 56);
  v84 = v20;
  v86 = v21;
  v22(&v12[v20], 1, 1);
  v23 = &v12[v10[13]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v83 = v23;
  v24 = &v12[v10[14]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v82 = v24;
  v25 = &v12[v10[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v12[v10[16]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v12[v10[17]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v12[v10[18]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v12[v10[19]];
  *v29 = 0;
  v29[1] = 0;
  v30 = v10[20];
  v31 = type metadata accessor for SnippetHeaderModel(0);
  v32 = *(*(v31 - 8) + 56);
  v97 = v12;
  v79 = v30;
  v32(&v12[v30], 1, 1, v31);
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  lazy protocol witness table accessor for type GenericQueryModel.CodingKeys and conformance GenericQueryModel.CodingKeys();
  v33 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    v75 = v97;
  }

  else
  {
    v34 = v90;
    v96 = v25;
    v78 = v26;
    v77 = v27;
    v76 = v28;
    v35 = v92;
    v36 = v93;
    v114 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v37 = v94;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v37;
    v40 = v97;
    outlined assign with take of AppPunchout?(v39, v97, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v113 = 1;
    *v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34[8] = v41 & 1;
    v112 = 2;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v89;
    *v89 = v42;
    *(v43 + 8) = v44 & 1;
    v111 = 3;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v88;
    *v88 = v45;
    *(v46 + 8) = v47 & 1;
    v110 = 4;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v87;
    *v87 = v48;
    *(v49 + 8) = v50 & 1;
    v109 = 5;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v85;
    *v85 = v51;
    *(v52 + 8) = v53 & 1;
    v108 = 6;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SpeakableString and conformance SpeakableString, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v36, v40 + v84, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v107 = 7;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = v83;
    *v83 = v54;
    v55[1] = v56;
    v106[0] = 8;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v82;
    *v82 = v57;
    v58[1] = v59;
    v105 = 9;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v96;
    *v96 = v60;
    v61[1] = v62;
    v104 = 10;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v78;
    *v78 = v63;
    v64[1] = v65;
    v103 = 11;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v77;
    *v77 = v66;
    v67[1] = v68;
    v102 = 12;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v76;
    *v76 = v69;
    v70[1] = v71;
    v101 = 13;
    *v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29[1] = v72;
    v100 = 14;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v73 = v95;
    v74 = v98;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v35 + 8))(v74, v73);
    v75 = v97;
    outlined assign with take of AppPunchout?(v81, &v97[v79], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of GenericQueryModel(v75, v80);
  }

  __swift_destroy_boxed_opaque_existential_1(v99);
  return outlined destroy of GenericQueryModel(v75, type metadata accessor for GenericQueryModel);
}

uint64_t outlined init with copy of GenericQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for GenericQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for GenericQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SpeakableString?, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_1(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _s10SnippetKit11AppPunchoutVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for GenericQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GenericQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1070 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000273EB1090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000273EB10B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB10D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t outlined destroy of GenericQueryModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HealthDataLogModel.date.getter()
{
  type metadata accessor for HealthDataLogModel(0);
}

uint64_t type metadata accessor for HealthDataLogModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthDataLogModel;
  if (!type metadata singleton initialization cache for HealthDataLogModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthDataLogModel.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HealthDataLogModel(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HealthDataLogModel.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel(0) + 24));

  return v1;
}

uint64_t HealthDataLogModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthDataLogModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HealthDataLogModel.timeLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel(0) + 28));

  return v1;
}

uint64_t HealthDataLogModel.timeLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthDataLogModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HealthDataLogModel.unitLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel(0) + 32));

  return v1;
}

uint64_t HealthDataLogModel.unitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthDataLogModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HealthDataLogModel.dataLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel(0) + 36));

  return v1;
}

uint64_t HealthDataLogModel.dataLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthDataLogModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HealthDataLogModel.loggedLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for HealthDataLogModel(0) + 44));

  return v1;
}

uint64_t HealthDataLogModel.loggedLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HealthDataLogModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HealthDataLogModel.init(snippetHeaderModel:date:unitLabel:dataValue:url:loggedButtonLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v64 = a7;
  v57 = a6;
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v66 = a10;
  v67 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v21 - 8) + 56))(a9, 1, 1, v21);
  v22 = type metadata accessor for HealthDataLogModel(0);
  v23 = v22[5];
  v24 = (a9 + v22[8]);
  v25 = (a9 + v22[9]);
  v26 = v22[10];
  v27 = type metadata accessor for AppPunchout();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v61 = v27;
  v62 = v26;
  v30 = a9 + v26;
  v31 = a2;
  v59 = v28 + 56;
  v60 = v29;
  (v29)(v30, 1, 1);
  v65 = a1;
  outlined assign with copy of SnippetHeaderModel?(a1, a9);
  *(a9 + v23) = a2;
  v32 = v56;
  *v24 = v55;
  v24[1] = v32;
  *v25 = HealthDataLogModel.getFormattedValueString(inputValue:)(v58, v57 & 1);
  v25[1] = v33;
  if (a2)
  {
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    v34 = type metadata accessor for SpeakableString();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    if (v36(v20, 1, v34) == 1)
    {
      outlined destroy of AppPunchout?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v42 = SpeakableString.print.getter();
      v58 = v31;
      v44 = v43;
      (*(v35 + 8))(v20, v34);
      v68 = v42;
      v69 = v44;
      lazy protocol witness table accessor for type String and conformance String();
      v37 = StringProtocol.capitalized.getter();
      v38 = v45;
    }

    v46 = (a9 + v22[6]);
    *v46 = v37;
    v46[1] = v38;
    dispatch thunk of DialogCalendar.timeDescriptive.getter();
    if (v36(v17, 1, v34) == 1)
    {
      outlined destroy of AppPunchout?(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v39 = SpeakableString.print.getter();
      v40 = v47;
      (*(v35 + 8))(v17, v34);
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v41 = (a9 + v22[6]);
    *v41 = 0;
    v41[1] = 0;
  }

  v48 = (a9 + v22[7]);
  v49 = (a9 + v22[11]);
  *v48 = v39;
  v48[1] = v40;
  v51 = v63;
  v50 = v64;
  HealthDataLogModel.createAppPunchout(url:)(v64);
  outlined destroy of AppPunchout?(v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v65, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v60(v51, 0, 1, v61);
  result = outlined assign with take of AppPunchout?(v51, a9 + v62, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v53 = v66;
  *v49 = v67;
  v49[1] = v53;
  return result;
}

uint64_t outlined assign with copy of SnippetHeaderModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t HealthDataLogModel.getFormattedValueString(inputValue:)(uint64_t result, char a2)
{
  if (a2)
  {
    *&result = 0.0;
  }

  else
  {
    v2 = trunc(*&result);
    if (*&result > -9.22337204e18 && *&result < 9.22337204e18 && v2 == *&result)
    {
      if ((~result & 0x7FF0000000000000) != 0)
      {
        *&result = COERCE_DOUBLE(dispatch thunk of CustomStringConvertible.description.getter());
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v6 = swift_allocObject();
      v7 = MEMORY[0x277D839F8];
      *(v6 + 16) = xmmword_273EA69E0;
      v8 = MEMORY[0x277D83A80];
      *(v6 + 56) = v7;
      *(v6 + 64) = v8;
      *(v6 + 32) = v5;
      v9 = String.init(format:arguments:)();

      return v9;
    }
  }

  return result;
}

uint64_t HealthDataLogModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthDataLogModel.CodingKeys()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x68636E7550707061;
  if (v1 != 6)
  {
    v3 = 0x614C646567676F6CLL;
  }

  v4 = 0x6562614C74696E75;
  if (v1 != 4)
  {
    v4 = 0x6562614C61746164;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6562614C65746164;
  if (v1 != 2)
  {
    v5 = 0x6562614C656D6974;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthDataLogModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized HealthDataLogModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthDataLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthDataLogModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthDataLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI18HealthDataLogModelV10CodingKeys33_37BE6595E96F217C0EEE499AC487E93FLLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI18HealthDataLogModelV10CodingKeys33_37BE6595E96F217C0EEE499AC487E93FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  type metadata accessor for SnippetHeaderModel(0);
  lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for HealthDataLogModel(0) + 20));
    v10[7] = 1;
    type metadata accessor for DialogCalendar();
    lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type DialogCalendar and conformance DialogCalendar, MEMORY[0x277D55B90], MEMORY[0x277D55B98]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    type metadata accessor for AppPunchout();
    lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys);
  }

  return result;
}

uint64_t HealthDataLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v49 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI18HealthDataLogModelV10CodingKeys33_37BE6595E96F217C0EEE499AC487E93FLLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI18HealthDataLogModelV10CodingKeys33_37BE6595E96F217C0EEE499AC487E93FLLOGMR);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v65 = &v49 - v7;
  v8 = type metadata accessor for HealthDataLogModel(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SnippetHeaderModel(0);
  v13 = *(*(v12 - 8) + 56);
  v58 = v12;
  v13(v11, 1, 1);
  v57 = v9[7];
  *&v11[v57] = 0;
  v14 = &v11[v9[8]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v11[v9[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v11[v9[11]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v9[12];
  v19 = type metadata accessor for AppPunchout();
  v20 = *(*(v19 - 8) + 56);
  v55 = v18;
  v20(&v11[v18], 1, 1, v19);
  v21 = v9[13];
  v63 = v11;
  v22 = &v11[v21];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = a1;
  v24 = a1[3];
  v64 = v23;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  lazy protocol witness table accessor for type HealthDataLogModel.CodingKeys and conformance HealthDataLogModel.CodingKeys();
  v25 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v26 = v63;
  }

  else
  {
    v62 = v14;
    v52 = v16;
    v53 = v15;
    v50 = v22;
    v51 = v17;
    v27 = v59;
    LOBYTE(v67) = 0;
    lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v28 = v60;
    v29 = v65;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v63;
    outlined assign with take of AppPunchout?(v28, v63, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    type metadata accessor for DialogCalendar();
    v66 = 1;
    lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type DialogCalendar and conformance DialogCalendar, MEMORY[0x277D55B90], MEMORY[0x277D55BA0]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v26 + v57) = v67;
    LOBYTE(v67) = 2;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v27;
    v32 = v62;
    *v62 = v30;
    v32[1] = v33;
    LOBYTE(v67) = 3;
    v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v53;
    *v53 = v34;
    v35[1] = v36;
    LOBYTE(v67) = 4;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v52;
    *v52 = v37;
    v38[1] = v39;
    LOBYTE(v67) = 5;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v51;
    *v51 = v40;
    v41[1] = v42;
    LOBYTE(v67) = 6;
    lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v43 = v56;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v43, v26 + v55, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    LOBYTE(v67) = 7;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = v46;
    (*(v31 + 8))(v29, v61);
    v48 = v50;
    *v50 = v45;
    v48[1] = v47;
    outlined init with copy of HealthDataLogModel(v26, v54);
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
  return outlined destroy of HealthDataLogModel(v26);
}

uint64_t outlined destroy of HealthDataLogModel(uint64_t a1)
{
  v2 = type metadata accessor for HealthDataLogModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of HealthDataLogModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDataLogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SnippetHeaderModel and conformance SnippetHeaderModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for HealthDataLogModel(uint64_t a1)
{
  type metadata accessor for SnippetHeaderModel?(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SnippetHeaderModel?(319, &lazy cache variable for type metadata for DialogCalendar?, MEMORY[0x277D55B90]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for SnippetHeaderModel?(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for SnippetHeaderModel?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HealthDataLogModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HealthDataLogModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized HealthDataLogModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t type metadata accessor for GenericButtonSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericButtonSnippet;
  if (!type metadata singleton initialization cache for GenericButtonSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericButtonSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ActionHandler.init()();
  v4 = type metadata accessor for GenericButtonSnippet(0);
  return outlined init with take of GenericButtonModel(a1, a2 + *(v4 + 20), type metadata accessor for GenericButtonModel);
}

id GenericButtonSnippet.punchOutCommand.getter()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  type metadata accessor for GenericButtonSnippet(0);
  v5 = type metadata accessor for GenericButtonModel(0);
  URL._bridgeToObjectiveC()(*(v5 + 20));
  v7 = v6;
  [v4 setPunchOutUri_];

  v8 = v4;
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v12 = MEMORY[0x2743E09B0](v9, v11);

  [v8 setAceId_];

  return v8;
}

uint64_t GenericButtonSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[1] = a1;
  v3 = type metadata accessor for RFButtonStyle();
  v16[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenericButtonSnippet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  outlined init with copy of GenericButtonModel(v2, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenericButtonSnippet);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  outlined init with take of GenericButtonModel(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GenericButtonSnippet);
  v16[4] = v2;
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v16[0] + 8))(v5, v3);
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #1 in GenericButtonSnippet.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI15InteractionTypeOSgMd, "~=");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14ActionPropertyVSgMd, "~=");
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI21StandardActionHandlerVSgMd, "~=");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ActionProperty();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24ActionElementConvertible_pGMd, "~=");
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_273EA69E0;
  v14 = type metadata accessor for Command();
  v15 = MEMORY[0x277D63770];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
  *boxed_opaque_existential_1 = GenericButtonSnippet.punchOutCommand.getter();
  *(boxed_opaque_existential_1 + 8) = 1;
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D63718], v14);
  ActionProperty.init(_:)();
  ActionHandler.wrappedValue.getter();
  v17 = type metadata accessor for StandardActionHandler();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return outlined destroy of AppPunchout?(v8, &_s9SnippetUI21StandardActionHandlerVSgMd, "~=");
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v20 = *MEMORY[0x277D63BE8];
    v21 = type metadata accessor for InteractionType();
    v22 = *(v21 - 8);
    v26 = v9;
    v23 = v5;
    v24 = v22;
    (*(v22 + 104))(v2, v20, v21);
    (*(v24 + 56))(v2, 0, 1, v21);
    StandardActionHandler.perform(_:interactionType:)();
    outlined destroy of AppPunchout?(v2, &_s9SnippetUI15InteractionTypeOSgMd, "~=");
    outlined destroy of AppPunchout?(v23, &_s10SnippetKit14ActionPropertyVSgMd, "~=");
    (*(v10 + 8))(v12, v26);
    return (*(v18 + 8))(v8, v17);
  }
}

uint64_t outlined init with copy of GenericButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of GenericButtonModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t closure #2 in GenericButtonSnippet.body.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for GenericButtonSnippet(0);
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type Button<Text> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle()
{
  result = lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle;
  if (!lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle)
  {
    type metadata accessor for RFButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RFButtonStyle and conformance RFButtonStyle);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance GenericButtonSnippet@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v18[1] = a2;
  v5 = type metadata accessor for RFButtonStyle();
  v18[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  outlined init with copy of GenericButtonModel(v4, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenericButtonSnippet);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  outlined init with take of GenericButtonModel(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for GenericButtonSnippet);
  v18[4] = v4;
  Button.init(action:label:)();
  static PrimitiveButtonStyle<>.rfButton.getter();
  lazy protocol witness table accessor for type Button<Text> and conformance Button<A>();
  lazy protocol witness table accessor for type RFButtonStyle and conformance RFButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v18[0] + 8))(v7, v5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t type metadata completion function for GenericButtonSnippet(uint64_t a1)
{
  result = type metadata accessor for ActionHandler();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GenericButtonModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for GenericButtonSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ActionHandler();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];

  v7 = *(type metadata accessor for GenericButtonModel(0) + 20);
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in GenericButtonSnippet.body.getter()
{
  type metadata accessor for GenericButtonSnippet(0);

  return closure #1 in GenericButtonSnippet.body.getter();
}

uint64_t type metadata accessor for BloodPressureQueryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for BloodPressureQueryModel;
  if (!type metadata singleton initialization cache for BloodPressureQueryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureQueryModel.systolic.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMin.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMax.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.diastolic.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMin.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMax.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for BloodPressureQueryModel(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t BloodPressureQueryModel.systolicString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 44));

  return v1;
}

uint64_t BloodPressureQueryModel.systolicString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 48));

  return v1;
}

uint64_t BloodPressureQueryModel.diastolicString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMinString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 52));

  return v1;
}

uint64_t BloodPressureQueryModel.systolicMinString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.systolicMaxString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 56));

  return v1;
}

uint64_t BloodPressureQueryModel.systolicMaxString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMinString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 60));

  return v1;
}

uint64_t BloodPressureQueryModel.diastolicMinString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicMaxString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 64));

  return v1;
}

uint64_t BloodPressureQueryModel.diastolicMaxString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabelString.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 68));

  return v1;
}

uint64_t BloodPressureQueryModel.unitLabelString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.systolicLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 72));

  return v1;
}

uint64_t BloodPressureQueryModel.systolicLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.diastolicLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 76));

  return v1;
}

uint64_t BloodPressureQueryModel.diastolicLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.dateLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 84));

  return v1;
}

uint64_t BloodPressureQueryModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.unitLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for BloodPressureQueryModel(0) + 88));

  return v1;
}

uint64_t BloodPressureQueryModel.unitLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for BloodPressureQueryModel(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t BloodPressureQueryModel.init(systolic:diastolic:systolicMin:systolicMax:diastolicMin:diastolicMax:unitLabel:systolicLabel:diastolicLabel:dateLabel:url:headerModel:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t *a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v99 = a4;
  v100 = a8;
  v105 = a5;
  v101 = a1;
  v102 = a3;
  v113 = a22;
  v97 = a13;
  v98 = a6;
  v111 = a7;
  v112 = a12;
  v95 = a2;
  v96 = a11;
  v110 = a10;
  v108 = a21;
  v109 = a19;
  v93 = a17;
  v94 = a18;
  v91 = a16;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v107 = &v88 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v88 - v26;
  v28 = type metadata accessor for AppPunchout();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v106 = v28;
  v103 = v29 + 56;
  v104 = v30;
  (v30)(a9, 1, 1);
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v32 = (a9 + Model[17]);
  *v32 = 0;
  v32[1] = 0;
  v33 = (a9 + Model[18]);
  v34 = (a9 + Model[19]);
  v35 = Model[20];
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = (a9 + Model[22]);
  v38 = a9 + Model[23];
  v39 = type metadata accessor for SnippetHeaderModel(0);
  v40 = *(*(v39 - 8) + 56);
  v92 = v38;
  v40(v38, 1, 1, v39);
  *v37 = a14;
  v37[1] = a15;
  v41 = v93;
  v42 = v94;
  *v33 = v91;
  v33[1] = v41;
  v43 = v109;
  *v34 = v42;
  v34[1] = v43;
  v109 = a20;
  outlined init with copy of AppPunchout?(a20, v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v44 = type metadata accessor for SpeakableString();
  v45 = *(v44 - 8);
  if ((*(v45 + 48))(v27, 1, v44) == 1)
  {
    outlined destroy of AppPunchout?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = SpeakableString.print.getter();
    v47 = v49;
    (*(v45 + 8))(v27, v44);
    v46 = v48;
  }

  v50 = a9 + Model[5];
  v51 = a9 + Model[6];
  v52 = a9 + Model[7];
  v53 = a9 + Model[8];
  v54 = a9 + Model[9];
  v55 = a9 + Model[10];
  v56 = Model[12];
  v88 = (a9 + Model[11]);
  v89 = (a9 + v56);
  v57 = Model[14];
  v90 = (a9 + Model[13]);
  v91 = (a9 + v57);
  v58 = Model[16];
  v93 = (a9 + Model[15]);
  v94 = (a9 + v58);
  v59 = (a9 + Model[21]);
  *v59 = v46;
  v59[1] = v47;
  outlined assign with copy of SnippetHeaderModel?(v113, v92);
  v60 = v101;
  *v50 = v101;
  v61 = v95 & 1;
  *(v50 + 8) = v95 & 1;
  v62 = v105;
  *v51 = v105;
  v63 = v98 & 1;
  *(v51 + 8) = v98 & 1;
  *v52 = v111;
  v64 = v99;
  LOBYTE(v51) = v100 & 1;
  *(v52 + 8) = v100 & 1;
  v65 = v102;
  *v53 = v102;
  v66 = v64 & 1;
  *(v53 + 8) = v64 & 1;
  *v54 = v110;
  LOBYTE(v53) = v96 & 1;
  *(v54 + 8) = v96 & 1;
  *v55 = v112;
  LOBYTE(v54) = v97 & 1;
  *(v55 + 8) = v97 & 1;
  v67 = HealthDataLogModel.getFormattedValueString(inputValue:)(v60, v61);
  v68 = v88;
  *v88 = v67;
  v68[1] = v69;
  v70 = HealthDataLogModel.getFormattedValueString(inputValue:)(v65, v66);
  v71 = v89;
  *v89 = v70;
  v71[1] = v72;
  v73 = HealthDataLogModel.getFormattedValueString(inputValue:)(v62, v63);
  v74 = v90;
  *v90 = v73;
  v74[1] = v75;
  v76 = HealthDataLogModel.getFormattedValueString(inputValue:)(v111, v51);
  v77 = v91;
  *v91 = v76;
  v77[1] = v78;
  v79 = HealthDataLogModel.getFormattedValueString(inputValue:)(v110, v53);
  v80 = v93;
  *v93 = v79;
  v80[1] = v81;
  v82 = HealthDataLogModel.getFormattedValueString(inputValue:)(v112, v54);
  v83 = v94;
  *v94 = v82;
  v83[1] = v84;
  v86 = v107;
  v85 = v108;
  BloodPressureQueryModel.createAppPunchout(url:)(v108);
  outlined destroy of AppPunchout?(v113, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  outlined destroy of AppPunchout?(v85, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of AppPunchout?(v109, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v104(v86, 0, 1, v106);
  return outlined assign with take of AppPunchout?(v86, a9, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
}

uint64_t BloodPressureQueryModel.createAppPunchout(url:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(a1, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of AppPunchout?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    URL.absoluteString.getter();
    AppPunchout.init(punchOutUri:bundleId:appDisplayName:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t BloodPressureQueryModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 7:
    case 14:
      result = 0x63696C6F74737973;
      break;
    case 4:
      result = 0x696C6F7473616964;
      break;
    case 5:
    case 6:
    case 15:
      result = 0x696C6F7473616964;
      break;
    case 8:
      result = 0x696C6F7473616964;
      break;
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6562614C74696E75;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      v3 = 1702125924;
      goto LABEL_11;
    case 18:
      v3 = 1953066613;
LABEL_11:
      result = v3 | 0x6562614C00000000;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance BloodPressureQueryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized BloodPressureQueryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BloodPressureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BloodPressureQueryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloodPressureQueryModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI23BloodPressureQueryModelV10CodingKeys33_51DACB27869F5CD01CFBCDE062438FF8LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI23BloodPressureQueryModelV10CodingKeys33_51DACB27869F5CD01CFBCDE062438FF8LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = 0;
  type metadata accessor for AppPunchout();
  _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62888]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for BloodPressureQueryModel(0);
    v9 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 16;
    type metadata accessor for URL();
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = 19;
    type metadata accessor for SnippetHeaderModel(0);
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys);
  }

  return result;
}

uint64_t BloodPressureQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a1;
  v102 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v119 = v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v120 = v96 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI23BloodPressureQueryModelV10CodingKeys33_51DACB27869F5CD01CFBCDE062438FF8LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI23BloodPressureQueryModelV10CodingKeys33_51DACB27869F5CD01CFBCDE062438FF8LLOGMR);
  v118 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v124 = v96 - v8;
  Model = type metadata accessor for BloodPressureQueryModel(0);
  v10 = (Model - 8);
  MEMORY[0x28223BE20](Model);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppPunchout();
  v14 = *(*(v13 - 8) + 56);
  v117 = v13;
  v14(v12, 1, 1);
  v15 = &v12[v10[7]];
  *v15 = 0;
  v116 = v15;
  v15[8] = 1;
  v16 = &v12[v10[8]];
  *v16 = 0;
  v115 = v16;
  v16[8] = 1;
  v17 = &v12[v10[9]];
  *v17 = 0;
  v114 = v17;
  v17[8] = 1;
  v18 = &v12[v10[10]];
  *v18 = 0;
  v113 = v18;
  v18[8] = 1;
  v19 = &v12[v10[11]];
  *v19 = 0;
  v112 = v19;
  v19[8] = 1;
  v20 = &v12[v10[12]];
  *v20 = 0;
  v111 = v20;
  v20[8] = 1;
  v21 = &v12[v10[13]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v110 = v21;
  v22 = &v12[v10[14]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v109 = v22;
  v23 = &v12[v10[15]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v108 = v23;
  v24 = &v12[v10[16]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v107 = v24;
  v25 = &v12[v10[17]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v106 = v25;
  v26 = &v12[v10[18]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v105 = v26;
  v27 = &v12[v10[19]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v104 = v27;
  v28 = &v12[v10[20]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v103 = v28;
  v29 = &v12[v10[21]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = v10[22];
  v31 = type metadata accessor for URL();
  v32 = *(*(v31 - 8) + 56);
  v100 = v30;
  v32(&v12[v30], 1, 1, v31);
  v33 = &v12[v10[23]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v12[v10[24]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v10[25];
  v36 = type metadata accessor for SnippetHeaderModel(0);
  v37 = *(*(v36 - 8) + 56);
  v123 = v12;
  v37(&v12[v35], 1, 1, v36);
  __swift_project_boxed_opaque_existential_1(v125, v125[3]);
  lazy protocol witness table accessor for type BloodPressureQueryModel.CodingKeys and conformance BloodPressureQueryModel.CodingKeys();
  v38 = v122;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    v95 = v123;
  }

  else
  {
    v39 = v116;
    v122 = v29;
    v97 = v33;
    v98 = v34;
    v96[1] = v36;
    v99 = v35;
    v41 = v118;
    v40 = v119;
    v126 = 0;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type AppPunchout and conformance AppPunchout, MEMORY[0x277D62880], MEMORY[0x277D62890]);
    v42 = v120;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v42, v123, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    v126 = 1;
    *v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39[8] = v44 & 1;
    v126 = 2;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v115;
    *v115 = v45;
    *(v46 + 8) = v47 & 1;
    v126 = 3;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v114;
    *v114 = v48;
    *(v49 + 8) = v50 & 1;
    v126 = 4;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v113;
    *v113 = v51;
    *(v52 + 8) = v53 & 1;
    v126 = 5;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v55 = v112;
    *v112 = v54;
    *(v55 + 8) = v56 & 1;
    v126 = 6;
    v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v58 = v111;
    *v111 = v57;
    *(v58 + 8) = v59 & 1;
    v126 = 7;
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v61 = v110;
    *v110 = v60;
    v61[1] = v62;
    v126 = 8;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v109;
    *v109 = v63;
    v64[1] = v65;
    v126 = 9;
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v108;
    *v108 = v66;
    v67[1] = v68;
    v126 = 10;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v107;
    *v107 = v69;
    v70[1] = v71;
    v126 = 11;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v106;
    *v106 = v72;
    v73[1] = v74;
    v126 = 12;
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v105;
    *v105 = v75;
    v76[1] = v77;
    v126 = 13;
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v104;
    *v104 = v78;
    v79[1] = v80;
    v126 = 14;
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v82 = v103;
    *v103 = v81;
    v82[1] = v83;
    v126 = 15;
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v85 = v122;
    *v122 = v84;
    v85[1] = v86;
    v126 = 16;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AppPunchout?(v40, &v123[v100], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v126 = 17;
    v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v97;
    *v97 = v87;
    v88[1] = v89;
    v126 = 18;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v98;
    *v98 = v90;
    v91[1] = v92;
    v126 = 19;
    _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    v93 = v121;
    v94 = v124;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v41 + 8))(v94, v93);
    v95 = v123;
    outlined assign with take of AppPunchout?(v101, &v123[v99], &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    outlined init with copy of BloodPressureQueryModel(v95, v102);
  }

  __swift_destroy_boxed_opaque_existential_1(v125);
  return outlined destroy of BloodPressureQueryModel(v95);
}

uint64_t outlined destroy of BloodPressureQueryModel(uint64_t a1)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  (*(*(Model - 8) + 8))(a1, Model);
  return a1;
}

uint64_t outlined init with copy of BloodPressureQueryModel(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for BloodPressureQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t _s10SnippetKit11AppPunchoutVACSEAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for BloodPressureQueryModel(uint64_t a1)
{
  _s10SnippetKit11AppPunchoutVSgMaTm_2(319, &lazy cache variable for type metadata for AppPunchout?, MEMORY[0x277D62880]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        _s10SnippetKit11AppPunchoutVSgMaTm_2(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          _s10SnippetKit11AppPunchoutVSgMaTm_2(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void _s10SnippetKit11AppPunchoutVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BloodPressureQueryModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized BloodPressureQueryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696C6F74737973 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696C6F74737973 && a2 == 0xEB000000006E694DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6F74737973 && a2 == 0xEB0000000078614DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xEC0000006E694D63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xEC00000078614D63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63696C6F74737973 && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xEF676E6972745363 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB11B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000273EB11D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB11F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB1210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xEF676E697274536CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x63696C6F74737973 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x696C6F7473616964 && a2 == 0xEE006C6562614C63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 19;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t SingleActivitySummaryModel.date.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SingleActivitySummaryModel.dateLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SingleActivitySummaryModel.dateLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SingleActivitySummaryModel.timeLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SingleActivitySummaryModel.timeLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t SingleActivitySummaryModel.unitLabel.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SingleActivitySummaryModel.unitLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t SingleActivitySummaryModel.dataLabel.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SingleActivitySummaryModel.dataLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel(0) + 44);

  return outlined init with copy of SnippetHeaderModel?(v3, a1);
}

uint64_t type metadata accessor for SingleActivitySummaryModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleActivitySummaryModel;
  if (!type metadata singleton initialization cache for SingleActivitySummaryModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of SnippetHeaderModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.snippetHeaderModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SingleActivitySummaryModel(0) + 44);

  return outlined assign with take of SnippetHeaderModel?(a1, v3);
}

uint64_t outlined assign with take of SnippetHeaderModel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SingleActivitySummaryModel.init(totalValue:goalValue:date:unitLabel:snippetHeaderModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for SingleActivitySummaryModel(0);
  *(a5 + 9) = 0;
  *(a5 + 10) = 0;
  v21 = *(v20 + 44);
  v22 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v22 - 8) + 56))(&a5[v21], 1, 1, v22);
  if (a6 > -9.22337204e18 && a6 < 9.22337204e18 && trunc(a6) == a6)
  {
    *a5 = a6;
  }

  else
  {
    *a5 = 0;
  }

  if (a7 <= -9.22337204e18)
  {
    v24 = 0;
  }

  else
  {
    v23 = trunc(a7) == a7 && a7 < 9.22337204e18;
    v24 = a7;
    if (!v23)
    {
      v24 = 0;
    }
  }

  *(a5 + 1) = v24;
  *(a5 + 2) = a1;
  *(a5 + 7) = a2;
  *(a5 + 8) = a3;
  outlined assign with copy of SnippetHeaderModel?(a4, &a5[v21]);
  if (a1)
  {
    dispatch thunk of DialogCalendar.dateDescriptive.getter();
    v25 = type metadata accessor for SpeakableString();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v19, 1, v25) == 1)
    {
      outlined destroy of AppPunchout?(v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v32 = SpeakableString.print.getter();
      v38 = a4;
      v34 = v33;
      (*(v26 + 8))(v19, v25);
      v39 = v32;
      v40 = v34;
      lazy protocol witness table accessor for type String and conformance String();
      v28 = StringProtocol.capitalized.getter();
      v29 = v35;
      a4 = v38;
    }

    *(a5 + 3) = v28;
    *(a5 + 4) = v29;
    dispatch thunk of DialogCalendar.timeDescriptive.getter();
    if (v27(v16, 1, v25) == 1)
    {
      outlined destroy of AppPunchout?(a4, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      result = outlined destroy of AppPunchout?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      v31 = 0;
      a1 = 0;
    }

    else
    {
      v31 = SpeakableString.print.getter();
      a1 = v36;
      outlined destroy of AppPunchout?(a4, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
      result = (*(v26 + 8))(v16, v25);
    }
  }

  else
  {
    *(a5 + 3) = 0;
    *(a5 + 4) = 0;
    result = outlined destroy of AppPunchout?(a4, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
    v31 = 0;
  }

  *(a5 + 5) = v31;
  *(a5 + 6) = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SingleActivitySummaryModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C61566C61746F74;
  v3 = 0x6562614C61746164;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6562614C656D6974;
  if (v1 != 4)
  {
    v4 = 0x6562614C74696E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 2)
  {
    v5 = 0x6562614C65746164;
  }

  if (*v0)
  {
    v2 = 0x756C61566C616F67;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SingleActivitySummaryModel.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SingleActivitySummaryModel.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SingleActivitySummaryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SingleActivitySummaryModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SingleActivitySummaryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WellnessUI26SingleActivitySummaryModelV10CodingKeys33_B0F7363B4232BCB49D629598C78333A9LLOGMd, &_ss22KeyedEncodingContainerVy10WellnessUI26SingleActivitySummaryModelV10CodingKeys33_B0F7363B4232BCB49D629598C78333A9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 16);
    v10[7] = 2;
    type metadata accessor for DialogCalendar();
    lazy protocol witness table accessor for type DialogCalendar and conformance DialogCalendar(&lazy protocol witness table cache variable for type DialogCalendar and conformance DialogCalendar, MEMORY[0x277D55B90], MEMORY[0x277D55B98]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for SingleActivitySummaryModel(0);
    LOBYTE(v11) = 7;
    type metadata accessor for SnippetHeaderModel(0);
    lazy protocol witness table accessor for type DialogCalendar and conformance DialogCalendar(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys);
  }

  return result;
}

uint64_t SingleActivitySummaryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WellnessUI26SingleActivitySummaryModelV10CodingKeys33_B0F7363B4232BCB49D629598C78333A9LLOGMd, &_ss22KeyedDecodingContainerVy10WellnessUI26SingleActivitySummaryModelV10CodingKeys33_B0F7363B4232BCB49D629598C78333A9LLOGMR);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for SingleActivitySummaryModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 52);
  v16 = type metadata accessor for SnippetHeaderModel(0);
  v17 = *(*(v16 - 8) + 56);
  v39 = v15;
  v18 = v13;
  v17(v13 + v15, 1, 1, v16);
  v19 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type SingleActivitySummaryModel.CodingKeys and conformance SingleActivitySummaryModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v40 = v2;
LABEL_5:
    v25 = 0;
    goto LABEL_6;
  }

  v34[2] = v16;
  LOBYTE(v42) = 0;
  v20 = v36;
  v21 = v10;
  *v18 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v42) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = 0;
  v23 = v37;
  v18[1] = v22;
  type metadata accessor for DialogCalendar();
  v41 = 2;
  lazy protocol witness table accessor for type DialogCalendar and conformance DialogCalendar(&lazy protocol witness table cache variable for type DialogCalendar and conformance DialogCalendar, MEMORY[0x277D55B90], MEMORY[0x277D55BA0]);
  v24 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    v40 = v24;
    (*(v23 + 8))(v10, v20);
    goto LABEL_5;
  }

  v27 = v42;
  v18[2] = v42;
  LOBYTE(v42) = 3;
  v18[3] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18[4] = v28;
  LOBYTE(v42) = 4;
  v18[5] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18[6] = v29;
  LOBYTE(v42) = 5;
  v18[7] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[8] = v30;
  LOBYTE(v42) = 6;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = 0;
  v34[1] = v27;
  v18[9] = v31;
  v18[10] = v32;
  LOBYTE(v42) = 7;
  lazy protocol witness table accessor for type DialogCalendar and conformance DialogCalendar(&lazy protocol witness table cache variable for type SnippetHeaderModel and conformance SnippetHeaderModel, type metadata accessor for SnippetHeaderModel, &protocol conformance descriptor for SnippetHeaderModel);
  v33 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v37 + 8))(v21, v20);
  v40 = v33;
  if (!v33)
  {
    outlined assign with take of SnippetHeaderModel?(v6, v18 + v39);
    outlined init with copy of SingleActivitySummaryModel(v18, v35);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return outlined destroy of SingleActivitySummaryModel(v18);
  }

  v25 = 1;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v38);

  if (v25)
  {
  }

  return outlined destroy of AppPunchout?(v18 + v39, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
}

uint64_t outlined init with copy of SingleActivitySummaryModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleActivitySummaryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SingleActivitySummaryModel(uint64_t a1)
{
  v2 = type metadata accessor for SingleActivitySummaryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DialogCalendar and conformance DialogCalendar(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SingleActivitySummaryModel(uint64_t a1)
{
  type metadata accessor for DialogCalendar?(319, &lazy cache variable for type metadata for DialogCalendar?, MEMORY[0x277D55B90]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DialogCalendar?(319, &lazy cache variable for type metadata for SnippetHeaderModel?, type metadata accessor for SnippetHeaderModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DialogCalendar?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t specialized SingleActivitySummaryModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61566C616F67 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000273EB0F30 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t PhoneRingsSnippet.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  outlined init with copy of AppPunchout?(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhoneRingsSnippet.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhoneRingsSnippet(0) + 20);
  v4 = *(v3 + 208);
  v5 = *(v3 + 176);
  v37 = *(v3 + 192);
  v38 = v4;
  v6 = *(v3 + 208);
  v39 = *(v3 + 224);
  v7 = *(v3 + 144);
  v9 = *(v3 + 112);
  v33 = *(v3 + 128);
  v8 = v33;
  v34 = v7;
  v10 = *(v3 + 144);
  v11 = *(v3 + 176);
  v35 = *(v3 + 160);
  v12 = v35;
  v36 = v11;
  v13 = *(v3 + 80);
  v15 = *(v3 + 48);
  v29 = *(v3 + 64);
  v14 = v29;
  v30 = v13;
  v16 = *(v3 + 80);
  v17 = *(v3 + 112);
  v31 = *(v3 + 96);
  v18 = v31;
  v32 = v17;
  v19 = *(v3 + 16);
  v20 = *(v3 + 48);
  v27 = *(v3 + 32);
  v21 = v27;
  v28 = v20;
  v22 = *(v3 + 16);
  v26[0] = *v3;
  v23 = v26[0];
  v26[1] = v22;
  *(a1 + 192) = v37;
  *(a1 + 208) = v6;
  *(a1 + 224) = *(v3 + 224);
  *(a1 + 128) = v8;
  *(a1 + 144) = v10;
  *(a1 + 160) = v12;
  *(a1 + 176) = v5;
  *(a1 + 64) = v14;
  *(a1 + 80) = v16;
  *(a1 + 96) = v18;
  *(a1 + 112) = v9;
  *a1 = v23;
  *(a1 + 16) = v19;
  v40 = *(v3 + 240);
  *(a1 + 240) = *(v3 + 240);
  *(a1 + 32) = v21;
  *(a1 + 48) = v15;
  return outlined init with copy of PhoneRingsModel(v26, v25);
}

uint64_t type metadata accessor for PhoneRingsSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for PhoneRingsSnippet;
  if (!type metadata singleton initialization cache for PhoneRingsSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneRingsSnippet.moveRingTextColor.getter()
{
  return PhoneRingsSnippet.moveRingTextColor.getter();
}

{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0ED8], v1);
  return Color.init(_:red:green:blue:opacity:)();
}

__n128 PhoneRingsSnippet.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for PhoneRingsSnippet(0) + 20);
  v5 = *(a1 + 208);
  *(v4 + 12) = *(a1 + 192);
  *(v4 + 13) = v5;
  *(v4 + 14) = *(a1 + 224);
  v4[240] = *(a1 + 240);
  v6 = *(a1 + 144);
  *(v4 + 8) = *(a1 + 128);
  *(v4 + 9) = v6;
  v7 = *(a1 + 176);
  *(v4 + 10) = *(a1 + 160);
  *(v4 + 11) = v7;
  v8 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v8;
  v9 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v9;
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  *(v4 + 2) = result;
  *(v4 + 3) = v12;
  return result;
}

uint64_t PhoneRingsSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v2 = type metadata accessor for ComponentStackBottomSpacing();
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v106 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhoneRingsSnippet(0);
  v5 = v4 - 8;
  v103 = *(v4 - 8);
  v102 = *(v103 + 64);
  MEMORY[0x28223BE20](v4);
  v101 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMR);
  MEMORY[0x28223BE20](v105);
  v104 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  v100 = *(v8 - 8);
  v99 = *(v100 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = (&v88 - v11);
  v12 = type metadata accessor for Color.RGBColorSpace();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v1 + *(v5 + 28));
  v17 = v16[13];
  v18 = v16[11];
  v134 = v16[12];
  v135 = v17;
  v19 = v16[13];
  v136 = v16[14];
  v20 = v16[9];
  v21 = v16[7];
  v130 = v16[8];
  v131 = v20;
  v22 = v16[9];
  v23 = v16[11];
  v132 = v16[10];
  v133 = v23;
  v24 = v16[5];
  v25 = v16[3];
  v126 = v16[4];
  v127 = v24;
  v26 = v16[5];
  v27 = v16[7];
  v128 = v16[6];
  v129 = v27;
  v28 = v16[1];
  v123[0] = *v16;
  v123[1] = v28;
  v29 = v16[3];
  v31 = *v16;
  v30 = v16[1];
  v124 = v16[2];
  v125 = v29;
  v113[12] = v134;
  v113[13] = v19;
  v113[14] = v16[14];
  v113[8] = v130;
  v113[9] = v22;
  v113[10] = v132;
  v113[11] = v18;
  v113[4] = v126;
  v113[5] = v26;
  v113[6] = v128;
  v113[7] = v21;
  v113[0] = v31;
  v113[1] = v30;
  v137 = *(v16 + 240);
  LOBYTE(v113[15]) = *(v16 + 240);
  v113[2] = v124;
  v113[3] = v25;
  outlined init with copy of PhoneRingsModel(v123, v158);
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v13 + 104))(v15, *MEMORY[0x277CE0ED8], v12);
  v32 = Color.init(_:red:green:blue:opacity:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v33 = v117;
  v34 = v118;
  v35 = v119;
  v36 = v120;
  v37 = v121;
  v38 = v122;
  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = static Alignment.center.getter();
  v44 = v43;
  *&v138 = v33;
  *(&v138 + 1) = __PAIR64__(v35, v34);
  *&v139 = v36;
  *(&v139 + 1) = v37;
  *&v140 = v38;
  *(&v140 + 1) = v32;
  LOWORD(v141) = 256;
  *(&v141 + 2) = v111;
  WORD3(v141) = v112;
  *(&v141 + 1) = v39;
  *&v142 = v41;
  *(&v142 + 1) = v42;
  v143 = v43;
  memcpy(v114, v113, 0x128uLL);
  *&v114[41] = v140;
  *&v114[43] = v141;
  *&v114[45] = v142;
  *&v114[37] = v138;
  *&v114[39] = v139;
  v114[47] = v143;
  v144 = v33;
  v145 = v34;
  v146 = v35;
  v147 = v36;
  v148 = v37;
  v149 = v38;
  v150 = v32;
  v151 = 256;
  v153 = v112;
  v152 = v111;
  v154 = v39;
  v155 = v41;
  v156 = v42;
  v157 = v44;
  outlined init with copy of AppPunchout?(&v138, v158, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyG0VGGMR);
  outlined destroy of AppPunchout?(&v144, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyG0VGGMR);
  LOBYTE(v32) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v94 = v46;
  v95 = v45;
  v92 = v48;
  v93 = v47;
  LOBYTE(v158[0]) = 0;
  LOBYTE(v42) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v90 = v50;
  v91 = v49;
  v88 = v52;
  v89 = v51;
  LOBYTE(v110[0]) = 0;
  LOBYTE(v39) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  LOBYTE(v158[0]) = 0;
  LOBYTE(v44) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v115 = 0;
  memcpy(v158, v114, 0x180uLL);
  LOBYTE(v158[48]) = v32;
  v158[49] = v95;
  v158[50] = v94;
  v158[51] = v93;
  v158[52] = v92;
  LOBYTE(v158[53]) = 0;
  LOBYTE(v158[54]) = v42;
  v158[55] = v91;
  v158[56] = v90;
  v158[57] = v89;
  v158[58] = v88;
  LOBYTE(v158[59]) = 0;
  LOBYTE(v158[60]) = v39;
  v158[61] = v54;
  v158[62] = v56;
  v158[63] = v58;
  v158[64] = v60;
  LOBYTE(v158[65]) = 0;
  *(&v158[65] + 1) = v110[0];
  HIDWORD(v158[65]) = *(v110 + 3);
  LOBYTE(v158[66]) = v44;
  *(&v158[66] + 1) = *v116;
  HIDWORD(v158[66]) = *&v116[3];
  v158[67] = v62;
  v158[68] = v64;
  v158[69] = v66;
  v158[70] = v68;
  LOBYTE(v158[71]) = 0;
  v69 = static HorizontalAlignment.leading.getter();
  v70 = v97;
  *v97 = v69;
  *(v70 + 8) = 0x401C000000000000;
  *(v70 + 16) = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA0F0VyAIyAkLEAmnOQrAR_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAV_AVtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A10_A10_tGGMR);
  v72 = v96;
  closure #1 in PhoneRingsSnippet.body.getter(v96, (v70 + *(v71 + 44)));
  v73 = v101;
  outlined init with copy of PhoneRingsSnippet(v72, v101);
  memcpy(v110, v158, 0x239uLL);
  v74 = v98;
  outlined init with copy of AppPunchout?(v70, v98, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  v75 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v76 = (v102 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = (*(v100 + 80) + v76 + 569) & ~*(v100 + 80);
  v78 = swift_allocObject();
  outlined init with take of PhoneRingsSnippet(v73, v78 + v75);
  memcpy((v78 + v76), v110, 0x239uLL);
  sub_273E4395C(v74, v78 + v77);
  outlined init with copy of AppPunchout?(v158, v110, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0VSg_AA19_ConditionalContentVyAA6VStackVyACyAA08ModifiedI0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAKyACyAA0D0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAKyACyA12_ADEA13_A14_A15_QrA18__A18_tFQOyAA4TextV_Qo__AMyAA6HStackVyACyA20__A20_tGGAA016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yACyA10__A36_AA6SpacerVtGGGtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0VSg_AA19_ConditionalContentVyAA6VStackVyACyAA08ModifiedI0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAKyACyAA0D0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAKyACyA12_ADEA13_A14_A15_QrA18__A18_tFQOyAA4TextV_Qo__AMyAA6HStackVyACyA20__A20_tGGAA016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yACyA10__A36_AA6SpacerVtGGGtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SashStandardView?, _ConditionalContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<Mo, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0VSg_AA19_ConditionalContentVyAA6VStackVyACyAA08ModifiedI0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAKyACyAA0D0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAKyACyA12_ADEA13_A14_A15_QrA18__A18_tFQOyAA4TextV_Qo__AMyAA6HStackVyACyA20__A20_tGGAA016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yACyA10__A36_AA6SpacerVtGGGtGMd, &_s7SwiftUI9TupleViewVy07SnippetB0012SashStandardD0VSg_AA19_ConditionalContentVyAA6VStackVyACyAA08ModifiedI0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAKyACyAA0D0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAKyACyA12_ADEA13_A14_A15_QrA18__A18_tFQOyAA4TextV_Qo__AMyAA6HStackVyACyA20__A20_tGGAA016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yACyA10__A36_AA6SpacerVtGGGtGMR, MEMORY[0x277CE14C8]);
  v79 = v104;
  ComponentStack.init(content:)();
  v80 = static Color.black.getter();
  v81 = static Edge.Set.all.getter();
  v82 = v106;
  v83 = &v79[*(v105 + 36)];
  v84 = v79;
  *v83 = v80;
  v83[8] = v81;
  v86 = v107;
  v85 = v108;
  (*(v107 + 104))(v82, *MEMORY[0x277D63EC8], v108);
  lazy protocol witness table accessor for type ModifiedContent<ComponentStack<TupleView<(SashStandardView?, _ConditionalContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLa();
  View.lastComponentBottomSpacing(_:)();
  outlined destroy of AppPunchout?(v158, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  (*(v86 + 8))(v82, v85);
  outlined destroy of AppPunchout?(v84, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMd, &_s7SwiftUI15ModifiedContentVy07SnippetB014ComponentStackVyAA9TupleViewVyAD012SashStandardI0VSg_AA012_ConditionalD0VyAA6VStackVyAHyACyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeI0VyAA6CircleVAA5ColorVAA05EmptyI0VGGGAA08_PaddingT0VGA8_GA8_GA8_G_ACyACyACyAOyAHyAA0I0PADE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A20_tFQOyAOyAHyA14_ADEA15_A16_A17_QrA20__A20_tFQOyAA4TextV_Qo__ACyAA6HStackVyAHyA22__A22_tGGAA016_ForegroundStyleV0VyA1_GGtGG_Qo__A34_A34_tGGA8_GA8_GA8_GtGGA25_yAHyA12__A38_AA6SpacerVtGGGtGGAA016_BackgroundStyleV0VyA1_GGMR);
  return outlined destroy of AppPunchout?(v70, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
}

uint64_t closure #1 in PhoneRingsSnippet.body.getter@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v184 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo_MR);
  v4 = *(v3 - 8);
  v209 = v3;
  v210 = v4;
  MEMORY[0x28223BE20](v3);
  v207 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v205 = &v175 - v7;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  MEMORY[0x28223BE20](v208);
  v211 = (&v175 - v8);
  v202 = type metadata accessor for Color.RGBColorSpace();
  v9 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v203 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo_MR);
  v182 = *(v11 - 8);
  v183 = v11;
  MEMORY[0x28223BE20](v11);
  v181 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = &v175 - v14;
  MEMORY[0x28223BE20](v15);
  v201 = &v175 - v16;
  MEMORY[0x28223BE20](v17);
  v200 = &v175 - v18;
  MEMORY[0x28223BE20](v19);
  v199 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v206 = &v175 - v22;
  v23 = *(type metadata accessor for PhoneRingsSnippet(0) + 20);
  v204 = a1;
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 152);
  if (v25)
  {
    v26 = v24[18];
    v27 = v25;
  }

  else
  {
    v27 = 0xE400000000000000;
    v26 = 1702260557;
  }

  v185 = 3157808;
  v28 = v24[21];
  if (v28)
  {
    v197 = v24[20];
    v189 = v28;
  }

  else
  {
    v189 = 0xE300000000000000;
    v197 = 3157808;
  }

  v29 = v24[23];
  v188 = v24;
  if (v29)
  {
    v193 = v24[22];
    v187 = v29;
  }

  else
  {
    v187 = 0xE300000000000000;
    v193 = 4997443;
  }

  v30 = *(v9 + 104);
  v196 = *MEMORY[0x277CE0ED8];
  v198 = v9 + 104;
  v195 = v30;
  v30(v203);

  v179 = Color.init(_:red:green:blue:opacity:)();
  PhoneRingsSnippet.isAccessibleAndLargeDynamicType()();
  v31 = static HorizontalAlignment.leading.getter();
  v32 = v211;
  *v211 = v31;
  v32[1] = 0xC014000000000000;
  *(v32 + 16) = 0;
  v33 = v32;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAT_ATtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAT_ATtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  v178 = v33 + *(v191 + 44);
  v240 = v26;
  v241 = v27;
  v34 = lazy protocol witness table accessor for type String and conformance String();

  v194 = v34;
  v35 = Text.init<A>(_:)();
  v37 = v36;
  v39 = v38;
  static Font.subheadline.getter();
  v40 = Text.font(_:)();
  v186 = v27;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  outlined consume of Text.Storage(v35, v37, v39 & 1);

  static Font.Weight.regular.getter();
  v46 = Text.fontWeight(_:)();
  v48 = v47;
  v50 = v49;
  outlined consume of Text.Storage(v41, v43, v45 & 1);

  v240 = static Color.gray.getter();
  v51 = Text.foregroundStyle<A>(_:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  outlined consume of Text.Storage(v46, v48, v50 & 1);

  v240 = v51;
  v241 = v53;
  LOBYTE(v43) = v55 & 1;
  v242 = v55 & 1;
  *(&v243 + 7) = v57;
  v58 = v205;
  View.componentSpacing(top:bottom:)();
  outlined consume of Text.Storage(v51, v53, v43);

  v59 = static VerticalAlignment.lastTextBaseline.getter();
  LOBYTE(v240) = 0;
  closure #1 in closure #1 in PhoneRingsSnippet.labelPair(label:value:unit:color:)(v197, v189, v193, v187, v237);
  *(v236 + 7) = v237[0];
  *(&v236[1] + 7) = v237[1];
  *(&v236[2] + 7) = v237[2];
  *(&v236[3] + 7) = v237[3];
  v60 = v240;
  v61 = v209;
  v62 = v210;
  v63 = v210 + 16;
  v64 = *(v210 + 16);
  v65 = v207;
  v64(v207, v58, v209);
  v66 = v178;
  v192 = v64;
  v193 = v63;
  v64(v178, v65, v61);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAL_ALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAL_ALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtMR);
  v67 = (v66 + *(v190 + 48));
  v238[0] = v59;
  v238[1] = 0;
  LOBYTE(v239[0]) = v60;
  *(v239 + 1) = v236[0];
  *(&v239[1] + 1) = v236[1];
  *(&v239[2] + 1) = v236[2];
  *(&v239[3] + 1) = v236[3];
  *&v239[4] = *(&v236[3] + 15);
  v68 = v179;
  *(&v239[4] + 1) = v179;
  v69 = v239[0];
  *v67 = v59;
  v67[1] = v69;
  v70 = v239[1];
  v71 = v239[2];
  v72 = v239[4];
  v67[4] = v239[3];
  v67[5] = v72;
  v67[2] = v70;
  v67[3] = v71;

  outlined init with copy of AppPunchout?(v238, &v240, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v73 = *(v62 + 8);
  v73(v58, v61);
  v240 = v59;
  v241 = 0;
  v242 = v60;
  v244 = v236[1];
  v245 = v236[2];
  *v246 = v236[3];
  v243 = v236[0];
  *&v246[15] = *(&v236[3] + 15);
  v247 = v68;
  outlined destroy of AppPunchout?(&v240, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v210 = v62 + 8;
  v197 = v73;
  v73(v65, v61);

  v189 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, ModifiedContent<HStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, MEMORY[0x277CE11A0]);
  v74 = v211;
  View.componentSpacing(top:bottom:)();

  outlined destroy of AppPunchout?(v74, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  if (v188[13])
  {
    v75 = v188[12];
    v76 = v188[13];
  }

  else
  {
    v76 = 0xE800000000000000;
    v75 = 0x6573696372657845;
  }

  v77 = v188[15];
  if (v77)
  {
    v179 = v188[14];
    v187 = v77;
    v78 = v188[17];
    if (v78)
    {
LABEL_15:
      v176 = v188[16];
      v186 = v78;
      goto LABEL_18;
    }
  }

  else
  {
    v187 = 0xE300000000000000;
    v179 = 3157808;
    v78 = v188[17];
    if (v78)
    {
      goto LABEL_15;
    }
  }

  v186 = 0xE300000000000000;
  v176 = 5130573;
LABEL_18:
  v195(v203, v196, v202);

  v177 = Color.init(_:red:green:blue:opacity:)();
  PhoneRingsSnippet.isAccessibleAndLargeDynamicType()();
  v79 = static HorizontalAlignment.leading.getter();
  v80 = v211;
  *v211 = v79;
  v80[1] = 0xC014000000000000;
  *(v80 + 16) = 0;
  v175 = v80 + *(v191 + 44);
  v228 = v75;
  v229 = v76;

  v81 = Text.init<A>(_:)();
  v83 = v82;
  v85 = v84;
  static Font.subheadline.getter();
  v86 = Text.font(_:)();
  v178 = v76;
  v87 = v86;
  v89 = v88;
  v91 = v90;

  outlined consume of Text.Storage(v81, v83, v85 & 1);

  static Font.Weight.regular.getter();
  v92 = Text.fontWeight(_:)();
  v94 = v93;
  LOBYTE(v83) = v95;
  outlined consume of Text.Storage(v87, v89, v91 & 1);

  v228 = static Color.gray.getter();
  v96 = Text.foregroundStyle<A>(_:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  outlined consume of Text.Storage(v92, v94, v83 & 1);

  v228 = v96;
  v229 = v98;
  LOBYTE(v94) = v100 & 1;
  v230 = v100 & 1;
  *(&v231 + 7) = v102;
  v103 = v205;
  View.componentSpacing(top:bottom:)();
  outlined consume of Text.Storage(v96, v98, v94);

  v104 = static VerticalAlignment.lastTextBaseline.getter();
  LOBYTE(v228) = 0;
  closure #1 in closure #1 in PhoneRingsSnippet.labelPair(label:value:unit:color:)(v179, v187, v176, v186, v225);
  *(v224 + 7) = v225[0];
  *(&v224[1] + 7) = v225[1];
  *(&v224[2] + 7) = v225[2];
  *(&v224[3] + 7) = v225[3];
  v105 = v228;
  v106 = v207;
  v107 = v209;
  v108 = v192;
  v192(v207, v103, v209);
  v109 = v175;
  v108(v175, v106, v107);
  v110 = &v109[*(v190 + 48)];
  v226[0] = v104;
  v226[1] = 0;
  LOBYTE(v227[0]) = v105;
  *(v227 + 1) = v224[0];
  *(&v227[1] + 1) = v224[1];
  *(&v227[2] + 1) = v224[2];
  *(&v227[3] + 1) = v224[3];
  *&v227[4] = *(&v224[3] + 15);
  v111 = v177;
  *(&v227[4] + 1) = v177;
  v112 = v227[0];
  *v110 = v104;
  *(v110 + 1) = v112;
  v113 = v227[1];
  v114 = v227[2];
  v115 = v227[4];
  *(v110 + 4) = v227[3];
  *(v110 + 5) = v115;
  *(v110 + 2) = v113;
  *(v110 + 3) = v114;

  outlined init with copy of AppPunchout?(v226, &v228, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v116 = v103;
  v117 = v197;
  (v197)(v116, v107);
  v228 = v104;
  v229 = 0;
  v230 = v105;
  v232 = v224[1];
  v233 = v224[2];
  *v234 = v224[3];
  v231 = v224[0];
  *&v234[15] = *(&v224[3] + 15);
  v235 = v111;
  outlined destroy of AppPunchout?(&v228, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v117(v106, v107);

  v118 = v211;
  View.componentSpacing(top:bottom:)();

  outlined destroy of AppPunchout?(v118, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  if (v188[25])
  {
    v119 = v188[24];
    v120 = v188[25];
  }

  else
  {
    v120 = 0xE500000000000000;
    v119 = 0x646E617453;
  }

  v121 = v188[27];
  if (!v121)
  {
    v187 = 0xE300000000000000;
    v122 = v188[29];
    if (v122)
    {
      goto LABEL_23;
    }

LABEL_25:
    v188 = 0xE300000000000000;
    v186 = 5460552;
    goto LABEL_26;
  }

  v185 = v188[26];
  v187 = v121;
  v122 = v188[29];
  if (!v122)
  {
    goto LABEL_25;
  }

LABEL_23:
  v186 = v188[28];
  v188 = v122;
LABEL_26:
  v195(v203, v196, v202);

  v203 = Color.init(_:red:green:blue:opacity:)();
  PhoneRingsSnippet.isAccessibleAndLargeDynamicType()();
  v123 = static HorizontalAlignment.leading.getter();
  v124 = v211;
  *v211 = v123;
  v124[1] = 0xC014000000000000;
  *(v124 + 16) = 0;
  v202 = v124 + *(v191 + 44);
  v216 = v119;
  v217 = v120;

  v125 = Text.init<A>(_:)();
  v127 = v126;
  v129 = v128;
  static Font.subheadline.getter();
  v130 = Text.font(_:)();
  v204 = v120;
  v131 = v130;
  v133 = v132;
  v135 = v134;

  outlined consume of Text.Storage(v125, v127, v129 & 1);

  static Font.Weight.regular.getter();
  v136 = Text.fontWeight(_:)();
  v138 = v137;
  LOBYTE(v127) = v139;
  outlined consume of Text.Storage(v131, v133, v135 & 1);

  v216 = static Color.gray.getter();
  v140 = Text.foregroundStyle<A>(_:)();
  v142 = v141;
  v144 = v143;
  v146 = v145;
  outlined consume of Text.Storage(v136, v138, v127 & 1);

  v216 = v140;
  v217 = v142;
  LOBYTE(v138) = v144 & 1;
  v218 = v144 & 1;
  *(&v219 + 7) = v146;
  v147 = v205;
  View.componentSpacing(top:bottom:)();
  outlined consume of Text.Storage(v140, v142, v138);

  v148 = static VerticalAlignment.lastTextBaseline.getter();
  LOBYTE(v216) = 0;
  closure #1 in closure #1 in PhoneRingsSnippet.labelPair(label:value:unit:color:)(v185, v187, v186, v188, v213);
  *(v212 + 7) = v213[0];
  *(&v212[1] + 7) = v213[1];
  *(&v212[2] + 7) = v213[2];
  *(&v212[3] + 7) = v213[3];
  v149 = v216;
  v150 = v207;
  v151 = v209;
  v152 = v192;
  v192(v207, v147, v209);
  v153 = v202;
  v152(v202, v150, v151);
  v154 = (v153 + *(v190 + 48));
  v214[0] = v148;
  v214[1] = 0;
  LOBYTE(v215[0]) = v149;
  *(v215 + 1) = v212[0];
  *(&v215[1] + 1) = v212[1];
  *(&v215[2] + 1) = v212[2];
  *(&v215[3] + 1) = v212[3];
  *&v215[4] = *(&v212[3] + 15);
  v155 = v203;
  *(&v215[4] + 1) = v203;
  v156 = v215[0];
  *v154 = v148;
  v154[1] = v156;
  v157 = v215[1];
  v158 = v215[2];
  v159 = v215[4];
  v154[4] = v215[3];
  v154[5] = v159;
  v154[2] = v157;
  v154[3] = v158;

  outlined init with copy of AppPunchout?(v214, &v216, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v160 = v147;
  v161 = v197;
  (v197)(v160, v151);
  v216 = v148;
  v217 = 0;
  v218 = v149;
  v220 = v212[1];
  v221 = v212[2];
  *v222 = v212[3];
  v219 = v212[0];
  *&v222[15] = *(&v212[3] + 15);
  v223 = v155;
  outlined destroy of AppPunchout?(&v216, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v161(v150, v151);

  v162 = v200;
  v163 = v211;
  View.componentSpacing(top:bottom:)();

  outlined destroy of AppPunchout?(v163, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  v165 = v182;
  v164 = v183;
  v166 = *(v182 + 16);
  v167 = v201;
  v166(v201, v206, v183);
  v168 = v180;
  v169 = v199;
  v166(v180, v199, v164);
  v170 = v181;
  v166(v181, v162, v164);
  v171 = v184;
  v166(v184, v167, v164);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA6VStackVyAA05TupleC0VyAcDEAefGQrAJ_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyANyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tMR);
  v166(&v171[*(v172 + 48)], v168, v164);
  v166(&v171[*(v172 + 64)], v170, v164);
  v173 = *(v165 + 8);
  v173(v200, v164);
  v173(v169, v164);
  v173(v206, v164);
  v173(v170, v164);
  v173(v168, v164);
  return (v173)(v201, v164);
}

uint64_t PhoneRingsSnippet.labelPair(label:value:unit:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v57 = a4;
  v63 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo_MR);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v53 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
  MEMORY[0x28223BE20](v62);
  v15 = &v53 - v14;
  PhoneRingsSnippet.isAccessibleAndLargeDynamicType()();
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0xC014000000000000;
  v15[16] = 0;
  v60 = v15;
  v53 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAT_ATtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ARtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAIyAT_ATtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR) + 44)];
  v70 = a1;
  v71 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(a1) = v19;
  static Font.subheadline.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  v24 = v23;

  outlined consume of Text.Storage(v16, v18, a1 & 1);

  static Font.Weight.regular.getter();
  v25 = Text.fontWeight(_:)();
  v27 = v26;
  v29 = v28;
  outlined consume of Text.Storage(v20, v22, v24 & 1);

  v70 = static Color.gray.getter();
  v30 = Text.foregroundStyle<A>(_:)();
  v32 = v31;
  LOBYTE(v20) = v33;
  v35 = v34;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v70 = v30;
  v71 = v32;
  v72 = v20 & 1;
  *(&v73 + 7) = v35;
  v36 = v64;
  View.componentSpacing(top:bottom:)();
  outlined consume of Text.Storage(v30, v32, v20 & 1);

  v37 = static VerticalAlignment.lastTextBaseline.getter();
  LOBYTE(v70) = 0;
  closure #1 in closure #1 in PhoneRingsSnippet.labelPair(label:value:unit:color:)(v56, v57, v58, v59, v67);
  *(v66 + 7) = v67[0];
  *(&v66[1] + 7) = v67[1];
  *(&v66[2] + 7) = v67[2];
  *(&v66[3] + 7) = v67[3];
  LOBYTE(v30) = v70;
  v39 = v54;
  v38 = v55;
  v40 = *(v54 + 16);
  v41 = v65;
  v40(v65, v36, v55);
  v42 = v53;
  v40(v53, v41, v38);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAL_ALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtMd, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAL_ALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtMR) + 48)];
  v68[0] = v37;
  v68[1] = 0;
  LOBYTE(v69[0]) = v30;
  *(v69 + 1) = v66[0];
  *(&v69[1] + 1) = v66[1];
  *(&v69[2] + 1) = v66[2];
  *(&v69[3] + 1) = v66[3];
  v44 = v61;
  *&v69[4] = *(&v66[3] + 15);
  *(&v69[4] + 1) = v61;
  v45 = v69[0];
  *v43 = v37;
  *(v43 + 1) = v45;
  v46 = v69[1];
  v47 = v69[2];
  v48 = v69[4];
  *(v43 + 4) = v69[3];
  *(v43 + 5) = v48;
  *(v43 + 2) = v46;
  *(v43 + 3) = v47;
  v49 = v44;

  outlined init with copy of AppPunchout?(v68, &v70, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v50 = *(v39 + 8);
  v50(v64, v38);
  v70 = v37;
  v71 = 0;
  v72 = v30;
  v74 = v66[1];
  v75 = v66[2];
  *v76 = v66[3];
  v73 = v66[0];
  *&v76[15] = *(&v66[3] + 15);
  v77 = v49;
  outlined destroy of AppPunchout?(&v70, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
  v50(v65, v38);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, ModifiedContent<HStack<TupleView<(Text, Text)>>, _ForegroundStyleModifier<Color>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR, MEMORY[0x277CE11A0]);
  v51 = v60;
  View.componentSpacing(top:bottom:)();
  return outlined destroy of AppPunchout?(v51, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGGMR);
}

uint64_t closure #2 in PhoneRingsSnippet.body.getter@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v60 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAA6VStackVyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyA6_yAEyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AGyACyAEyA17__A17_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GAA6SpacerVtGGMd, "H?");
  MEMORY[0x28223BE20](v66);
  v57 = (v53 - v6);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeH0VyAA6CircleVAA5ColorVAA05EmptyH0VGGGAA08_PaddingP0VGA4_GA4_GA4_G_AKyAKyAKyAGyAIyAA0H0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A17_tFQOyAGyAIyA10_A11_EA12_A13_A14_QrA17__A17_tFQOyAA4TextV_Qo__AKyAA6HStackVyAIyA19__A19_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A31_A31_tGGA4_GA4_GA4_GtGGA22_yAIyA8__A35_AA6SpacerVtGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeH0VyAA6CircleVAA5ColorVAA05EmptyH0VGGGAA08_PaddingP0VGA4_GA4_GA4_G_AKyAKyAKyAGyAIyAA0H0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A17_tFQOyAGyAIyA10_A11_EA12_A13_A14_QrA17__A17_tFQOyAA4TextV_Qo__AKyAA6HStackVyAIyA19__A19_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A31_A31_tGGA4_GA4_GA4_GtGGA22_yAIyA8__A35_AA6SpacerVtGG_GMR);
  MEMORY[0x28223BE20](v61);
  v64 = v53 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMR);
  MEMORY[0x28223BE20](v63);
  v56 = (v53 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v53 - v20;
  v22 = type metadata accessor for SashStandard.Title();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for SashStandard();
  MEMORY[0x28223BE20](v26 - 8);
  v55 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SashStandardView();
  v28 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI16SashStandardViewVSgMd, &_s9SnippetUI16SashStandardViewVSgMR);
  MEMORY[0x28223BE20](v30 - 8);
  v59 = v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v53 - v33;
  if (*(a1 + *(type metadata accessor for PhoneRingsSnippet(0) + 20) + 240))
  {
    (*(v28 + 56))(v34, 1, 1, v58);
  }

  else
  {
    *v25 = 0xD000000000000011;
    v25[1] = 0x8000000273EB1230;
    (*(v23 + 104))(v25, *MEMORY[0x277D62DC0], v22);
    v35 = type metadata accessor for VisualProperty();
    (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    v36 = type metadata accessor for Color();
    v37 = *(*(v36 - 8) + 56);
    v53[1] = v21;
    v37(v18, 1, 1, v36);
    v37(v15, 1, 1, v36);
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    SashStandard.init(title:thumbnail:titleColor:backgroundColor:action:componentName:showOnWatch:)();
    v38 = v54;
    SashStandardView.init(model:)();
    v39 = v58;
    (*(v28 + 32))(v34, v38, v58);
    (*(v28 + 56))(v34, 0, 1, v39);
  }

  v40 = PhoneRingsSnippet.isAccessibleDynamicType()();
  v41 = v65;
  if (v40)
  {
    v42 = static HorizontalAlignment.leading.getter();
    v43 = v56;
    *v56 = v42;
    *(v43 + 8) = 0;
    *(v43 + 16) = 1;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA06_FrameG0VGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingG0VGA4_GA4_GA4_G_AKyAKyAKyAA0F0VyAIyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A19_tFQOyA10_yAIyA12_A13_EA14_A15_A16_QrA19__A19_tFQOyAA4TextV_Qo__AKyAA6HStackVyAIyA21__A21_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A33_A33_tGGA4_GA4_GA4_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA06_FrameG0VGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingG0VGA4_GA4_GA4_G_AKyAKyAKyAA0F0VyAIyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A19_tFQOyA10_yAIyA12_A13_EA14_A15_A16_QrA19__A19_tFQOyAA4TextV_Qo__AKyAA6HStackVyAIyA21__A21_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A33_A33_tGGA4_GA4_GA4_GtGGMR);
    closure #1 in closure #2 in PhoneRingsSnippet.body.getter(v60, v62, (v43 + *(v44 + 44)));
    v45 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMd;
    v46 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMR;
    outlined init with copy of AppPunchout?(v43, v64, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMR);
  }

  else
  {
    v47 = static VerticalAlignment.center.getter();
    v43 = v57;
    *v57 = v47;
    *(v43 + 8) = 0;
    *(v43 + 16) = 1;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA06_FrameG0VGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingG0VGA4_GA4_GA4_G_AKyAKyAA6VStackVyAIyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A19_tFQOyA10_yAIyA12_A13_EA14_A15_A16_QrA19__A19_tFQOyAA4TextV_Qo__AKyAA0F0VyAIyA21__A21_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A33_A33_tGGA4_GA4_GAA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKy08WellnessB033HKActivityRingUIViewRepresentableVAA06_FrameG0VGAA16_OverlayModifierVyAA011StrokeShapeD0VyAA6CircleVAA5ColorVAA05EmptyD0VGGGAA08_PaddingG0VGA4_GA4_GA4_G_AKyAKyAA6VStackVyAIyAA0D0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A19_tFQOyA10_yAIyA12_A13_EA14_A15_A16_QrA19__A19_tFQOyAA4TextV_Qo__AKyAA0F0VyAIyA21__A21_tGGAA016_ForegroundStyleR0VyAYGGtGG_Qo__A33_A33_tGGA4_GA4_GAA6SpacerVtGGMR);
    closure #2 in closure #2 in PhoneRingsSnippet.body.getter(v60, v62, (v43 + *(v48 + 44)));
    v45 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAA6VStackVyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyA6_yAEyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AGyACyAEyA17__A17_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GAA6SpacerVtGGMd;
    v46 = "H?";
    outlined init with copy of AppPunchout?(v43, v64, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAA6VStackVyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyA6_yAEyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AGyACyAEyA17__A17_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GAA6SpacerVtGGMd, "H?");
  }

  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAGyACyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyACyAEyA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__AGyAA6HStackVyAEyA15__A15_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GA0_GtGGMR, MEMORY[0x277CE11A0]);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HKActivityRingUIViewRepresentable, _FrameLayout>, _OverlayModifier<StrokeShapeView<Circle, Color, EmptyView>>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<VStack<TupleView<(<<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, <<opaque return type of View.componentSpacing(top:bottom:)>>.0)>>, _PaddingLayout>, _PaddingLayout>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeE0VyAA6CircleVAA5ColorVAA05EmptyE0VGGGAA08_PaddingN0VGA0_GA0_GA0_G_AGyAGyAA6VStackVyAEyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyA6_yAEyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AGyACyAEyA17__A17_tGGAA016_ForegroundStyleP0VyAUGGtGG_Qo__A27_A27_tGGA0_GA0_GAA6SpacerVtGGMd, "H?", MEMORY[0x277CE1140]);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of AppPunchout?(v43, v45, v46);
  v49 = v59;
  outlined init with copy of AppPunchout?(v34, v59, &_s9SnippetUI16SashStandardViewVSgMd, &_s9SnippetUI16SashStandardViewVSgMR);
  v50 = v67;
  outlined init with copy of AppPunchout?(v41, v67, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMR);
  outlined init with copy of AppPunchout?(v49, a4, &_s9SnippetUI16SashStandardViewVSgMd, &_s9SnippetUI16SashStandardViewVSgMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI16SashStandardViewVSg_05SwiftB019_ConditionalContentVyAE6VStackVyAE05TupleE0VyAE08ModifiedH0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAE12_FrameLayoutVGAE16_OverlayModifierVyAE011StrokeShapeE0VyAE6CircleVAE5ColorVAE05EmptyE0VGGGAE08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAIyAKyAE0E0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAIyAKyA12_AAEA13_A14_A15_QrA18__A18_tFQOyAE4TextV_Qo__AMyAE6HStackVyAKyA20__A20_tGGAE016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yAKyA10__A36_AE6SpacerVtGGGtMd, &_s9SnippetUI16SashStandardViewVSg_05SwiftB019_ConditionalContentVyAE6VStackVyAE05TupleE0VyAE08ModifiedH0VyAMyAMyAMyAMyAMy08WellnessB033HKActivityRingUIViewRepresentableVAE12_FrameLayoutVGAE16_OverlayModifierVyAE011StrokeShapeE0VyAE6CircleVAE5ColorVAE05EmptyE0VGGGAE08_PaddingR0VGA6_GA6_GA6_G_AMyAMyAMyAIyAKyAE0E0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A18_tFQOyAIyAKyA12_AAEA13_A14_A15_QrA18__A18_tFQOyAE4TextV_Qo__AMyAE6HStackVyAKyA20__A20_tGGAE016_ForegroundStyleT0VyA_GGtGG_Qo__A32_A32_tGGA6_GA6_GA6_GtGGA23_yAKyA10__A36_AE6SpacerVtGGGtMR);
  outlined init with copy of AppPunchout?(v50, a4 + *(v51 + 48), &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMR);
  outlined destroy of AppPunchout?(v41, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMR);
  outlined destroy of AppPunchout?(v34, &_s9SnippetUI16SashStandardViewVSgMd, &_s9SnippetUI16SashStandardViewVSgMR);
  outlined destroy of AppPunchout?(v50, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA011StrokeShapeG0VyAA6CircleVAA5ColorVAA05EmptyG0VGGGAA08_PaddingO0VGA2_GA2_GA2_G_AIyAIyAIyAEyAGyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A15_tFQOyAEyAGyA8_A9_EA10_A11_A12_QrA15__A15_tFQOyAA4TextV_Qo__AIyAA6HStackVyAGyA17__A17_tGGAA016_ForegroundStyleQ0VyAWGGtGG_Qo__A29_A29_tGGA2_GA2_GA2_GtGGA20_yAGyA6__A33_AA6SpacerVtGGGMR);
  return outlined destroy of AppPunchout?(v49, &_s9SnippetUI16SashStandardViewVSgMd, &_s9SnippetUI16SashStandardViewVSgMR);
}

uint64_t PhoneRingsSnippet.isAccessibleDynamicType()()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  PhoneRingsSnippet.dynamicTypeSize.getter(&v15 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x277CDF990], v0);
  v8 = static DynamicTypeSize.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8 & 1) != 0 || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9A0], v0), v10 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v10) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9B0], v0), v11 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v11) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9C0], v0), v12 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v12))
  {
    v13 = 1;
  }

  else
  {
    PhoneRingsSnippet.dynamicTypeSize.getter(v6);
    v7(v3, *MEMORY[0x277CDF9C8], v0);
    v13 = static DynamicTypeSize.== infix(_:_:)();
    v9(v3, v0);
    v9(v6, v0);
  }

  return v13 & 1;
}

uint64_t closure #1 in closure #2 in PhoneRingsSnippet.body.getter@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-v11 - 8];
  memcpy(v40, a1, 0x239uLL);
  outlined init with copy of AppPunchout?(v40, v42, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  LOBYTE(a1) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined init with copy of AppPunchout?(a2, v12, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGMR) + 36)];
  *v21 = a1;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR) + 36)];
  *v30 = a1;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = &v12[*(v7 + 44)];
  *v31 = a1;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  memcpy(v39, v40, sizeof(v39));
  outlined init with copy of AppPunchout?(v12, v9, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMR);
  memcpy(v41, v39, 0x239uLL);
  memcpy(a3, v39, 0x239uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXG_ACyACyACyAA6VStackVyAA05TupleP0VyAA0P0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyA2_yA4_yA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__ACyAA6HStackVyA4_yA15__A15_tGGAA016_ForegroundStyleM0VyAQGGtGG_Qo__A27_A27_tGGAXGAXGAXGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXG_ACyACyACyAA6VStackVyAA05TupleP0VyAA0P0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyA2_yA4_yA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__ACyAA6HStackVyA4_yA15__A15_tGGAA016_ForegroundStyleM0VyAQGGtGG_Qo__A27_A27_tGGAXGAXGAXGtMR);
  outlined init with copy of AppPunchout?(v9, a3 + *(v36 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMR);
  outlined init with copy of AppPunchout?(v41, v42, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  outlined destroy of AppPunchout?(v12, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMR);
  outlined destroy of AppPunchout?(v9, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GA8_GMR);
  memcpy(v42, v39, 0x239uLL);
  return outlined destroy of AppPunchout?(v42, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
}

uint64_t closure #2 in closure #2 in PhoneRingsSnippet.body.getter@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11 - 8];
  memcpy(v32, a1, 0x239uLL);
  outlined init with copy of AppPunchout?(v32, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined init with copy of AppPunchout?(a2, v12, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR);
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGMR) + 36)];
  *v21 = a1;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v22 = &v12[*(v7 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  memcpy(v31, v32, sizeof(v31));
  outlined init with copy of AppPunchout?(v12, v9, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR);
  memcpy(v33, v31, 0x239uLL);
  memcpy(a3, v31, 0x239uLL);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXG_ACyACyAA6VStackVyAA05TupleP0VyAA0P0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyA2_yA4_yA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__ACyAA6HStackVyA4_yA15__A15_tGGAA016_ForegroundStyleM0VyAQGGtGG_Qo__A27_A27_tGGAXGAXGAA6SpacerVtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXG_ACyACyAA6VStackVyAA05TupleP0VyAA0P0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_A13_tFQOyA2_yA4_yA6_A7_EA8_A9_A10_QrA13__A13_tFQOyAA4TextV_Qo__ACyAA6HStackVyA4_yA15__A15_tGGAA016_ForegroundStyleM0VyAQGGtGG_Qo__A27_A27_tGGAXGAXGAA6SpacerVtMR);
  outlined init with copy of AppPunchout?(v9, &a3[*(v27 + 48)], &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR);
  v28 = &a3[*(v27 + 64)];
  *v28 = 0;
  v28[8] = 1;
  outlined init with copy of AppPunchout?(v33, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
  outlined destroy of AppPunchout?(v12, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR);
  outlined destroy of AppPunchout?(v9, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA0G0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_APtFQOyAEyAGyAiJEAklMQrAP_APtFQOyAA4TextV_Qo__ACyAA6HStackVyAGyAR_ARtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGAA14_PaddingLayoutVGA8_GMR);
  memcpy(v34, v31, 0x239uLL);
  return outlined destroy of AppPunchout?(v34, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy08WellnessB033HKActivityRingUIViewRepresentableVAA12_FrameLayoutVGAA16_OverlayModifierVyAA15StrokeShapeViewVyAA6CircleVAA5ColorVAA05EmptyP0VGGGAA08_PaddingK0VGAXGAXGAXGMR);
}

uint64_t PhoneRingsSnippet.isAccessibleAndLargeDynamicType()()
{
  v0 = type metadata accessor for DynamicTypeSize();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  PhoneRingsSnippet.dynamicTypeSize.getter(&v17 - v5);
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x277CDF990], v0);
  v8 = static DynamicTypeSize.== infix(_:_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  if (v8 & 1) != 0 || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9A0], v0), v10 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v10) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9B0], v0), v11 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v11) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9C0], v0), v12 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v12) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDF9C8], v0), v13 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v13) || (PhoneRingsSnippet.dynamicTypeSize.getter(v6), v7(v3, *MEMORY[0x277CDFA08], v0), v14 = static DynamicTypeSize.== infix(_:_:)(), v9(v3, v0), v9(v6, v0), (v14))
  {
    v15 = 1;
  }

  else
  {
    PhoneRingsSnippet.dynamicTypeSize.getter(v6);
    v7(v3, *MEMORY[0x277CDFA18], v0);
    v15 = static DynamicTypeSize.== infix(_:_:)();
    v9(v3, v0);
    v9(v6, v0);
  }

  return v15 & 1;
}

double closure #1 in closure #1 in PhoneRingsSnippet.labelPair(label:value:unit:color:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v76 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for Font.TextStyle();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v79 = a2;
  v73 = lazy protocol witness table accessor for type String and conformance String();

  v14 = Text.init<A>(_:)();
  v69 = v15;
  v17 = v16;
  v72 = *MEMORY[0x277CE0A88];
  v18 = *(v11 + 104);
  v70 = v11 + 104;
  v71 = v18;
  v56 = v13;
  v19 = v10;
  v57 = v10;
  v18(v13);
  v66 = *MEMORY[0x277CE0998];
  v20 = v66;
  v21 = type metadata accessor for Font.Design();
  v59 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  v60 = v22 + 104;
  v65 = v23;
  v23(v9, v20, v21);
  v24 = *(v22 + 56);
  v58 = v22 + 56;
  v63 = v24;
  v24(v9, 0, 1, v21);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v9, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v25 = *(v11 + 8);
  v61 = v11 + 8;
  v62 = v25;
  v25(v13, v19);
  LOBYTE(v22) = v17;
  v26 = v14;
  v27 = v69;
  v28 = Text.font(_:)();
  v30 = v29;
  LOBYTE(v14) = v31;

  outlined consume of Text.Storage(v26, v27, v22 & 1);

  static Font.Weight.semibold.getter();
  v32 = Text.fontWeight(_:)();
  v68 = v33;
  v69 = v32;
  v67 = v34;
  v64 = v35;
  outlined consume of Text.Storage(v28, v30, v14 & 1);

  v78 = v74;
  v79 = v75;

  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v30) = v39;
  v40 = v56;
  v41 = v57;
  v71(v56, v72, v57);
  v42 = v59;
  v65(v9, v66, v59);
  v63(v9, 0, 1, v42);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v9, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v62(v40, v41);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  Font.smallCaps()();

  v43 = Text.font(_:)();
  v45 = v44;
  LOBYTE(v14) = v46;
  v48 = v47;

  outlined consume of Text.Storage(v36, v38, v30 & 1);

  v49 = v64 & 1;
  v77 = v64 & 1;
  LOBYTE(v78) = v64 & 1;
  v80 = v14 & 1;
  v50 = v76;
  v51 = v68;
  v52 = v69;
  v53 = v67;
  *v76 = v69;
  v50[1] = v53;
  *(v50 + 16) = v49;
  v50[3] = v51;
  v50[4] = v43;
  v50[5] = v45;
  *(v50 + 48) = v14 & 1;
  v50[7] = v48;
  outlined copy of Text.Storage(v52, v53, v49);

  outlined copy of Text.Storage(v43, v45, v14 & 1);

  outlined consume of Text.Storage(v43, v45, v14 & 1);

  outlined consume of Text.Storage(v52, v53, v77);

  return result;
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t outlined init with copy of PhoneRingsSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PhoneRingsSnippet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRingsSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in PhoneRingsSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhoneRingsSnippet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0P07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_ANtFQOyACyAEyAgHEAijKQrAN_ANtFQOyAA4TextV_Qo__AA15ModifiedContentVyAA6HStackVyAEyAP_APtGGAA24_ForegroundStyleModifierVyAA5ColorVGGtGG_Qo__A4_A4_tGGMR) - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 569) & ~*(v6 + 80));

  return closure #2 in PhoneRingsSnippet.body.getter(v1 + v4, (v1 + v5), v7, a1);
}

void type metadata completion function for PhoneRingsSnippet(uint64_t a1)
{
  type metadata accessor for Environment<DynamicTypeSize>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DynamicTypeSize>)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DynamicTypeSize>);
    }
  }
}

uint64_t TemperatureQuerySnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for TemperatureQuerySnippet(0) + 20));
  type metadata accessor for Context();
  _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v4 = EnvironmentObject.init()();
  v4[1] = v5;
  return _s10WellnessUI21TemperatureQueryModelVWObTm_0(a1, a2, type metadata accessor for TemperatureQueryModel);
}

uint64_t type metadata accessor for TemperatureQuerySnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for TemperatureQuerySnippet;
  if (!type metadata singleton initialization cache for TemperatureQuerySnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemperatureQuerySnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v189 = a1;
  Snippet = type metadata accessor for TemperatureQuerySnippet(0);
  v177 = *(Snippet - 8);
  MEMORY[0x28223BE20](Snippet - 8);
  v178 = v2;
  v179 = v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR);
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v180 = v150 - v3;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AA03AnyC0VtGG_Qo_MR);
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v181 = v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v182 = v150 - v6;
  v7 = type metadata accessor for FactItemHeroNumberView();
  v161 = *(v7 - 8);
  v162 = v7;
  MEMORY[0x28223BE20](v7);
  v160 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v158 = v150 - v10;
  v11 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v11 - 8);
  v159 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.TextStyle();
  v165 = *(v13 - 8);
  v166 = v13;
  MEMORY[0x28223BE20](v13);
  v164 = v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for MultipleDataPointView(0);
  MEMORY[0x28223BE20](v169);
  v167 = (v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v168 = v150 - v17;
  v18 = type metadata accessor for SnippetHeaderView(0);
  v19 = *(v18 - 8);
  v171 = v18;
  v172 = v19;
  MEMORY[0x28223BE20](v18);
  v173 = v20;
  v174 = v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v188 = v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v163 = v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v150 - v26;
  v28 = type metadata accessor for AppPunchout();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v175 = v30;
  v176 = v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v187 = v150 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = v150 - v34;
  v36 = type metadata accessor for SpeakableString();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  Model = type metadata accessor for TemperatureQueryModel(0);
  outlined init with copy of AppPunchout?(v190 + Model[10], v35, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v40 = &_s16SiriDialogEngine15SpeakableStringVSgMd;
    v41 = &_s16SiriDialogEngine15SpeakableStringVSgMR;
    v42 = v35;
LABEL_5:
    outlined destroy of AppPunchout?(v42, v40, v41);
    result = AnyView.init<A>(_:)();
    *v189 = result;
    return result;
  }

  (*(v37 + 32))(v39, v35, v36);
  outlined init with copy of AppPunchout?(v190, v27, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v43 = *(v29 + 48);
  if (v43(v27, 1, v28) == 1)
  {
    (*(v37 + 8))(v39, v36);
    v40 = &_s10SnippetKit11AppPunchoutVSgMd;
    v41 = &_s10SnippetKit11AppPunchoutVSgMR;
    v42 = v27;
    goto LABEL_5;
  }

  v156 = v28;
  v157 = v39;
  v154 = v36;
  v155 = v29;
  v151 = *(v29 + 32);
  v152 = v29 + 32;
  v151(v187, v27, v28);
  v45 = Model;
  v46 = v190;
  v47 = v188;
  outlined init with copy of AppPunchout?(v190 + Model[18], v188, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  v48 = v171;
  v49 = *(v171 + 20);
  *(v47 + v49) = swift_getKeyPath();
  v150[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v50 = *(v48 + 24);
  *(v47 + v50) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v51 = v46 + v45[5];
  v52 = *(v51 + 8);
  v153 = v37;
  if ((v52 & 1) == 0)
  {
    v53 = *v51;
    if (*v51 > 0.0)
    {
      v54 = (v46 + v45[13]);
      v55 = *v54;
      v56 = v54[1];
      if (v56)
      {
        v57 = v45[12];
        v58 = *(v46 + v57 + 8);
        if (v58)
        {
          v171 = v55;
          v59 = v45[11];
          v60 = *(v46 + v59 + 8);
LABEL_13:
          v163 = *(v46 + v59);
          v166 = *(v46 + v57);
          v61 = v46;
          v62 = v58;

          v63 = SpeakableString.print.getter();
          v164 = v64;
          v165 = v63;
          v65 = (v61 + v45[17]);
          v66 = v61;
          v67 = v65[1];
          Model = *v65;
          type metadata accessor for Context();
          _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);

          v68 = EnvironmentObject.init()();
          v69 = v167;
          *v167 = v68;
          *(v69 + 8) = v70;
          v71 = v56;
          v72 = v169;
          v73 = *(v169 + 20);
          *(v69 + v73) = swift_getKeyPath();
          swift_storeEnumTagMultiPayload();
          v74 = v69 + v72[6];
          *v74 = v53;
          *(v74 + 8) = 0;
          v75 = (v69 + v72[7]);
          *v75 = v163;
          v75[1] = v60;
          v76 = (v69 + v72[8]);
          *v76 = v171;
          v76[1] = v71;
          v77 = (v69 + v72[9]);
          v78 = v165;
          *v77 = v166;
          v77[1] = v62;
          v79 = (v69 + v72[10]);
          *v79 = 0;
          v79[1] = 0;
          v80 = (v69 + v72[11]);
          *v80 = 0;
          v80[1] = 0;
          v81 = (v69 + v72[12]);
          *v81 = v78;
          v81[1] = v164;
          *(v69 + v72[13]) = 0;
          v82 = 0x65676172657641;
          if (v67)
          {
            v82 = Model;
          }

          v83 = 0xE700000000000000;
          if (v67)
          {
            v83 = v67;
          }

          v84 = (v69 + v72[14]);
          *v84 = v82;
          v84[1] = v83;
          _s10WellnessUI21TemperatureQueryModelVWObTm_0(v69, v168, type metadata accessor for MultipleDataPointView);
          _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type MultipleDataPointView and conformance MultipleDataPointView, type metadata accessor for MultipleDataPointView, &protocol conformance descriptor for MultipleDataPointView);
          goto LABEL_22;
        }
      }

      v59 = v45[11];
      v60 = *(v46 + v59 + 8);
      if (v60)
      {
        v171 = v55;
        v57 = v45[12];
        v58 = *(v46 + v57 + 8);
        goto LABEL_13;
      }
    }
  }

  v85 = (v46 + v45[14]);
  v86 = v85[1];
  if (v86)
  {
    v87 = *v85;
    v88 = v163;
    outlined init with copy of AppPunchout?(v46, v163, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    if (v43(v88, 1, v156) == 1)
    {
      outlined destroy of AppPunchout?(v88, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
      v89 = AnyView.init<A>(_:)();
      v206 = MEMORY[0x277CE11D0];
      OpaqueTypeConformance2 = MEMORY[0x277CE11B8];
      v205[0] = v89;
    }

    else
    {

      outlined destroy of AppPunchout?(v88, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
      (*(v165 + 104))(v164, *MEMORY[0x277CE0A78], v166);
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v91._countAndFlagsBits = 0;
      v91._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v91);
      v92._countAndFlagsBits = v87;
      v92._object = v86;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v92);

      v93._countAndFlagsBits = 0;
      v93._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v93);
      LocalizedStringKey.init(stringInterpolation:)();
      v94 = Text.init(_:tableName:bundle:comment:)();
      v171 = v95;
      v97 = v96;
      v98 = *MEMORY[0x277CE0998];
      v99 = type metadata accessor for Font.Design();
      v100 = *(v99 - 8);
      v101 = v158;
      (*(v100 + 104))(v158, v98, v99);
      (*(v100 + 56))(v101, 0, 1, v99);
      static Font.system(_:design:weight:)();
      outlined destroy of AppPunchout?(v101, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v102 = v97;
      v103 = v171;
      v104 = Text.font(_:)();
      v106 = v105;
      LOBYTE(v101) = v107;
      v167 = v108;

      outlined consume of Text.Storage(v94, v103, v102 & 1);

      v109 = Text.bold()();
      v171 = v110;
      LODWORD(v169) = v111;
      v168 = v112;
      outlined consume of Text.Storage(v104, v106, v101 & 1);

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v113._countAndFlagsBits = 0;
      v113._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v113);
      v114._countAndFlagsBits = SpeakableString.print.getter();
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v114);

      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v115);
      LocalizedStringKey.init(stringInterpolation:)();
      v116 = Text.init(_:tableName:bundle:comment:)();
      v118 = v117;
      LOBYTE(v103) = v119;
      v121 = v120;
      v206 = MEMORY[0x277CE0BD0];
      OpaqueTypeConformance2 = MEMORY[0x277D638F0];
      v122 = swift_allocObject();
      v205[0] = v122;
      Model = v109;
      v123 = v171;
      *(v122 + 16) = v109;
      *(v122 + 24) = v123;
      LODWORD(v106) = v169 & 1;
      *(v122 + 32) = v106;
      LODWORD(v169) = v106;
      *(v122 + 40) = v168;
      v204 = 0;
      memset(v203, 0, sizeof(v203));
      v202 = 0;
      v200 = 0u;
      v201 = 0u;
      v198 = MEMORY[0x277CE0BD0];
      v199 = MEMORY[0x277D638F0];
      v124 = swift_allocObject();
      v196 = 0;
      v197 = v124;
      *(v124 + 16) = v116;
      *(v124 + 24) = v118;
      *(v124 + 32) = v103 & 1;
      *(v124 + 40) = v121;
      v194 = 0u;
      v195 = 0u;
      v193 = 0;
      v191 = 0u;
      v192 = 0u;
      outlined copy of Text.Storage(v109, v123, v106);

      v125 = v116;
      v126 = v116;
      v127 = v118;
      outlined copy of Text.Storage(v125, v118, v103 & 1);

      v128 = v160;
      FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
      v129 = _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
      v130 = v162;
      *&v203[0] = v162;
      *(&v203[0] + 1) = v129;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v205);
      View.componentSpacing(top:bottom:)();
      outlined consume of Text.Storage(v126, v127, v103 & 1);

      outlined consume of Text.Storage(Model, v171, v169);

      (*(v161 + 8))(v128, v130);
      (*(v165 + 8))(v164, v166);
    }

    v66 = v190;
    goto LABEL_25;
  }

  v66 = v46;
LABEL_22:
  v90 = AnyView.init<A>(_:)();
  v206 = MEMORY[0x277CE11D0];
  OpaqueTypeConformance2 = MEMORY[0x277CE11B8];
  v205[0] = v90;
LABEL_25:
  v131 = v174;
  outlined init with copy of TemperatureQueryModel(v188, v174, type metadata accessor for SnippetHeaderView);
  outlined init with copy of View(v205, v203);
  v132 = (*(v172 + 80) + 16) & ~*(v172 + 80);
  v133 = (v173 + v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v134 = swift_allocObject();
  _s10WellnessUI21TemperatureQueryModelVWObTm_0(v131, v134 + v132, type metadata accessor for SnippetHeaderView);
  outlined init with take of View(v203, v134 + v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, AnyView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA03AnyD0VtGMR, MEMORY[0x277CE14C8]);
  v135 = v180;
  ComponentStack.init(content:)();
  v136 = v179;
  outlined init with copy of TemperatureQueryModel(v66, v179, type metadata accessor for TemperatureQuerySnippet);
  v138 = v155;
  v137 = v156;
  v139 = v176;
  v140 = v187;
  (*(v155 + 16))(v176, v187, v156);
  v141 = (*(v177 + 80) + 16) & ~*(v177 + 80);
  v142 = (v178 + *(v138 + 80) + v141) & ~*(v138 + 80);
  v143 = swift_allocObject();
  _s10WellnessUI21TemperatureQueryModelVWObTm_0(v136, v143 + v141, type metadata accessor for TemperatureQuerySnippet);
  v151((v143 + v142), v139, v137);
  v144 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, AnyView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD03AnyG0VtGGMR, MEMORY[0x277D63B98]);
  v145 = v182;
  v146 = v185;
  View.componentTapped(isNavigation:perform:)();

  (*(v183 + 8))(v135, v146);
  v147 = v184;
  v148 = v186;
  (*(v184 + 16))(v181, v145, v186);
  *&v203[0] = v146;
  *(&v203[0] + 1) = v144;
  swift_getOpaqueTypeConformance2();
  v149 = AnyView.init<A>(_:)();
  (*(v147 + 8))(v145, v148);
  outlined destroy of SnippetHeaderView(v188);
  (*(v138 + 8))(v140, v137);
  (*(v153 + 8))(v157, v154);
  result = __swift_destroy_boxed_opaque_existential_1(v205);
  *v189 = v149;
  return result;
}

uint64_t closure #1 in TemperatureQuerySnippet.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SnippetHeaderView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = AnyView.init<A>(_:)();
  outlined init with copy of TemperatureQueryModel(a1, v8, type metadata accessor for SnippetHeaderView);
  outlined init with copy of TemperatureQueryModel(v8, a3, type metadata accessor for SnippetHeaderView);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMd, &_s10WellnessUI17SnippetHeaderViewV_05SwiftB003AnyE0VtMR) + 48)) = v13;
  return outlined destroy of SnippetHeaderView(v8);
}

void closure #2 in TemperatureQuerySnippet.body.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + *(type metadata accessor for TemperatureQuerySnippet(0) + 20));
  if (v2)
  {
    v3 = v2;
    dispatch thunk of Context.perform(appPunchout:)();
  }

  else
  {
    type metadata accessor for Context();
    _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t outlined init with copy of View(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of View(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in TemperatureQuerySnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SnippetHeaderView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in TemperatureQuerySnippet.body.getter(v1 + v4, v5, a1);
}

uint64_t outlined init with copy of TemperatureQueryModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void partial apply for closure #2 in TemperatureQuerySnippet.body.getter()
{
  v1 = *(type metadata accessor for TemperatureQuerySnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AppPunchout() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  closure #2 in TemperatureQuerySnippet.body.getter(v0 + v2, v5);
}

uint64_t _s10WellnessUI21TemperatureQueryModelVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s9SnippetUI7ContextCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for TemperatureQuerySnippet(uint64_t a1)
{
  type metadata accessor for TemperatureQueryModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<Context>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swiftcall HKActivityRingUIViewRepresentable.init(model:)(WellnessUI::HKActivityRingUIViewRepresentable *__return_ptr retstr, WellnessUI::PhoneRingsModel *model)
{
  v2 = *&model[1].exerciseGoalValue.value;
  *&retstr->model.standUnitLabel.value._object = *&model->standUnitLabel.value._object;
  *&retstr[1].model.exerciseGoalValue.value = v2;
  *(&retstr[1].model.exerciseTotalValue.value + 7) = *(&model[1].exerciseTotalValue.value + 7);
  BYTE5(retstr[1].model.moveTotalValue.value) = BYTE5(model[1].moveTotalValue.value);
  v3 = *&model->moveUnitLabel.value._object;
  *&retstr->model.moveValueLabel.value._object = *&model->moveValueLabel.value._object;
  *&retstr->model.moveUnitLabel.value._object = v3;
  v4 = *&model->standValueLabel.value._object;
  *&retstr->model.standLabel.value._object = *&model->standLabel.value._object;
  *&retstr->model.standValueLabel.value._object = v4;
  v5 = *&model->exerciseValueLabel.value._object;
  *&retstr->model.exerciseLabel.value._object = *&model->exerciseLabel.value._object;
  *&retstr->model.exerciseValueLabel.value._object = v5;
  v6 = *&model->moveLabel.value._object;
  *&retstr->model.exerciseUnitLabel.value._object = *&model->exerciseUnitLabel.value._object;
  *&retstr->model.moveLabel.value._object = v6;
  v7 = *(&model->exerciseTotalValue.value + 7);
  *&retstr->model.exerciseGoalValue.value = *&model->exerciseGoalValue.value;
  *(&retstr->model.exerciseTotalValue.value + 7) = v7;
  v8 = *(&model->standTotalValue.value + 3);
  *(&retstr->model.moveTotalValue.value + 5) = *(&model->moveTotalValue.value + 5);
  *(&retstr->model.standTotalValue.value + 3) = v8;
}

uint64_t HKActivityRingUIViewRepresentable.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37 = v1[14];
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  *(a1 + 192) = v35;
  *(a1 + 208) = v4;
  *(a1 + 224) = v1[14];
  *(a1 + 128) = v6;
  *(a1 + 144) = v8;
  *(a1 + 160) = v10;
  *(a1 + 176) = v3;
  *(a1 + 64) = v12;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 112) = v7;
  *a1 = v20;
  *(a1 + 16) = v19;
  v38 = *(v1 + 240);
  *(a1 + 240) = *(v1 + 240);
  *(a1 + 32) = v21;
  *(a1 + 48) = v13;
  return outlined init with copy of PhoneRingsModel(v24, v23);
}

id HKActivityRingUIViewRepresentable.makeUIView(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 80);
  v33 = *(v0 + 88);
  v34 = *(v0 + 72);
  v11 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v12 = objc_opt_self();
  v13 = [v12 largeCalorieUnit];
  if (v8)
  {
    v7 = 0.0;
  }

  v14 = objc_opt_self();
  v15 = [v14 quantityWithUnit:v13 doubleValue:v7];

  [v11 setActiveEnergyBurned_];
  v16 = [v12 largeCalorieUnit];
  v17 = 500.0;
  if (!v6)
  {
    v17 = v5;
  }

  v18 = [v14 quantityWithUnit:v16 doubleValue:v17];

  [v11 setActiveEnergyBurnedGoal_];
  v19 = [v12 hourUnit];
  if (v4)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v3;
  }

  v21 = [v14 quantityWithUnit:v19 doubleValue:v20];

  [v11 setAppleExerciseTime_];
  v22 = [v12 hourUnit];
  v23 = 30.0;
  if (!v2)
  {
    v23 = v1;
  }

  v24 = [v14 quantityWithUnit:v22 doubleValue:v23];

  [v11 setAppleExerciseTimeGoal_];
  v25 = [v12 countUnit];
  if (v33)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v10;
  }

  v27 = [v14 quantityWithUnit:v25 doubleValue:v26];

  [v11 setAppleStandHours_];
  v28 = [v12 countUnit];
  v29 = 12.0;
  if (!v34)
  {
    v29 = v9;
  }

  v30 = [v14 quantityWithUnit:v28 doubleValue:v29];

  [v11 setAppleStandHoursGoal_];
  v31 = [objc_allocWithZone(MEMORY[0x277CCE5E0]) init];
  [v31 setActivitySummary:v11 animated:1];

  return v31;
}

unint64_t lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable()
{
  result = lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable;
  if (!lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable;
  if (!lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance HKActivityRingUIViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();

  return MEMORY[0x28212E3C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance HKActivityRingUIViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();

  return MEMORY[0x28212E350](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance HKActivityRingUIViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type HKActivityRingUIViewRepresentable and conformance HKActivityRingUIViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HKActivityRingUIViewRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 241))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HKActivityRingUIViewRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t SingleDataPointView.data.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SingleDataPointView.unit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SingleDataPointView.dateLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SingleDataPointView.appPunchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SingleDataPointView(0) + 32);

  return outlined init with copy of AppPunchout?(v3, a1);
}

uint64_t type metadata accessor for SingleDataPointView(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleDataPointView;
  if (!type metadata singleton initialization cache for SingleDataPointView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SingleDataPointView.init(data:unit:dateLabel:appPunchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *a8 = EnvironmentObject.init()();
  a8[1] = v16;
  a8[2] = a1;
  a8[3] = a2;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  v17 = a8 + *(type metadata accessor for SingleDataPointView(0) + 32);

  return outlined init with take of AppPunchout?(a7, v17);
}

uint64_t outlined init with take of AppPunchout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SingleDataPointView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v126 = a1;
  v2 = type metadata accessor for FactItemHeroNumberView();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x28223BE20](v2);
  v119 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v124 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v120 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v100 - v9;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v100 - v19;
  if (v1[3])
  {
    v21 = v1[5];
    if (v21)
    {
      v22 = v1[7];
      if (v22)
      {
        v117 = v1[3];
        v115._object = v22;
        v23 = v1[2];
        v113 = v1[4];
        v114 = v23;
        v115._countAndFlagsBits = v1[6];
        v24 = type metadata accessor for SingleDataPointView(0);
        outlined init with copy of AppPunchout?(v1 + *(v24 + 32), v20);
        v25 = type metadata accessor for AppPunchout();
        if ((*(*(v25 - 8) + 48))(v20, 1, v25) != 1)
        {

          outlined destroy of AppPunchout?(v20, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
          v27 = *MEMORY[0x277CE0A78];
          v118 = v12;
          v28 = *(v12 + 104);
          v116 = v17;
          v28(v17, v27, v11);
          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v29._countAndFlagsBits = 0;
          v29._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
          v30._countAndFlagsBits = v113;
          v30._object = v21;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v30);

          v31._countAndFlagsBits = 0;
          v31._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
          LocalizedStringKey.init(stringInterpolation:)();
          v32 = Text.init(_:tableName:bundle:comment:)();
          v112 = v33;
          v113 = v32;
          v108 = v4;
          v35 = v34;
          v36 = *MEMORY[0x277CE0A60];
          v109 = v11;
          v28(v14, v36, v11);
          v105 = *MEMORY[0x277CE0998];
          v37 = v105;
          v38 = type metadata accessor for Font.Design();
          v101 = v38;
          v39 = *(v38 - 8);
          v40 = *(v39 + 104);
          v104 = v39 + 104;
          v106 = v40;
          v41 = v125;
          v40(v125, v37, v38);
          v42 = *(v39 + 56);
          v102 = v39 + 56;
          v103 = v42;
          v42(v41, 0, 1, v38);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v41, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          v43 = *(v118 + 8);
          v118 += 8;
          v110 = v43;
          v43(v14, v11);
          v45 = v112;
          v44 = v113;
          v111 = Text.font(_:)();
          v47 = v46;
          LOBYTE(v41) = v48;

          outlined consume of Text.Storage(v44, v45, v35 & 1);

          LODWORD(v142) = static HierarchicalShapeStyle.secondary.getter();
          v49 = v111;
          v50 = Text.foregroundStyle<A>(_:)();
          v52 = v51;
          LOBYTE(v38) = v53;
          outlined consume of Text.Storage(v49, v47, v41 & 1);

          static Font.Weight.semibold.getter();
          v54 = Text.fontWeight(_:)();
          v111 = v55;
          v112 = v54;
          v107 = v56;
          v113 = v57;
          outlined consume of Text.Storage(v50, v52, v38 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v58._countAndFlagsBits = 0;
          v58._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v58);
          v59._countAndFlagsBits = v114;
          v59._object = v117;
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v59);

          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v60);
          LocalizedStringKey.init(stringInterpolation:)();
          v61 = Text.init(_:tableName:bundle:comment:)();
          v63 = v62;
          LOBYTE(v50) = v64;
          v117 = v65;
          v66 = v125;
          v67 = v101;
          v106(v125, v105, v101);
          v103(v66, 0, 1, v67);
          static Font.system(_:design:weight:)();
          outlined destroy of AppPunchout?(v66, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
          v68 = Text.font(_:)();
          v70 = v69;
          LOBYTE(v66) = v71;

          outlined consume of Text.Storage(v61, v63, v50 & 1);

          v72 = Text.bold()();
          v74 = v73;
          LODWORD(v117) = v75;
          v125 = v76;
          outlined consume of Text.Storage(v68, v70, v66 & 1);

          LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v77._countAndFlagsBits = 0;
          v77._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v77);
          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v115);
          v78._countAndFlagsBits = 0;
          v78._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
          LocalizedStringKey.init(stringInterpolation:)();
          v79 = Text.init(_:tableName:bundle:comment:)();
          v104 = v79;
          v115._countAndFlagsBits = v80;
          v105 = v81;
          v83 = v82;
          v144 = MEMORY[0x277CE0BD0];
          v145 = MEMORY[0x277D638F0];
          v84 = MEMORY[0x277CE0BD0];
          v85 = MEMORY[0x277D638F0];
          v86 = swift_allocObject();
          v141 = v85;
          v142 = v86;
          v114 = v72;
          *(v86 + 16) = v72;
          *(v86 + 24) = v74;
          v106 = v74;
          LODWORD(v117) = v117 & 1;
          *(v86 + 32) = v117;
          *(v86 + 40) = v125;
          v140 = v84;
          v87 = swift_allocObject();
          v138 = 0;
          v139 = v87;
          v89 = v111;
          v88 = v112;
          *(v87 + 16) = v112;
          *(v87 + 24) = v89;
          LODWORD(v115._object) = v107 & 1;
          *(v87 + 32) = v107 & 1;
          *(v87 + 40) = v113;
          v136 = 0u;
          v137 = 0u;
          v134 = MEMORY[0x277CE0BD0];
          v135 = MEMORY[0x277D638F0];
          v90 = swift_allocObject();
          v132 = 0;
          v133 = v90;
          countAndFlagsBits = v115._countAndFlagsBits;
          *(v90 + 16) = v79;
          *(v90 + 24) = countAndFlagsBits;
          LOBYTE(v79) = v105 & 1;
          *(v90 + 32) = v105 & 1;
          *(v90 + 40) = v83;
          v130 = 0u;
          v131 = 0u;
          v129 = 0;
          v127 = 0u;
          v128 = 0u;
          outlined copy of Text.Storage(v72, v74, v117);

          outlined copy of Text.Storage(v88, v89, v115._object);

          v92 = v104;
          outlined copy of Text.Storage(v104, countAndFlagsBits, v79);

          v93 = v119;
          FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
          v94 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
          v95 = v122;
          v96 = v123;
          View.componentSpacing(top:bottom:)();
          (*(v121 + 8))(v93, v95);
          v97 = v124;
          v98 = v108;
          (*(v124 + 16))(v120, v96, v108);
          v142 = v95;
          v143 = v94;
          swift_getOpaqueTypeConformance2();
          v99 = AnyView.init<A>(_:)();
          outlined consume of Text.Storage(v92, v115._countAndFlagsBits, v79);

          outlined consume of Text.Storage(v112, v111, v115._object);

          outlined consume of Text.Storage(v114, v106, v117);

          (*(v97 + 8))(v96, v98);
          v110(v116, v109);
          result = v99;
          goto LABEL_7;
        }

        outlined destroy of AppPunchout?(v20, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
      }
    }
  }

  result = AnyView.init<A>(_:)();
LABEL_7:
  *v126 = result;
  return result;
}

void type metadata completion function for SingleDataPointView(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<Context>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AppPunchout?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for AppPunchout?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AppPunchout?)
  {
    type metadata accessor for AppPunchout();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AppPunchout?);
    }
  }
}

uint64_t HealthDataLogSnippet.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for HealthDataLogSnippet(0);
  outlined init with copy of AppPunchout?(v1 + *(v10 + 24), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t HealthDataLogSnippet.buttonColor.getter()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  HealthDataLogSnippet.colorScheme.getter(&v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D8], v0);
  v7 = static ColorScheme.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.blue.getter();
  }
}

uint64_t HealthDataLogSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HealthDataLogSnippet(0);
  v5 = (a2 + *(v4 + 20));
  type metadata accessor for Context();
  lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type Context and conformance Context, MEMORY[0x277D63F68], MEMORY[0x277D63F58]);
  *v5 = EnvironmentObject.init()();
  v5[1] = v6;
  v7 = *(v4 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  return outlined init with take of HealthDataLogModel(a1, a2, type metadata accessor for HealthDataLogModel);
}

uint64_t type metadata accessor for HealthDataLogSnippet(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthDataLogSnippet;
  if (!type metadata singleton initialization cache for HealthDataLogSnippet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HealthDataLogSnippet.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v238 = a1;
  v2 = type metadata accessor for HealthDataLogSnippet(0);
  v213 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v214 = v3;
  v215 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR);
  v218 = *(v4 - 8);
  v219 = v4;
  MEMORY[0x28223BE20](v4);
  v216 = &v168 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E15componentTapped12isNavigation7performQrSb_yyctFQOyAD14ComponentStackVyAA05TupleC0Vy08WellnessB00d6HeaderC0V_AcDE0E7Spacing3top6bottomQr12CoreGraphics7CGFloatV_ATtFQOyAcDE10separators_0G8OverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_AD015StatusIndicatorC0VtGG_Qo_MR);
  v221 = *(v6 - 8);
  v222 = v6;
  MEMORY[0x28223BE20](v6);
  v217 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v220 = &v168 - v9;
  v10 = type metadata accessor for SeparatorStyle();
  v211 = *(v10 - 1);
  v212 = v10;
  MEMORY[0x28223BE20](v10);
  v207 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for FactItemHeroNumberView();
  v205 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v203 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo_MR);
  v206 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v204 = &v168 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AJtFQOyAcDE10separators_10isOverrideQr0D3Kit14SeparatorStyleO_SbtFQOyAD018FactItemHeroNumberC0V_Qo__Qo_MR);
  v228 = *(v14 - 8);
  v229 = v14;
  MEMORY[0x28223BE20](v14);
  v224 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v15;
  MEMORY[0x28223BE20](v16);
  v227 = &v168 - v17;
  v18 = type metadata accessor for StatusIndicatorView.IndicatorType();
  v194 = *(v18 - 8);
  v195 = v18;
  MEMORY[0x28223BE20](v18);
  v193 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StatusIndicatorView();
  v225 = *(v20 - 8);
  v226 = v20;
  MEMORY[0x28223BE20](v20);
  v201 = v21;
  v202 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v234 = &v168 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v223 = &v168 - v25;
  v26 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v26 - 8);
  v230 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for SnippetHeaderView(0);
  v196 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v197 = v28;
  v198 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v233 = &v168 - v30;
  v232 = type metadata accessor for Font.TextStyle();
  v235 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v192 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v231 = &v168 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v168 - v35;
  v237 = type metadata accessor for AppPunchout();
  v37 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v199 = v38;
  v200 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v236 = &v168 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v168 - v42;
  v44 = type metadata accessor for SnippetHeaderModel(0);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppPunchout?(v1, v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
    outlined destroy of AppPunchout?(v43, &_s10WellnessUI18SnippetHeaderModelVSgMd, &_s10WellnessUI18SnippetHeaderModelVSgMR);
LABEL_14:
    result = AnyView.init<A>(_:)();
    goto LABEL_15;
  }

  outlined init with take of HealthDataLogModel(v43, v47, type metadata accessor for SnippetHeaderModel);
  v48 = type metadata accessor for HealthDataLogModel(0);
  v49 = (v1 + *(v48 + 32));
  v50 = v49[1];
  if (!v50)
  {
LABEL_13:
    outlined destroy of SnippetHeaderModel(v47, type metadata accessor for SnippetHeaderModel);
    goto LABEL_14;
  }

  v51 = v48;
  v190 = *v49;
  outlined init with copy of AppPunchout?(v1 + *(v48 + 40), v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
  v52 = v237;
  if ((*(v37 + 48))(v36, 1, v237) == 1)
  {
    outlined destroy of SnippetHeaderModel(v47, type metadata accessor for SnippetHeaderModel);
    outlined destroy of AppPunchout?(v36, &_s10SnippetKit11AppPunchoutVSgMd, &_s10SnippetKit11AppPunchoutVSgMR);
    goto LABEL_14;
  }

  v187 = v50;
  v53 = v236;
  v188 = *(v37 + 32);
  v189 = v37 + 32;
  v188(v236, v36, v52);
  v54 = (v1 + v51[9]);
  v55 = v54[1];
  if (!v55)
  {
    (*(v37 + 8))(v53, v52);
    goto LABEL_13;
  }

  v56 = (v1 + v51[6]);
  v57 = v56[1];
  if (!v57 || (v58 = (v1 + v51[7]), (v59 = v58[1]) == 0) || (v60 = (v1 + v51[11]), (v61 = v60[1]) == 0))
  {
    (*(v37 + 8))(v236, v52);
    goto LABEL_13;
  }

  v177 = *v54;
  v184 = *v56;
  v185._countAndFlagsBits = *v58;
  v180 = *v60;
  v185._object = v59;
  v178 = v57;
  v179 = v61;
  v176 = v55;
  v62 = *MEMORY[0x277CE0A78];
  v182 = v1;
  v183 = v47;
  v181 = *(v235 + 104);
  v181(v231, v62, v232);
  v63 = v233;
  outlined init with copy of HealthDataLogModel(v47, v233, type metadata accessor for SnippetHeaderModel);
  (*(v45 + 56))(v63, 0, 1, v44);
  v64 = v191;
  v65 = *(v191 + 20);
  *(v63 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v186 = v37;
  v66 = *(v64 + 24);
  *(v63 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v67 = v187;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v68);
  v69._countAndFlagsBits = v190;
  v69._object = v67;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v69);

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
  LocalizedStringKey.init(stringInterpolation:)();
  v71 = Text.init(_:tableName:bundle:comment:)();
  v190 = v72;
  v191 = v71;
  v74 = v73;
  v75 = v192;
  v76 = v232;
  v181(v192, *MEMORY[0x277CE0A60], v232);
  v173 = *MEMORY[0x277CE0998];
  v77 = v173;
  v78 = type metadata accessor for Font.Design();
  v169 = v78;
  v79 = *(v78 - 8);
  v172 = *(v79 + 104);
  v174 = v79 + 104;
  v80 = v223;
  v172(v223, v77, v78);
  v81 = *(v79 + 56);
  v170 = v79 + 56;
  v171 = v81;
  v81(v80, 0, 1, v78);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v80, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v82 = *(v235 + 8);
  v235 += 8;
  v181 = v82;
  (v82)(v75, v76);
  v84 = v190;
  v83 = v191;
  v85 = Text.font(_:)();
  v87 = v86;
  LOBYTE(v76) = v88;

  outlined consume of Text.Storage(v83, v84, v74 & 1);

  LODWORD(v254) = static HierarchicalShapeStyle.secondary.getter();
  v89 = Text.foregroundStyle<A>(_:)();
  v91 = v90;
  LOBYTE(v64) = v92;
  outlined consume of Text.Storage(v85, v87, v76 & 1);

  static Font.Weight.semibold.getter();
  v190 = Text.fontWeight(_:)();
  v191 = v93;
  v187 = v94;
  v175 = v95;
  outlined consume of Text.Storage(v89, v91, v64 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v96);
  v97._countAndFlagsBits = v177;
  v97._object = v176;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v97);

  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v98);
  LocalizedStringKey.init(stringInterpolation:)();
  v99 = Text.init(_:tableName:bundle:comment:)();
  v101 = v100;
  LOBYTE(v89) = v102;
  v103 = v223;
  v104 = v169;
  v172(v223, v173, v169);
  v171(v103, 0, 1, v104);
  static Font.system(_:design:weight:)();
  outlined destroy of AppPunchout?(v103, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v105 = Text.font(_:)();
  v107 = v106;
  LOBYTE(v103) = v108;

  outlined consume of Text.Storage(v99, v101, v89 & 1);

  v109 = Text.bold()();
  v111 = v110;
  LOBYTE(v101) = v112;
  v192 = v113;
  outlined consume of Text.Storage(v105, v107, v103 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v114);
  v115._countAndFlagsBits = v184;
  v115._object = v178;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v115);

  v116._countAndFlagsBits = 8236;
  v116._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v116);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v185);

  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v117);
  LocalizedStringKey.init(stringInterpolation:)();
  v118 = Text.init(_:tableName:bundle:comment:)();
  v184 = v119;
  v185._countAndFlagsBits = v118;
  LODWORD(v178) = v120;
  v185._object = v121;
  v256 = MEMORY[0x277D837D0];
  v257 = MEMORY[0x277D63F88];
  v254 = v180;
  v255 = v179;
  (*(v194 + 104))(v193, *MEMORY[0x277D63D58], v195);
  StatusIndicatorView.init(message:type:showIndicator:)();
  v122 = MEMORY[0x277CE0BD0];
  v123 = MEMORY[0x277D638F0];
  v256 = MEMORY[0x277CE0BD0];
  v257 = MEMORY[0x277D638F0];
  v124 = swift_allocObject();
  v253 = v123;
  v254 = v124;
  v125 = v109;
  v176 = v111;
  v177 = v109;
  *(v124 + 16) = v109;
  *(v124 + 24) = v111;
  v126 = v111;
  LODWORD(v230) = v101 & 1;
  *(v124 + 32) = v101 & 1;
  *(v124 + 40) = v192;
  v252 = v122;
  v127 = swift_allocObject();
  v250 = 0;
  v251 = v127;
  v129 = v190;
  v128 = v191;
  v130 = v187;
  *(v127 + 16) = v190;
  *(v127 + 24) = v130;
  LODWORD(v223) = v175 & 1;
  *(v127 + 32) = v175 & 1;
  *(v127 + 40) = v128;
  v248 = 0u;
  v249 = 0u;
  v246 = v122;
  v247 = v123;
  v131 = swift_allocObject();
  v245 = v131;
  v133 = v184;
  countAndFlagsBits = v185._countAndFlagsBits;
  *(v131 + 16) = v185._countAndFlagsBits;
  *(v131 + 24) = v133;
  LODWORD(v195) = v178 & 1;
  *(v131 + 32) = v178 & 1;
  *(v131 + 40) = v185._object;
  v244 = 0;
  v242 = 0u;
  v243 = 0u;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  outlined copy of Text.Storage(v125, v126, v230);

  outlined copy of Text.Storage(v129, v130, v223);

  outlined copy of Text.Storage(countAndFlagsBits, v133, v195);

  v134 = v203;
  FactItemHeroNumberView.init(number:text1:text2:text3:text4:text5:)();
  v136 = v211;
  v135 = v212;
  v137 = v207;
  (*(v211 + 104))(v207, *MEMORY[0x277D62F40], v212);
  v138 = lazy protocol witness table accessor for type Context and conformance Context(&lazy protocol witness table cache variable for type FactItemHeroNumberView and conformance FactItemHeroNumberView, MEMORY[0x277D63E08], MEMORY[0x277D63E00]);
  v139 = v204;
  v140 = v208;
  View.separators(_:isOverride:)();
  (*(v136 + 8))(v137, v135);
  (*(v205 + 8))(v134, v140);
  v254 = v140;
  v255 = v138;
  swift_getOpaqueTypeConformance2();
  v141 = v227;
  v142 = v209;
  View.componentSpacing(top:bottom:)();
  (*(v206 + 8))(v139, v142);
  v212 = type metadata accessor for SnippetHeaderView;
  v143 = v198;
  outlined init with copy of HealthDataLogModel(v233, v198, type metadata accessor for SnippetHeaderView);
  v144 = v228;
  v145 = v229;
  (*(v228 + 16))(v224, v141, v229);
  v146 = v225;
  v147 = v202;
  (*(v225 + 16))(v202, v234, v226);
  v148 = (*(v196 + 80) + 16) & ~*(v196 + 80);
  v149 = (v197 + *(v144 + 80) + v148) & ~*(v144 + 80);
  v150 = (v210 + *(v146 + 80) + v149) & ~*(v146 + 80);
  v151 = swift_allocObject();
  outlined init with take of HealthDataLogModel(v143, v151 + v148, v212);
  (*(v144 + 32))(v151 + v149, v224, v145);
  v152 = v226;
  (*(v146 + 32))(v151 + v150, v147, v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR);
  lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMd, &_s7SwiftUI9TupleViewVy08WellnessB0013SnippetHeaderD0V_AA0D0P0fB0E16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AOtFQOyAhIE10separators_10isOverrideQr0F3Kit14SeparatorStyleO_SbtFQOyAI018FactItemHeroNumberD0V_Qo__Qo_AI015StatusIndicatorD0VtGMR, MEMORY[0x277CE14C8]);
  v153 = v216;
  ComponentStack.init(content:)();
  v154 = v215;
  outlined init with copy of HealthDataLogModel(v182, v215, type metadata accessor for HealthDataLogSnippet);
  v155 = v186;
  v156 = v200;
  v157 = v237;
  (*(v186 + 16))(v200, v236, v237);
  v158 = (*(v213 + 80) + 16) & ~*(v213 + 80);
  v159 = (v214 + *(v155 + 80) + v158) & ~*(v155 + 80);
  v160 = swift_allocObject();
  outlined init with take of HealthDataLogModel(v154, v160 + v158, type metadata accessor for HealthDataLogSnippet);
  v188((v160 + v159), v156, v157);
  v161 = lazy protocol witness table accessor for type TupleView<(SashStandardView, <<opaque return type of View.componentTapped(isNavigation:perform:)>>.0, StatusIndicatorView)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ComponentStack<TupleView<(SnippetHeaderView, <<opaque return type of View.componentSpacing(top:bottom:)>>.0, StatusIndicatorView)>> and conformance ComponentStack<A>, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMd, &_s9SnippetUI14ComponentStackVy05SwiftB09TupleViewVy08WellnessB00a6HeaderG0V_AD0G0PAAE16componentSpacing3top6bottomQr12CoreGraphics7CGFloatV_AQtFQOyAkAE10separators_10isOverrideQr0A3Kit14SeparatorStyleO_SbtFQOyAA018FactItemHeroNumberG0V_Qo__Qo_AA015StatusIndicatorG0VtGGMR, MEMORY[0x277D63B98]);
  v163 = v219;
  v162 = v220;
  View.componentTapped(isNavigation:perform:)();

  (*(v218 + 8))(v153, v163);
  v165 = v221;
  v164 = v222;
  (*(v221 + 16))(v217, v162, v222);
  v254 = v163;
  v255 = v161;
  swift_getOpaqueTypeConformance2();
  v166 = AnyView.init<A>(_:)();
  outlined consume of Text.Storage(v185._countAndFlagsBits, v184, v195);

  outlined consume of Text.Storage(v190, v187, v223);

  outlined consume of Text.Storage(v177, v176, v230);

  (*(v165 + 8))(v162, v164);
  (*(v228 + 8))(v227, v229);
  (*(v225 + 8))(v234, v152);
  outlined destroy of SnippetHeaderModel(v233, type metadata accessor for SnippetHeaderView);
  (v181)(v231, v232);
  (*(v186 + 8))(v236, v157);
  outlined destroy of SnippetHeaderModel(v183, type metadata accessor for SnippetHeaderModel);
  result = v166;
LABEL_15:
  *v238 = result;
  return result;
}