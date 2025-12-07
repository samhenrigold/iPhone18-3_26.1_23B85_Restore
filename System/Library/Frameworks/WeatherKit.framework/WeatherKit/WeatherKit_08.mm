uint64_t WeatherServiceAttribution.serviceName.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

unint64_t sub_23B44368C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B3D4814(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23B4436BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D4860(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23B4436F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3D4814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B443718(uint64_t a1)
{
  v2 = sub_23B44394C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B443754(uint64_t a1)
{
  v2 = sub_23B44394C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherServiceAttribution.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1332E8, &qword_23B516940);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44394C();
  sub_23B50D974();
  v28[1] = 0;
  v12 = v25;
  sub_23B50D7A4();
  if (!v12)
  {
    v14 = v21;
    v13 = v22;
    v16 = v19;
    v15 = v20;
    v28[0] = 1;
    OUTLINED_FUNCTION_2_24(v24, v23, v28);
    v27 = 2;
    OUTLINED_FUNCTION_2_24(v13, v14, &v27);
    v26 = 3;
    OUTLINED_FUNCTION_2_24(v15, v16, &v26);
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B44394C()
{
  result = qword_27E1332F0;
  if (!qword_27E1332F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1332F0);
  }

  return result;
}

uint64_t WeatherServiceAttribution.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1332F8, &qword_23B516948);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44394C();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_1_20();
  v11 = sub_23B50D6E4();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_1_20();
  v13 = sub_23B50D6E4();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_1_20();
  v25 = sub_23B50D6E4();
  v27 = v15;
  v35 = 3;
  v16 = sub_23B50D6E4();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_23B443C50(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_23B443C88(v34);
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceAttribution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B443DD8()
{
  result = qword_27E133300;
  if (!qword_27E133300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133300);
  }

  return result;
}

unint64_t sub_23B443E30()
{
  result = qword_27E133308;
  if (!qword_27E133308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133308);
  }

  return result;
}

unint64_t sub_23B443E88()
{
  result = qword_27E133310;
  if (!qword_27E133310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133310);
  }

  return result;
}

uint64_t sub_23B443EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466574756E696DLL && a2 == 0xEE00747361636572;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4172656874616577 && a2 == 0xED0000737472656CLL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x800000023B535C90 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6369726F74736968 && a2 == 0xEF73746361466C61;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x73697261706D6F63 && a2 == 0xEE00687361486E6FLL)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_23B50D834();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_23B444288(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      v3 = 0x6574756E696DLL;
      goto LABEL_6;
    case 2:
      v3 = 0x796C72756F68;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x696C617551726961;
      break;
    case 5:
      result = 0x4372656874616577;
      break;
    case 6:
      result = 0x4172656874616577;
      break;
    case 7:
      result = 0x6962616C69617661;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x6369726F74736968;
      break;
    case 10:
      result = 0x73697261706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B444418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B443EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B444440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B444280();
  *a1 = result;
  return result;
}

uint64_t sub_23B444468(uint64_t a1)
{
  v2 = sub_23B448E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4444A4(uint64_t a1)
{
  v2 = sub_23B448E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4444E0()
{
  sub_23B3CE608(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, type metadata accessor for CurrentWeather);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast, &qword_27E131C90, &unk_23B514EC0);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_hourlyForecast, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_dailyForecast, &qword_27E131CB0, &qword_23B516B60);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality, &qword_27E131C78, &qword_23B50ED40);
  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges, &qword_27E131EF0, &unk_23B50F220);

  sub_23B398890(v0 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons, &qword_27E131E88, &unk_23B519360);

  return v0;
}

uint64_t sub_23B4445FC()
{
  v0 = sub_23B4444E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B444650(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v50 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  MEMORY[0x28223BE20](v54);
  v53 = &v50 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  MEMORY[0x28223BE20](v55);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v50 - v12;
  v13 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133348, &unk_23B516E30);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B448E08();
  v20 = v58;
  sub_23B50D974();
  v21 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  swift_beginAccess();
  sub_23B445F28(v20 + v21, v15);
  v65 = 0;
  sub_23B3C1D28(&qword_280B42950, type metadata accessor for CurrentWeather, &protocol conformance descriptor for CurrentWeather);
  v22 = v16;
  v23 = v57;
  sub_23B50D7F4();
  if (v23)
  {
    sub_23B3CE608(v15, type metadata accessor for CurrentWeather);
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v25 = v10;
    sub_23B3CE608(v15, type metadata accessor for CurrentWeather);
    v26 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast;
    v27 = v58;
    swift_beginAccess();
    v28 = v56;
    sub_23B3CE510(v27 + v26, v56, &qword_27E131C90, &unk_23B514EC0);
    v64 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    sub_23B3F1C50(&qword_280B41A88, &qword_27E131CA0, &qword_23B5101A0, &protocol conformance descriptor for Forecast<A>);
    sub_23B50D794();
    sub_23B398890(v28, &qword_27E131C90, &unk_23B514EC0);
    v29 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_hourlyForecast;
    v30 = v58;
    swift_beginAccess();
    sub_23B3CE510(v30 + v29, v25, &qword_27E131CA8, &unk_23B50ED70);
    v63 = 2;
    sub_23B3F1C50(&qword_280B41A90, &qword_27E131CA8, &unk_23B50ED70, &protocol conformance descriptor for Forecast<A>);
    sub_23B50D7F4();
    v31 = v17;
    sub_23B398890(v25, &qword_27E131CA8, &unk_23B50ED70);
    v32 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_dailyForecast;
    v33 = v22;
    v34 = v58;
    swift_beginAccess();
    v35 = v34 + v32;
    v36 = v53;
    sub_23B3CE510(v35, v53, &qword_27E131CB0, &qword_23B516B60);
    v62 = 3;
    sub_23B3F1C50(qword_280B41A98, &qword_27E131CB0, &qword_23B516B60, &protocol conformance descriptor for Forecast<A>);
    sub_23B50D7F4();
    sub_23B398890(v36, &qword_27E131CB0, &qword_23B516B60);
    v37 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality;
    v38 = v58;
    swift_beginAccess();
    v39 = v38 + v37;
    v40 = v52;
    sub_23B3CE510(v39, v52, &qword_27E131C78, &qword_23B50ED40);
    v61 = 4;
    type metadata accessor for AirQuality(0);
    sub_23B3C1D28(&qword_280B42658, type metadata accessor for AirQuality, &protocol conformance descriptor for AirQuality);
    sub_23B50D794();
    sub_23B398890(v40, &qword_27E131C78, &qword_23B50ED40);
    v41 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges;
    v42 = v58;
    swift_beginAccess();
    v43 = v42 + v41;
    v44 = v51;
    sub_23B3CE510(v43, v51, &qword_27E131EF0, &unk_23B50F220);
    LOBYTE(v60) = 5;
    type metadata accessor for WeatherChanges(0);
    sub_23B3C1D28(&qword_27E133358, type metadata accessor for WeatherChanges, &protocol conformance descriptor for WeatherChanges);
    sub_23B50D794();
    sub_23B398890(v44, &qword_27E131EF0, &unk_23B50F220);
    v60 = *(v58 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts);
    LOBYTE(v66) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B448F04(&qword_280B41A38, &unk_280B426F8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83948]);
    sub_23B50D794();
    v45 = *(v58 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability + 2);
    LOWORD(v60) = *(v58 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability);
    BYTE2(v60) = v45;
    LOBYTE(v66) = 7;
    sub_23B448E5C();
    sub_23B50D7F4();
    v46 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons;
    v47 = v58;
    swift_beginAccess();
    v48 = v47 + v46;
    v49 = v50;
    sub_23B3CE510(v48, v50, &qword_27E131E88, &unk_23B519360);
    LOBYTE(v66) = 8;
    type metadata accessor for HistoricalComparisons(0);
    sub_23B3C1D28(&qword_27E133360, type metadata accessor for HistoricalComparisons, &protocol conformance descriptor for HistoricalComparisons);
    sub_23B50D794();
    sub_23B398890(v49, &qword_27E131E88, &unk_23B519360);
    v66 = *(v58 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts);
    v59 = 9;
    sub_23B448EB0();

    sub_23B50D794();

    LOBYTE(v66) = 10;
    sub_23B50D784();
    return (*(v31 + 8))(v19, v33);
  }
}

void *sub_23B445198(void *a1)
{
  v2 = v1;
  v68 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v50 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v50 - v13;
  v63 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133370, &qword_23B516E40);
  v65 = *(v15 - 8);
  v66 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v18 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  v77 = v18;
  v61 = v19;
  __swift_storeEnumTagSinglePayload(v2 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality;
  v21 = type metadata accessor for AirQuality(0);
  v73 = v20;
  __swift_storeEnumTagSinglePayload(v2 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges;
  v23 = type metadata accessor for WeatherChanges(0);
  v72 = v22;
  __swift_storeEnumTagSinglePayload(v2 + v22, 1, 1, v23);
  v76 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts;
  *(v2 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts) = 0;
  v24 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons;
  v25 = type metadata accessor for HistoricalComparisons(0);
  v70 = v24;
  __swift_storeEnumTagSinglePayload(v2 + v24, 1, 1, v25);
  v69 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts;
  *(v2 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts) = 0;
  v74 = a1;
  v75 = v2;
  v26 = (v2 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
  *v26 = 0;
  *(v26 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B448E08();
  v67 = v17;
  v27 = v71;
  sub_23B50D964();
  if (v27)
  {
    v29 = v72;
    v28 = v73;
    v32 = v75;
    sub_23B398890(v75 + v77, &qword_27E131C90, &unk_23B514EC0);
    sub_23B398890(v32 + v28, &qword_27E131C78, &qword_23B50ED40);
    sub_23B398890(v32 + v29, &qword_27E131EF0, &unk_23B50F220);

    sub_23B398890(v32 + v70, &qword_27E131E88, &unk_23B519360);

    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    v30 = v62;
    v71 = v21;
    v53 = v23;
    v52 = v25;
    v51 = v26;
    LOBYTE(v78) = 0;
    sub_23B3C1D28(&qword_27E133178, type metadata accessor for CurrentWeather, &protocol conformance descriptor for CurrentWeather);
    v31 = v64;
    sub_23B50D734();
    v34 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
    v35 = v75;
    sub_23B449048(v31, v75 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, type metadata accessor for CurrentWeather);
    LOBYTE(v78) = 1;
    sub_23B3F1C50(&qword_27E133180, &qword_27E131CA0, &qword_23B5101A0, &protocol conformance descriptor for Forecast<A>);
    sub_23B50D6D4();
    v64 = v34;
    v36 = v77;
    swift_beginAccess();
    sub_23B3C2510(v30, v35 + v36, &qword_27E131C90, &unk_23B514EC0);
    swift_endAccess();
    LOBYTE(v78) = 2;
    sub_23B3F1C50(&qword_27E133188, &qword_27E131CA8, &unk_23B50ED70, &protocol conformance descriptor for Forecast<A>);
    v37 = v59;
    sub_23B50D734();
    v39 = v72;
    v38 = v73;
    sub_23B3CE5BC(v37, v35 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_hourlyForecast, &qword_27E131CA8, &unk_23B50ED70);
    LOBYTE(v78) = 3;
    sub_23B3F1C50(&qword_27E133190, &qword_27E131CB0, &qword_23B516B60, &protocol conformance descriptor for Forecast<A>);
    v40 = v57;
    sub_23B50D734();
    sub_23B3CE5BC(v40, v35 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_dailyForecast, &qword_27E131CB0, &qword_23B516B60);
    LOBYTE(v78) = 4;
    sub_23B3C1D28(&qword_27E133198, type metadata accessor for AirQuality, &protocol conformance descriptor for AirQuality);
    v41 = v56;
    sub_23B50D6D4();
    swift_beginAccess();
    sub_23B3C2510(v41, v35 + v38, &qword_27E131C78, &qword_23B50ED40);
    swift_endAccess();
    LOBYTE(v78) = 5;
    sub_23B3C1D28(&qword_27E133378, type metadata accessor for WeatherChanges, &protocol conformance descriptor for WeatherChanges);
    v42 = v55;
    sub_23B50D6D4();
    swift_beginAccess();
    sub_23B3C2510(v42, v35 + v39, &qword_27E131EF0, &unk_23B50F220);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    v79 = 6;
    sub_23B448F04(&qword_27E1331A0, &qword_27E1331A8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83978]);
    sub_23B50D6D4();
    *(v35 + v76) = v78;

    v79 = 7;
    sub_23B448FA0();
    sub_23B50D734();
    v43 = BYTE2(v78);
    v44 = v35 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability;
    *v44 = v78;
    *(v44 + 2) = v43;
    LOBYTE(v78) = 8;
    sub_23B3C1D28(&qword_27E133388, type metadata accessor for HistoricalComparisons, &protocol conformance descriptor for HistoricalComparisons);
    v45 = v54;
    sub_23B50D6D4();
    v46 = v70;
    swift_beginAccess();
    sub_23B3C2510(v45, v35 + v46, &qword_27E131E88, &unk_23B519360);
    swift_endAccess();
    v79 = 9;
    sub_23B448FF4();
    sub_23B50D6D4();
    *(v75 + v69) = v78;

    LOBYTE(v78) = 10;
    v47 = sub_23B50D6C4();
    LOBYTE(v42) = v48;
    (*(v65 + 8))(v67, v66);
    v49 = v51;
    *v51 = v47;
    *(v49 + 8) = v42 & 1;
    __swift_destroy_boxed_opaque_existential_1(v74);
    return v75;
  }

  return v32;
}

void *sub_23B445ED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B44514C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23B445F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B445FC0(uint64_t a1)
{
  v2 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B445F28(a1, v4);
  return WeatherDataModel.currentWeather.setter(v4);
}

uint64_t WeatherDataModel.currentWeather.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_6_10(v3 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
  v4 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  OUTLINED_FUNCTION_27_8(v3 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, v6);
  sub_23B4460B4(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_23B4460B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeather(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*WeatherDataModel.currentWeather.modify())(char **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_19_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_12(v3);
  v4 = type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_3(v4);
  v6 = *(v5 + 64);
  v1[9] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v1[10] = v7;
  v8 = *v0;
  v9 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  v1[11] = v8;
  v1[12] = v9;
  OUTLINED_FUNCTION_16_7(v8 + v9, v1);
  sub_23B445F28(v8 + v9, v7);
  return sub_23B4461D4;
}

void sub_23B4461D4(char **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 11);
  v3 = *(*a1 + 12);
  v5 = *(*a1 + 9);
  v6 = *(*a1 + 10);
  if (a2)
  {
    sub_23B445F28(*(*a1 + 10), v5);
    OUTLINED_FUNCTION_6_10(v4 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
    OUTLINED_FUNCTION_27_8(v4 + v3, (v2 + 3));
    sub_23B4460B4(v5, v4 + v3);
    swift_endAccess();
    OUTLINED_FUNCTION_0_30();
    sub_23B3CE608(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_6_10(v4 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
    OUTLINED_FUNCTION_27_8(v4 + v3, (v2 + 6));
    sub_23B4460B4(v6, v4 + v3);
    swift_endAccess();
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_23B4462B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  OUTLINED_FUNCTION_16_7(v8 + *a1, v11);
  return sub_23B3CE510(v8 + v9, a4, a2, a3);
}

uint64_t sub_23B446368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *v4;
  OUTLINED_FUNCTION_6_10(v8 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
  v10 = *v9;
  OUTLINED_FUNCTION_27_8(v8 + *v9, v12);
  sub_23B3C2510(a1, v8 + v10, a3, a4);
  return swift_endAccess();
}

void WeatherDataModel.minuteForecast.modify()
{
  OUTLINED_FUNCTION_38_4();
  v0 = OUTLINED_FUNCTION_19_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_12(v1);
  v2 = OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_3(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_24_8(v4);
  v6 = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_9_18(v6);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_39_5();
}

void sub_23B4464A0()
{
  OUTLINED_FUNCTION_38_4();
  v3 = v2;
  v4 = v1;
  v5 = *v0;
  v7 = *(*v0 + 88);
  v6 = *(*v0 + 96);
  v8 = *(*v0 + 72);
  v9 = *(*v0 + 80);
  if (v10)
  {
    sub_23B3CE510(*(*v0 + 80), v8, v1, v2);
    OUTLINED_FUNCTION_6_10(v7 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
    OUTLINED_FUNCTION_27_8(v7 + v6, v5 + 24);
    sub_23B3C2510(v8, v7 + v6, v4, v3);
    swift_endAccess();
    sub_23B398890(v9, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_6_10(v7 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash);
    OUTLINED_FUNCTION_27_8(v7 + v6, v5 + 48);
    sub_23B3C2510(v9, v7 + v6, v4, v3);
    swift_endAccess();
  }

  free(v9);
  free(v8);
  OUTLINED_FUNCTION_39_5();

  free(v11);
}

void WeatherDataModel.hourlyForecast.modify()
{
  OUTLINED_FUNCTION_38_4();
  v0 = OUTLINED_FUNCTION_19_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_12(v1);
  v2 = OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_3(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_24_8(v4);
  v6 = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_9_18(v6);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_39_5();
}

void WeatherDataModel.dailyForecast.modify()
{
  OUTLINED_FUNCTION_38_4();
  v0 = OUTLINED_FUNCTION_19_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_12(v1);
  v2 = OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_3(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_24_8(v4);
  v6 = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_9_18(v6);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_39_5();
}

void WeatherDataModel.airQuality.modify()
{
  OUTLINED_FUNCTION_38_4();
  v0 = OUTLINED_FUNCTION_19_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_12(v1);
  v2 = OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_3(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_24_8(v4);
  v6 = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_9_18(v6);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_23B4468EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13();
  sub_23B3CE510(a1, v7, a5, a6);
  return a7(v7);
}

void WeatherDataModel.weatherChanges.modify()
{
  OUTLINED_FUNCTION_38_4();
  v0 = OUTLINED_FUNCTION_19_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_12(v1);
  v2 = OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_3(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_24_8(v4);
  v6 = __swift_coroFrameAllocStub(v5);
  OUTLINED_FUNCTION_9_18(v6);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_23B446A5C@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherDataModel.weatherAlerts.getter();
  *a1 = result;
  return result;
}

uint64_t WeatherDataModel.weatherAlerts.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v2 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts) = a1;
}

uint64_t (*WeatherDataModel.weatherAlerts.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = *(*v1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts);

  return sub_23B446B54;
}

uint64_t sub_23B446B54(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return WeatherDataModel.weatherAlerts.setter(*a1);
  }

  WeatherDataModel.weatherAlerts.setter(v2);
}

void WeatherDataModel.availability.getter(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 2);
  *a1 = v3;
  *(a1 + 2) = v2;
}

void sub_23B446BD0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  WeatherDataModel.availability.getter(&v4);
  v3 = v5;
  *a2 = v4;
  *(a2 + 2) = v3;
}

__int16 *sub_23B446C1C(__int16 *a1)
{
  v1 = *(a1 + 2);
  v3 = *a1;
  v4 = v1;
  return WeatherDataModel.availability.setter(&v3);
}

__int16 *WeatherDataModel.availability.setter(__int16 *result)
{
  v2 = *result;
  v3 = *(result + 2);
  v4 = *v1;
  v5 = *v1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v4 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability;
  *v6 = v2;
  *(v6 + 2) = v3;
  return result;
}

uint64_t (*WeatherDataModel.availability.modify(uint64_t a1))(uint64_t result)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_availability;
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = v2 + v3;
  LOWORD(v3) = *v4;
  LOBYTE(v4) = *(v4 + 2);
  *(a1 + 16) = v3;
  *(a1 + 18) = v4;
  return sub_23B446CDC;
}

uint64_t sub_23B446CDC(uint64_t result)
{
  v1 = *result + *(result + 8);
  v2 = *(result + 16);
  v3 = *(result + 18);
  v4 = *result + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  *v4 = 0;
  *(v4 + 8) = 1;
  *v1 = v2;
  *(v1 + 2) = v3;
  return result;
}

uint64_t sub_23B446D44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23B3CE510(a1, &v6 - v3, &qword_27E131E88, &unk_23B519360);
  return sub_23B446368(v4, &OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons, &qword_27E131E88, &unk_23B519360);
}

uint64_t sub_23B446DFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = WeatherDataModel.historicalFacts.getter(v4);
  *a2 = v4[0];
  return result;
}

uint64_t sub_23B446E40(uint64_t *a1)
{
  v2 = *a1;

  return sub_23B446E7C(&v2);
}

uint64_t sub_23B446E7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v3 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts) = v2;
}

void WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:)()
{
  OUTLINED_FUNCTION_21();
  v52 = v3;
  v53 = v4;
  v51 = v5;
  v48 = v6;
  v49 = v7;
  v54 = v9;
  v55 = v8;
  v11 = v10;
  v47 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v50 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v46 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v45 = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_3(v22);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13();
  v28 = type metadata accessor for CurrentWeather(0);
  v29 = OUTLINED_FUNCTION_3(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27();
  v32 = v31 - v30;
  sub_23B445F28(v11, v31 - v30);
  sub_23B3CE510(v55, v1, &qword_27E131C90, &unk_23B514EC0);
  v33 = v48;
  sub_23B3CE510(v48, v25, &qword_27E131CA8, &unk_23B50ED70);
  v34 = v49;
  sub_23B3CE510(v49, v2, &qword_27E131CB0, &qword_23B516B60);
  v35 = v51;
  v36 = v46;
  sub_23B3CE510(v51, v46, &qword_27E131C78, &qword_23B50ED40);
  v37 = v52;
  sub_23B3CE510(v52, v0, &qword_27E131EF0, &unk_23B50F220);
  v38 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_31_5(v50, v39, v40, v38);
  v56 = 0;
  type metadata accessor for WeatherDataModel.Storage(0);
  swift_allocObject();
  OUTLINED_FUNCTION_34_8();
  v42 = sub_23B3C2118(v32, v1, v25, v45, v36, v0, v53, v41, v44, v45);
  sub_23B398890(v37, &qword_27E131EF0, &unk_23B50F220);
  sub_23B398890(v35, &qword_27E131C78, &qword_23B50ED40);
  sub_23B398890(v34, &qword_27E131CB0, &qword_23B516B60);
  sub_23B398890(v33, &qword_27E131CA8, &unk_23B50ED70);
  sub_23B398890(v55, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_0_30();
  sub_23B3CE608(v47, v43);
  *v54 = v42;
  OUTLINED_FUNCTION_20();
}

void WeatherDataModel.init(currentWeather:hourlyForecast:dailyForecast:)()
{
  OUTLINED_FUNCTION_21();
  v49 = v2;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_21_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_3(v16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v49 - v26;
  v28 = type metadata accessor for CurrentWeather(0);
  v29 = OUTLINED_FUNCTION_3(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27();
  v32 = v31 - v30;
  sub_23B445F28(v7, v31 - v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_31_5(v27, v34, v35, v33);
  sub_23B3CE510(v5, v23, &qword_27E131CA8, &unk_23B50ED70);
  v36 = v49;
  sub_23B3CE510(v49, v19, &qword_27E131CB0, &qword_23B516B60);
  v37 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_31_5(v15, v38, v39, v37);
  v40 = type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_31_5(v1, v41, v42, v40);
  v43 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_31_5(v0, v44, v45, v43);
  v51 = 0;
  type metadata accessor for WeatherDataModel.Storage(0);
  swift_allocObject();
  OUTLINED_FUNCTION_34_8();
  v47 = sub_23B3C2118(v32, v27, v23, v19, v15, v1, 0, v46, v49, v50);
  sub_23B398890(v36, &qword_27E131CB0, &qword_23B516B60);
  sub_23B398890(v5, &qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_0_30();
  sub_23B3CE608(v7, v48);
  *v50 = v47;
  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B44757C(uint64_t a1)
{
  v2 = sub_23B44776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4475B8(uint64_t a1)
{
  v2 = sub_23B44776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133318, &qword_23B516B68);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44776C();

  sub_23B50D974();
  v13[1] = v9;
  type metadata accessor for WeatherDataModel.Storage(0);
  OUTLINED_FUNCTION_10_16();
  sub_23B3C1D28(v10, v11, &unk_23B516DB4);
  sub_23B50D7F4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B44776C()
{
  result = qword_280B42688;
  if (!qword_280B42688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42688);
  }

  return result;
}

uint64_t WeatherDataModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133328, &qword_23B516B70);
  OUTLINED_FUNCTION_5();
  v8 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44776C();
  sub_23B50D964();
  if (!v2)
  {
    type metadata accessor for WeatherDataModel.Storage(0);
    OUTLINED_FUNCTION_10_16();
    sub_23B3C1D28(v10, v11, &unk_23B516D8C);
    sub_23B50D734();
    (*(v8 + 8))(v3, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static WeatherDataModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  v4 = *a1 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  if (*(v4 + 8) == 1)
  {
    sub_23B50D8C4();
    WeatherDataModel.hash(into:)();
    *v4 = sub_23B50D914();
    *(v4 + 8) = 0;
    v3 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_comparisonHash;
  }

  v5 = v2 + v3;
  if (*(v2 + v3 + 8) == 1)
  {
    sub_23B50D8C4();
    WeatherDataModel.hash(into:)();
    v6 = sub_23B50D914();
    *v5 = v6;
    *(v5 + 8) = 0;
    v7 = *(v4 + 8) ^ 1;
  }

  else
  {
    v6 = *v5;
    v7 = 1;
  }

  return v7 & (*v4 == v6);
}

uint64_t WeatherDataModel.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherDataModel.hash(into:)();
  return sub_23B50D914();
}

void WeatherDataModel.hash(into:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v10);
  v77 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v13 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_3(v21);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  v31 = type metadata accessor for CurrentWeather(0);
  v32 = OUTLINED_FUNCTION_3(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27();
  v35 = v34 - v33;
  v36 = *v2;
  v37 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, &v86);
  sub_23B445F28(v36 + v37, v35);
  CurrentWeather.hash(into:)(v4);
  OUTLINED_FUNCTION_0_30();
  sub_23B3CE608(v35, v38);
  v39 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast;
  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast, &v85);
  sub_23B3CE510(v36 + v39, v30, &qword_27E131C90, &unk_23B514EC0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    sub_23B3CE5BC(v30, v1, &qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_84();
    v40 = OUTLINED_FUNCTION_36_4();
    sub_23B448604(v40, v41, &qword_27E131CA0, &qword_23B5101A0);
    sub_23B398890(v1, &qword_27E131CA0, &qword_23B5101A0);
  }

  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_hourlyForecast, &v84);
  OUTLINED_FUNCTION_15_11();
  sub_23B3CE510(v42, v43, v44, v45);
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_15_11();
  sub_23B448604(v46, v47, v48, v49);
  OUTLINED_FUNCTION_26_8(v24);
  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_dailyForecast, &v83);
  OUTLINED_FUNCTION_15_11();
  sub_23B3CE510(v50, v51, v52, v53);
  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_15_11();
  sub_23B448604(v54, v55, v56, v57);
  OUTLINED_FUNCTION_26_8(v20);
  v58 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality;
  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality, &v82);
  v59 = v36 + v58;
  v60 = v76;
  sub_23B3CE510(v59, v76, &qword_27E131C78, &qword_23B50ED40);
  if (__swift_getEnumTagSinglePayload(v60, 1, v77) == 1)
  {
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v61 = v75;
    sub_23B449048(v60, v75, type metadata accessor for AirQuality);
    OUTLINED_FUNCTION_84();
    AirQuality.hash(into:)();
    OUTLINED_FUNCTION_11_11();
    sub_23B3CE608(v61, v62);
  }

  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges, &v81);
  v63 = v78;
  OUTLINED_FUNCTION_15_11();
  sub_23B3CE510(v64, v65, v66, v67);
  sub_23B44898C(v4);
  OUTLINED_FUNCTION_26_8(v63);
  v68 = *(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts);
  if (v68)
  {
    OUTLINED_FUNCTION_84();

    sub_23B40A134(v4, v68);
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  sub_23B3E500C();
  sub_23B3E500C();
  sub_23B3E500C();
  OUTLINED_FUNCTION_16_7(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalComparisons, &v80);
  v69 = v79;
  OUTLINED_FUNCTION_15_11();
  sub_23B3CE510(v70, v71, v72, v73);
  sub_23B448724(v4);
  OUTLINED_FUNCTION_26_8(v69);
  if (*(v36 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_historicalFacts))
  {
    OUTLINED_FUNCTION_84();

    sub_23B40957C();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B4480AC(uint64_t a1)
{
  sub_23B50D8C4();
  WeatherDataModel.hash(into:)();
  return sub_23B50D914();
}

void WeatherDataModel.isExpired.getter()
{
  OUTLINED_FUNCTION_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52();
  v43 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_13();
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v13 = type metadata accessor for CurrentWeather(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = *v0;
  v19 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather;
  OUTLINED_FUNCTION_16_7(v18 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_currentWeather, &v47);
  sub_23B445F28(v18 + v19, v17);
  sub_23B50B9D4();
  sub_23B50B994();
  v20 = *(v14 + 144);
  v41 = type metadata accessor for WeatherMetadata(0);
  v21 = v20 + *(v41 + 20);
  v22 = sub_23B3C1D28(&qword_280B43110, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  OUTLINED_FUNCTION_12_12(v22, v17 + v21);
  v23 = *(v11 + 8);
  v24 = OUTLINED_FUNCTION_36();
  v23(v24);
  OUTLINED_FUNCTION_0_30();
  sub_23B3CE608(v17, v25);
  v26 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality;
  OUTLINED_FUNCTION_16_7(v18 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_airQuality, &v46);
  sub_23B3CE510(v18 + v26, v1, &qword_27E131C78, &qword_23B50ED40);
  v27 = type metadata accessor for AirQuality(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v27) == 1)
  {
    sub_23B398890(v1, &qword_27E131C78, &qword_23B50ED40);
  }

  else
  {
    v28 = sub_23B50B994();
    OUTLINED_FUNCTION_12_12(v28, v1 + *(v27 + 68) + *(v41 + 20));
    v29 = OUTLINED_FUNCTION_36();
    v23(v29);
    OUTLINED_FUNCTION_11_11();
    sub_23B3CE608(v1, v30);
  }

  v31 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast;
  OUTLINED_FUNCTION_16_7(v18 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_minuteForecast, &v45);
  sub_23B3CE510(v18 + v31, v42, &qword_27E131C90, &unk_23B514EC0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v32) == 1)
  {
    sub_23B398890(v42, &qword_27E131C90, &unk_23B514EC0);
  }

  else
  {
    v33 = sub_23B50B994();
    OUTLINED_FUNCTION_12_12(v33, v42 + *(v32 + 52) + *(v41 + 20));
    v34 = OUTLINED_FUNCTION_36();
    v23(v34);
    sub_23B398890(v42, &qword_27E131CA0, &qword_23B5101A0);
  }

  if (*(v18 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherAlerts))
  {

    Array<A>.isExpired.getter();
  }

  v35 = OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges;
  OUTLINED_FUNCTION_16_7(v18 + OBJC_IVAR____TtCV10WeatherKit16WeatherDataModelP33_F7CB3AD3091A0ACC4A7EE9D64C438A297Storage_weatherChanges, &v44);
  sub_23B3CE510(v18 + v35, v43, &qword_27E131EF0, &unk_23B50F220);
  v36 = type metadata accessor for WeatherChanges(0);
  if (__swift_getEnumTagSinglePayload(v43, 1, v36) == 1)
  {
    sub_23B398890(v43, &qword_27E131EF0, &unk_23B50F220);
  }

  else
  {
    v37 = sub_23B50B994();
    OUTLINED_FUNCTION_12_12(v37, v43 + *(v36 + 20) + *(v41 + 20));
    v38 = OUTLINED_FUNCTION_36();
    v23(v38);
    v39 = OUTLINED_FUNCTION_36_4();
    sub_23B3CE608(v39, v40);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B448604(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  a2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  WeatherMetadata.hash(into:)();
  if (*(v4 + v7[14] + 8))
  {
    OUTLINED_FUNCTION_84();
    sub_23B50D1C4();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v4 + v7[15]))
  {
    OUTLINED_FUNCTION_84();
    sub_23B4083F0();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v4 + v7[16]))
  {
    OUTLINED_FUNCTION_84();
    sub_23B408004();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  v8 = (v4 + v7[17]);
  if (*(v8 + 16) == 1)
  {
    return OUTLINED_FUNCTION_83();
  }

  v11 = *v8;
  v10 = v8[1];
  OUTLINED_FUNCTION_84();
  if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x23EE9DB70](v12);
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x23EE9DB70](v13);
}

uint64_t sub_23B448724(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HistoricalComparisons(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E88, &unk_23B519360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_23B3CE510(v2, &v14 - v7, &qword_27E131E88, &unk_23B519360);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return sub_23B50D8E4();
  }

  sub_23B449048(v8, v5, type metadata accessor for HistoricalComparisons);
  sub_23B50D8E4();
  sub_23B408824();
  v10 = &v5[*(v3 + 20)];
  sub_23B50AD24();
  sub_23B3C1D28(&qword_280B42B48, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v11 = type metadata accessor for WeatherMetadata(0);
  sub_23B50D0E4();
  v12 = *&v10[v11[6]];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v12);
  v13 = *&v10[v11[7]];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v13);
  if (*&v10[v11[8]])
  {
    sub_23B50D8E4();
    sub_23B42E190();
  }

  else
  {
    sub_23B50D8E4();
  }

  return sub_23B3CE608(v5, type metadata accessor for HistoricalComparisons);
}

uint64_t sub_23B44898C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WeatherChanges(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_23B3CE510(v2, &v14 - v7, &qword_27E131EF0, &unk_23B50F220);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return sub_23B50D8E4();
  }

  sub_23B449048(v8, v5, type metadata accessor for WeatherChanges);
  sub_23B50D8E4();
  sub_23B40A160();
  v10 = &v5[*(v3 + 20)];
  sub_23B50AD24();
  sub_23B3C1D28(&qword_280B42B48, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v11 = type metadata accessor for WeatherMetadata(0);
  sub_23B50D0E4();
  v12 = *&v10[v11[6]];
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v12);
  v13 = *&v10[v11[7]];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v13);
  if (*&v10[v11[8]])
  {
    sub_23B50D8E4();
    sub_23B42E190();
  }

  else
  {
    sub_23B50D8E4();
  }

  return sub_23B3CE608(v5, type metadata accessor for WeatherChanges);
}

unint64_t sub_23B448BF8()
{
  result = qword_27E133338;
  if (!qword_27E133338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133338);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataModel.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_23B448D04()
{
  result = qword_27E133340;
  if (!qword_27E133340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133340);
  }

  return result;
}

unint64_t sub_23B448D5C()
{
  result = qword_280B42678;
  if (!qword_280B42678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42678);
  }

  return result;
}

unint64_t sub_23B448DB4()
{
  result = qword_280B42680;
  if (!qword_280B42680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42680);
  }

  return result;
}

unint64_t sub_23B448E08()
{
  result = qword_27E133350;
  if (!qword_27E133350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133350);
  }

  return result;
}

unint64_t sub_23B448E5C()
{
  result = qword_280B42870;
  if (!qword_280B42870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42870);
  }

  return result;
}

unint64_t sub_23B448EB0()
{
  result = qword_27E133368;
  if (!qword_27E133368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133368);
  }

  return result;
}

uint64_t sub_23B448F04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B3C1D28(a2, type metadata accessor for WeatherAlert, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B448FA0()
{
  result = qword_27E133380;
  if (!qword_27E133380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133380);
  }

  return result;
}

unint64_t sub_23B448FF4()
{
  result = qword_27E133390;
  if (!qword_27E133390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133390);
  }

  return result;
}

uint64_t sub_23B449048(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WeatherDataModel.Storage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherDataModel.Storage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B44920C()
{
  result = qword_27E133398;
  if (!qword_27E133398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133398);
  }

  return result;
}

unint64_t sub_23B449264()
{
  result = qword_27E1333A0;
  if (!qword_27E1333A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1333A0);
  }

  return result;
}

unint64_t sub_23B4492BC()
{
  result = qword_27E1333A8;
  if (!qword_27E1333A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1333A8);
  }

  return result;
}

uint64_t sub_23B449340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  sub_23B39E56C(a1, a5, a2, a3);
  type metadata accessor for HistoricalComparison(0);

  return swift_storeEnumTagMultiPayload();
}

void *sub_23B449398()
{
  type metadata accessor for MockDataConstants();
  swift_allocObject();
  result = sub_23B4493D4();
  qword_27E15A728 = result;
  return result;
}

void *sub_23B4493D4()
{
  v1 = sub_23B50AE64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v81 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_23B50AE84();
  v4 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v86 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = sub_23B50AD24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v69 - v17;
  MEMORY[0x28223BE20](v18);
  v75 = &v69 - v19;
  MEMORY[0x28223BE20](v20);
  v74 = &v69 - v21;
  MEMORY[0x28223BE20](v22);
  v73 = &v69 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  v27 = 0;
  *(v0 + 40) = xmmword_23B516F50;
  v69 = v0;
  *(v0 + 56) = 60;
  v70 = *MEMORY[0x277CC9968];
  v83 = (v2 + 8);
  v84 = (v2 + 104);
  v82 = (v4 + 8);
  v28 = (v14 + 32);
  v79 = (v14 + 16);
  v29 = MEMORY[0x277D84F90];
  v78 = v14 + 8;
  for (i = v1; ; v1 = i)
  {
    v30 = v81;
    if (v27 == 10)
    {
      break;
    }

    sub_23B50AE44();
    (*v84)(v30, v70, v1);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27E15A730);
    sub_23B50AE24();
    (*v83)(v30, v1);
    (*v82)(v86, v85);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_23B3CF54C(v12);
      if (qword_27E131C08 != -1)
      {
        swift_once();
      }

      v36 = sub_23B50CDF4();
      __swift_project_value_buffer(v36, qword_27E15A710);
      v37 = sub_23B50CDD4();
      v38 = sub_23B50D4B4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_23B38D000, v37, v38, "Failed to generate date", v39, 2u);
        MEMORY[0x23EE9E260](v39, -1, -1);
      }

      break;
    }

    v31 = *v28;
    (*v28)(v26, v12, v13);
    (*v79)(v73, v26, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F562C(0, *(v29 + 16) + 1, 1, v29);
      v29 = v34;
    }

    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_23B4F562C(v32 > 1, v33 + 1, 1, v29);
      v29 = v35;
    }

    (*(v14 + 8))(v26, v13);
    *(v29 + 16) = v33 + 1;
    v31((v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v33), v73, v13);
    ++v27;
  }

  v40 = 0;
  v69[2] = v29;
  v41 = *MEMORY[0x277CC9980];
  v42 = MEMORY[0x277D84F90];
  while (v40 != 24)
  {
    sub_23B50AE44();
    (*v84)(v30, v41, v1);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27E15A730);
    v43 = v71;
    sub_23B50AE24();
    (*v83)(v30, v1);
    (*v82)(v86, v85);
    if (__swift_getEnumTagSinglePayload(v43, 1, v13) == 1)
    {
      sub_23B3CF54C(v43);
      if (qword_27E131C08 != -1)
      {
        swift_once();
      }

      v50 = sub_23B50CDF4();
      __swift_project_value_buffer(v50, qword_27E15A710);
      v51 = sub_23B50CDD4();
      v52 = sub_23B50D4B4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_23B38D000, v51, v52, "Failed to generate date", v53, 2u);
        MEMORY[0x23EE9E260](v53, -1, -1);
      }

      break;
    }

    v44 = *v28;
    v45 = v74;
    (*v28)(v74, v43, v13);
    (*v79)(v75, v45, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F562C(0, *(v42 + 16) + 1, 1, v42);
      v42 = v48;
    }

    v47 = *(v42 + 16);
    v46 = *(v42 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_23B4F562C(v46 > 1, v47 + 1, 1, v42);
      v42 = v49;
    }

    (*(v14 + 8))(v74, v13);
    *(v42 + 16) = v47 + 1;
    v44((v42 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v47), v75, v13);
    ++v40;
    v1 = i;
    v30 = v81;
  }

  v54 = 0;
  v69[3] = v42;
  v55 = *MEMORY[0x277CC99A0];
  v56 = MEMORY[0x277D84F90];
  while (v54 != 60)
  {
    sub_23B50AE44();
    (*v84)(v30, v55, v1);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27E15A730);
    v57 = v72;
    sub_23B50AE24();
    (*v83)(v30, v1);
    (*v82)(v86, v85);
    if (__swift_getEnumTagSinglePayload(v57, 1, v13) == 1)
    {
      sub_23B3CF54C(v57);
      if (qword_27E131C08 != -1)
      {
        swift_once();
      }

      v64 = sub_23B50CDF4();
      __swift_project_value_buffer(v64, qword_27E15A710);
      v65 = sub_23B50CDD4();
      v66 = sub_23B50D4B4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_23B38D000, v65, v66, "Failed to generate minute date.", v67, 2u);
        MEMORY[0x23EE9E260](v67, -1, -1);
      }

      break;
    }

    v58 = *v28;
    v59 = v76;
    (*v28)(v76, v57, v13);
    (*v79)(v77, v59, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F562C(0, *(v56 + 16) + 1, 1, v56);
      v56 = v62;
    }

    v61 = *(v56 + 16);
    v60 = *(v56 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_23B4F562C(v60 > 1, v61 + 1, 1, v56);
      v56 = v63;
    }

    (*(v14 + 8))(v76, v13);
    *(v56 + 16) = v61 + 1;
    v58((v56 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v61), v77, v13);
    ++v54;
    v1 = i;
    v30 = v81;
  }

  result = v69;
  v69[4] = v56;
  return result;
}

uint64_t sub_23B449F30()
{
  v0 = sub_23B50AD24();
  __swift_allocate_value_buffer(v0, qword_27E15A730);
  __swift_project_value_buffer(v0, qword_27E15A730);
  sub_23B50B9D4();
  return sub_23B50B994();
}

uint64_t sub_23B449FAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = a3;
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = sub_23B50AE64();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v30 = sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v28 - v25;
  __swift_allocate_value_buffer(v4, a2);
  v29 = __swift_project_value_buffer(v4, a2);
  sub_23B50AE44();
  (*(v13 + 104))(v17, *MEMORY[0x277CC9968], v11);
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50AE24();
  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v11);
  (*(v19 + 8))(v23, v30);
  result = __swift_getEnumTagSinglePayload(v26, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v29, v26, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B44A270()
{

  return v0;
}

uint64_t sub_23B44A2A0()
{
  sub_23B44A270();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23B44A2F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F576863756DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573726F77 && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667187 && a2 == 0xE400000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726574746562 && a2 == 0xE600000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x747465426863756DLL && a2 == 0xEA00000000007265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B44A4E8(char a1)
{
  result = 0x73726F576863756DLL;
  switch(a1)
  {
    case 1:
      result = 0x6573726F77;
      break;
    case 2:
      result = 1701667187;
      break;
    case 3:
      result = 0x726574746562;
      break;
    case 4:
      result = 0x747465426863756DLL;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B44A594(uint64_t a1)
{
  v2 = sub_23B44AF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A5D0(uint64_t a1)
{
  v2 = sub_23B44AF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B44A2F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B44A63C(uint64_t a1)
{
  v2 = sub_23B44AE10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A678(uint64_t a1)
{
  v2 = sub_23B44AE10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A6B4(uint64_t a1)
{
  v2 = sub_23B44AEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A6F0(uint64_t a1)
{
  v2 = sub_23B44AEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A72C(uint64_t a1)
{
  v2 = sub_23B44B008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A768(uint64_t a1)
{
  v2 = sub_23B44B008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A7A4(uint64_t a1)
{
  v2 = sub_23B44AF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A7E0(uint64_t a1)
{
  v2 = sub_23B44AF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A81C(uint64_t a1)
{
  v2 = sub_23B44AE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A858(uint64_t a1)
{
  v2 = sub_23B44AE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44A894(uint64_t a1)
{
  v2 = sub_23B44AFB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44A8D0(uint64_t a1)
{
  v2 = sub_23B44AFB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AirQualityPreviousDayComparison.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333B0, &qword_23B516FB0);
  OUTLINED_FUNCTION_5();
  v52 = v4;
  v53 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v51 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333B8, &qword_23B516FB8);
  OUTLINED_FUNCTION_5();
  v49 = v8;
  v50 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v48 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333C0, &qword_23B516FC0);
  OUTLINED_FUNCTION_5();
  v46 = v12;
  v47 = v11;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v45 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333C8, &qword_23B516FC8);
  OUTLINED_FUNCTION_5();
  v43 = v16;
  v44 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333D0, &qword_23B516FD0);
  OUTLINED_FUNCTION_5();
  v40 = v20;
  v41 = v19;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333D8, &qword_23B516FD8);
  OUTLINED_FUNCTION_5();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1333E0, &qword_23B516FE0);
  OUTLINED_FUNCTION_5();
  v30 = v29;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v38 - v32;
  v34 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44AE10();
  sub_23B50D974();
  switch(v34)
  {
    case 1:
      v55[1] = 1;
      sub_23B44AFB4();
      v34 = v54;
      sub_23B50D764();
      (*(v40 + 8))(v23, v41);
      return (*(v30 + 8))(v33, v34);
    case 2:
      v56 = 2;
      sub_23B44AF60();
      v28 = v42;
      OUTLINED_FUNCTION_1_21(&type metadata for AirQualityPreviousDayComparison.SameCodingKeys, &v56);
      v36 = v43;
      v35 = v44;
      goto LABEL_8;
    case 3:
      v57 = 3;
      sub_23B44AF0C();
      v28 = v45;
      OUTLINED_FUNCTION_1_21(&type metadata for AirQualityPreviousDayComparison.BetterCodingKeys, &v57);
      v36 = v46;
      v35 = v47;
      goto LABEL_8;
    case 4:
      v58 = 4;
      sub_23B44AEB8();
      v28 = v48;
      OUTLINED_FUNCTION_1_21(&type metadata for AirQualityPreviousDayComparison.MuchBetterCodingKeys, &v58);
      v36 = v49;
      v35 = v50;
      goto LABEL_8;
    case 5:
      v59 = 5;
      sub_23B44AE64();
      v28 = v51;
      OUTLINED_FUNCTION_1_21(&type metadata for AirQualityPreviousDayComparison.UnknownCodingKeys, &v59);
      v36 = v52;
      v35 = v53;
      goto LABEL_8;
    default:
      v55[0] = 0;
      sub_23B44B008();
      OUTLINED_FUNCTION_1_21(&type metadata for AirQualityPreviousDayComparison.MuchWorseCodingKeys, v55);
      v36 = v38;
      v35 = v39;
LABEL_8:
      (*(v36 + 8))(v28, v35);
      return (*(v30 + 8))(v33, v34);
  }
}

unint64_t sub_23B44AE10()
{
  result = qword_280B41CA0[0];
  if (!qword_280B41CA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B41CA0);
  }

  return result;
}

unint64_t sub_23B44AE64()
{
  result = qword_280B41C58;
  if (!qword_280B41C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C58);
  }

  return result;
}

unint64_t sub_23B44AEB8()
{
  result = qword_27E1333E8;
  if (!qword_27E1333E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1333E8);
  }

  return result;
}

unint64_t sub_23B44AF0C()
{
  result = qword_27E1333F0;
  if (!qword_27E1333F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1333F0);
  }

  return result;
}

unint64_t sub_23B44AF60()
{
  result = qword_27E1333F8;
  if (!qword_27E1333F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1333F8);
  }

  return result;
}

unint64_t sub_23B44AFB4()
{
  result = qword_27E133400;
  if (!qword_27E133400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133400);
  }

  return result;
}

unint64_t sub_23B44B008()
{
  result = qword_27E133408;
  if (!qword_27E133408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133408);
  }

  return result;
}

uint64_t AirQualityPreviousDayComparison.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133410, &qword_23B516FE8);
  OUTLINED_FUNCTION_5();
  v75 = v3;
  v76 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v77 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133418, &qword_23B516FF0);
  OUTLINED_FUNCTION_5();
  v73 = v7;
  v74 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v82 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133420, &qword_23B516FF8);
  OUTLINED_FUNCTION_5();
  v71 = v12;
  v72 = v11;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v78 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133428, &qword_23B517000);
  OUTLINED_FUNCTION_5();
  v69 = v16;
  v70 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v81 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133430, &qword_23B517008);
  OUTLINED_FUNCTION_5();
  v67 = v20;
  v68 = v19;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133438, &qword_23B517010);
  OUTLINED_FUNCTION_5();
  v66 = v25;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133440, &unk_23B517018);
  OUTLINED_FUNCTION_5();
  v80 = v30;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44AE10();
  v34 = v83;
  sub_23B50D964();
  v83 = v34;
  if (v34)
  {
LABEL_12:
    v57 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v62 = v28;
  v61 = v24;
  v63 = v23;
  v64 = a1;
  v35 = v81;
  v36 = v82;
  v37 = v80;
  v65 = v33;
  sub_23B50D744();
  result = sub_23B40D8C8();
  v42 = v29;
  if (v40 == v41 >> 1)
  {
    v43 = v37;
LABEL_10:
    v52 = sub_23B50D5F4();
    v53 = swift_allocError();
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v55 = &type metadata for AirQualityPreviousDayComparison;
    v56 = v65;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v52 - 8) + 104))(v55, *MEMORY[0x277D84160], v52);
    v83 = v53;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v56, v42);
LABEL_11:
    a1 = v64;
    goto LABEL_12;
  }

  if (v40 < (v41 >> 1))
  {
    v44 = *(v39 + v40);
    sub_23B40D8C4();
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v79;
      v50 = v65;
      switch(v44)
      {
        case 1:
          v85 = 1;
          sub_23B44AFB4();
          v35 = v63;
          OUTLINED_FUNCTION_3_29(&type metadata for AirQualityPreviousDayComparison.WorseCodingKeys, &v85);
          v83 = 0;
          swift_unknownObjectRelease();
          v60 = v67;
          v59 = v68;
          goto LABEL_25;
        case 2:
          v86 = 2;
          sub_23B44AF60();
          OUTLINED_FUNCTION_3_29(&type metadata for AirQualityPreviousDayComparison.SameCodingKeys, &v86);
          v83 = 0;
          swift_unknownObjectRelease();
          v60 = v69;
          v59 = v70;
          goto LABEL_25;
        case 3:
          v87[0] = 3;
          sub_23B44AF0C();
          v35 = v78;
          OUTLINED_FUNCTION_3_29(&type metadata for AirQualityPreviousDayComparison.BetterCodingKeys, v87);
          v83 = 0;
          swift_unknownObjectRelease();
          v60 = v71;
          v59 = v72;
          goto LABEL_25;
        case 4:
          v87[1] = 4;
          sub_23B44AEB8();
          v58 = v83;
          sub_23B50D674();
          v83 = v58;
          if (v58)
          {
            (*(v37 + 8))(v50, v29);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v74 + 8))(v36, v73);
LABEL_26:
          (*(v37 + 8))(v50, v29);
          *v49 = v44;
          v57 = v64;
          break;
        case 5:
          v88 = 5;
          sub_23B44AE64();
          v35 = v77;
          OUTLINED_FUNCTION_3_29(&type metadata for AirQualityPreviousDayComparison.UnknownCodingKeys, &v88);
          v83 = 0;
          swift_unknownObjectRelease();
          v59 = v75;
          v60 = v76;
LABEL_25:
          (*(v60 + 8))(v35, v59);
          goto LABEL_26;
        default:
          v84 = 0;
          sub_23B44B008();
          v51 = v62;
          OUTLINED_FUNCTION_3_29(&type metadata for AirQualityPreviousDayComparison.MuchWorseCodingKeys, &v84);
          v83 = 0;
          swift_unknownObjectRelease();
          (*(v66 + 8))(v51, v61);
          goto LABEL_26;
      }

      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    v43 = v37;
    v42 = v29;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AirQualityPreviousDayComparison.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B44B84C()
{
  result = qword_27E133448;
  if (!qword_27E133448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133448);
  }

  return result;
}

_BYTE *sub_23B44B8B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B44B9F0()
{
  result = qword_27E133450;
  if (!qword_27E133450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133450);
  }

  return result;
}

unint64_t sub_23B44BA48()
{
  result = qword_280B41C38;
  if (!qword_280B41C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C38);
  }

  return result;
}

unint64_t sub_23B44BAA0()
{
  result = qword_280B41C40;
  if (!qword_280B41C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C40);
  }

  return result;
}

unint64_t sub_23B44BAF8()
{
  result = qword_280B41C70;
  if (!qword_280B41C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C70);
  }

  return result;
}

unint64_t sub_23B44BB50()
{
  result = qword_280B41C78;
  if (!qword_280B41C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C78);
  }

  return result;
}

unint64_t sub_23B44BBA8()
{
  result = qword_280B41C80;
  if (!qword_280B41C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C80);
  }

  return result;
}

unint64_t sub_23B44BC00()
{
  result = qword_280B41C88;
  if (!qword_280B41C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C88);
  }

  return result;
}

unint64_t sub_23B44BC58()
{
  result = qword_280B41C60;
  if (!qword_280B41C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C60);
  }

  return result;
}

unint64_t sub_23B44BCB0()
{
  result = qword_280B41C68;
  if (!qword_280B41C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C68);
  }

  return result;
}

unint64_t sub_23B44BD08()
{
  result = qword_280B41C28;
  if (!qword_280B41C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C28);
  }

  return result;
}

unint64_t sub_23B44BD60()
{
  result = qword_280B41C30;
  if (!qword_280B41C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C30);
  }

  return result;
}

unint64_t sub_23B44BDB8()
{
  result = qword_280B41C48;
  if (!qword_280B41C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C48);
  }

  return result;
}

unint64_t sub_23B44BE10()
{
  result = qword_280B41C50;
  if (!qword_280B41C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C50);
  }

  return result;
}

unint64_t sub_23B44BE68()
{
  result = qword_280B41C90;
  if (!qword_280B41C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C90);
  }

  return result;
}

unint64_t sub_23B44BEC0()
{
  result = qword_280B41C98;
  if (!qword_280B41C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C98);
  }

  return result;
}

uint64_t sub_23B44BF38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374636166 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B44BFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B44BF38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B44BFF0(uint64_t a1)
{
  v2 = sub_23B44C208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44C02C(uint64_t a1)
{
  v2 = sub_23B44C208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalFacts.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133458, &qword_23B5176A0);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44C208();

  sub_23B50D974();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133468, &qword_23B5176A8);
  sub_23B44C408(&qword_27E133470, &qword_27E133478, &protocol conformance descriptor for HistoricalFact, MEMORY[0x277D83948]);
  sub_23B50D7F4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B44C208()
{
  result = qword_27E133460;
  if (!qword_27E133460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133460);
  }

  return result;
}

uint64_t HistoricalFacts.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133480, &qword_23B5176B0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44C208();
  sub_23B50D964();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133468, &qword_23B5176A8);
    sub_23B44C408(&qword_27E133488, &qword_27E133490, &protocol conformance descriptor for HistoricalFact, MEMORY[0x277D83978]);
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B44C408(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133468, &qword_23B5176A8);
    sub_23B44C490(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B44C490(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HistoricalFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HistoricalFacts.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B40957C();
  return sub_23B50D914();
}

uint64_t sub_23B44C560(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B40957C();
  return sub_23B50D914();
}

unint64_t sub_23B44C5A8()
{
  result = qword_27E133498;
  if (!qword_27E133498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133498);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFacts.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_23B44C6AC()
{
  result = qword_27E1334A0;
  if (!qword_27E1334A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1334A0);
  }

  return result;
}

unint64_t sub_23B44C704()
{
  result = qword_27E1334A8;
  if (!qword_27E1334A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1334A8);
  }

  return result;
}

unint64_t sub_23B44C75C()
{
  result = qword_27E1334B0;
  if (!qword_27E1334B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1334B0);
  }

  return result;
}

uint64_t sub_23B44C7B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B44C7F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B44C840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v56 = a1;
  v57 = a2;
  sub_23B50C3C4();
  OUTLINED_FUNCTION_5();
  v58 = v4;
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133548, &unk_23B519F90);
  v7 = OUTLINED_FUNCTION_3(v6);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334B8, &qword_23B517A88);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_0();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_12_13();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_11();
  v29 = sub_23B50CF44();

  sub_23B50AD14();
  v30 = *MEMORY[0x277D6C920];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_6();
  v33 = *(v32 + 104);
  v33(v18, v30, v31);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v31);
  sub_23B50AD14();
  v33(v15, v30, v31);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F0, &qword_23B517AA8);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F8, &qword_23B517AB0);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  v61 = v56;
  v62 = v57;

  sub_23B50CF64();

  v48 = v58;
  v47 = v59;
  v49 = v60;
  (*(v58 + 16))(v55, v60, v59);
  sub_23B44D980(&qword_280B42C98, MEMORY[0x277D7AFB8]);
  sub_23B44D980(&qword_280B42CA0, MEMORY[0x277D7AFB0]);
  sub_23B50CEB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133550, &qword_23B517AC8);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_23B50CF64();

  (*(v48 + 8))(v49, v47);
  return v29;
}

uint64_t sub_23B44CD10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B44CE14(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6465696669646F6DLL;
  }

  return 0x656C616373;
}

uint64_t sub_23B44CE5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133528, &qword_23B517AC0);
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44D92C();
  sub_23B50D974();
  v26 = a2;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_0_31();
  sub_23B3F1C50(v14, v15, &unk_23B51DB70, v16);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v4)
  {
    v26 = v24;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_0_31();
    sub_23B3F1C50(v17, v18, &qword_23B51DB80, v19);
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v26 = a4;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F8, &qword_23B517AB0);
    OUTLINED_FUNCTION_0_31();
    sub_23B3F1C50(v20, v21, &qword_23B517AB0, v22);
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_23B44D084(void *a1)
{
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133500, &qword_23B517AB8);
  OUTLINED_FUNCTION_5();
  v50 = v2;
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334B8, &qword_23B517A88);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v53 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12_0();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v18 = OUTLINED_FUNCTION_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_12_13();
  MEMORY[0x28223BE20](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_6_11();
  v52 = sub_23B50CF44();
  sub_23B50AD14();
  v27 = *MEMORY[0x277D6C920];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_6();
  v30 = *(v29 + 104);
  v30(v16, v27, v28);
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v28);
  sub_23B50AD14();
  v30(v13, v27, v28);
  v34 = v57;
  OUTLINED_FUNCTION_73();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v54 = sub_23B50CF44();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F0, &qword_23B517AA8);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334F8, &qword_23B517AB0);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  v45 = v34[3];
  v46 = __swift_project_boxed_opaque_existential_1(v34, v45);
  sub_23B44D92C();
  v47 = v56;
  sub_23B50D964();
  if (v47)
  {
  }

  else
  {
    v58 = 0;
    OUTLINED_FUNCTION_3_30(&qword_27E133510, &qword_27E1334D8, &unk_23B51DB70);
    OUTLINED_FUNCTION_11_12();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D734();

    v45 = v59;
    v58 = 1;
    OUTLINED_FUNCTION_3_30(&qword_27E133518, &qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_11_12();
    sub_23B50D734();

    v58 = 2;
    OUTLINED_FUNCTION_3_30(&qword_27E133520, &qword_27E1334F8, &qword_23B517AB0);
    OUTLINED_FUNCTION_11_12();
    sub_23B50D734();
    (*(v50 + 8))(v46, v51);
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v45;
}

uint64_t sub_23B44D634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B44CD10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B44D65C(uint64_t a1)
{
  v2 = sub_23B44D92C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44D698(uint64_t a1)
{
  v2 = sub_23B44D92C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B44D6DC(uint64_t a1)
{
  v2 = sub_23B3A5C1C();

  return MEMORY[0x2821D1398](a1, v2);
}

uint64_t sub_23B44D728(uint64_t a1)
{
  v2 = sub_23B3A5C1C();

  return MEMORY[0x2821D13A8](a1, v2);
}

uint64_t sub_23B44D774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3A5C1C();

  return MEMORY[0x2821D13A0](a1, a2, a3, v6);
}

uint64_t sub_23B44D7D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B44D084(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_23B44D828(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B3A5C1C();

  return MEMORY[0x2821D13C0](a1, a2, v4);
}

uint64_t sub_23B44D874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3A5C1C();

  return MEMORY[0x2821D13B8](a1, a2, a3, v6);
}

uint64_t sub_23B44D8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B3A5C1C();

  return MEMORY[0x2821D13B0](a1, a2, a3, a4, v8);
}

unint64_t sub_23B44D92C()
{
  result = qword_27E133508;
  if (!qword_27E133508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133508);
  }

  return result;
}

uint64_t sub_23B44D980(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B50C3C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AQIScaleEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B44DAA4()
{
  result = qword_27E133558;
  if (!qword_27E133558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133558);
  }

  return result;
}

unint64_t sub_23B44DAFC()
{
  result = qword_27E133560;
  if (!qword_27E133560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133560);
  }

  return result;
}

unint64_t sub_23B44DB54()
{
  result = qword_27E133568;
  if (!qword_27E133568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133568);
  }

  return result;
}

uint64_t MoonEvents.init(phase:moonrise:moonset:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for MoonEvents(0);
  v9 = *(v8 + 20);
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = *(v8 + 24);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  *a4 = a1;
  sub_23B3CF890(a2, &a4[v9]);

  return sub_23B3CF890(a3, &a4[v14]);
}

uint64_t MoonEvents.moonrise.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MoonEvents(0) + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t MoonEvents.moonrise.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for MoonEvents(v2) + 20);

  return sub_23B3CF890(v0, v3);
}

void (*MoonEvents.moonrise.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MoonEvents(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t MoonEvents.moonset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MoonEvents(0) + 24);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t MoonEvents.moonset.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for MoonEvents(v2) + 24);

  return sub_23B3CF890(v0, v3);
}

void (*MoonEvents.moonset.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MoonEvents(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B44DE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657369726E6F6F6DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7465736E6F6F6DLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B44DF20(char a1)
{
  if (!a1)
  {
    return 0x6573616870;
  }

  if (a1 == 1)
  {
    return 0x657369726E6F6F6DLL;
  }

  return 0x7465736E6F6F6DLL;
}

uint64_t sub_23B44DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B44DE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B44DFA4(uint64_t a1)
{
  v2 = sub_23B44ED24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44DFE0(uint64_t a1)
{
  v2 = sub_23B44ED24();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static MoonEvents.== infix(_:_:)(char *a1, char *a2)
{
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v58 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v57 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v54[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v54[-v21];
  v23 = *a1;
  v59 = a2;
  v24 = *a2;
  v25 = MoonPhase.rawValue.getter(v23);
  v27 = v26;
  v29 = v25 == MoonPhase.rawValue.getter(v24) && v27 == v28;
  if (v29)
  {
  }

  else
  {
    v30 = sub_23B50D834();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = type metadata accessor for MoonEvents(0);
  v32 = *(v31 + 20);
  v33 = *(v16 + 48);
  sub_23B3C7DF4(&a1[v32], v22);
  sub_23B3C7DF4(&v59[v32], &v22[v33]);
  OUTLINED_FUNCTION_46(v22);
  if (!v29)
  {
    sub_23B3C7DF4(v22, v15);
    OUTLINED_FUNCTION_46(&v22[v33]);
    if (!v34)
    {
      v36 = v58;
      v37 = *(v58 + 32);
      v56 = v12;
      v38 = v57;
      v37(v57, &v22[v33], v4);
      OUTLINED_FUNCTION_0_32();
      sub_23B44EF28(v39, v40, MEMORY[0x277CC9598]);
      v55 = sub_23B50D134();
      v41 = *(v36 + 8);
      v42 = v38;
      v12 = v56;
      v41(v42, v4);
      v41(v15, v4);
      sub_23B3988E8(v22, &qword_27E131E18, &unk_23B50F710);
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    (*(v58 + 8))(v15, v4);
LABEL_16:
    v35 = v22;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_46(&v22[v33]);
  if (!v29)
  {
    goto LABEL_16;
  }

  sub_23B3988E8(v22, &qword_27E131E18, &unk_23B50F710);
LABEL_18:
  v43 = *(v31 + 24);
  v44 = *(v16 + 48);
  sub_23B3C7DF4(&a1[v43], v19);
  sub_23B3C7DF4(&v59[v43], v19 + v44);
  OUTLINED_FUNCTION_46(v19);
  if (v29)
  {
    OUTLINED_FUNCTION_46(v19 + v44);
    if (v29)
    {
      sub_23B3988E8(v19, &qword_27E131E18, &unk_23B50F710);
      return 1;
    }
  }

  else
  {
    sub_23B3C7DF4(v19, v12);
    OUTLINED_FUNCTION_46(v19 + v44);
    if (!v45)
    {
      v47 = v12;
      v49 = v57;
      v48 = v58;
      (*(v58 + 32))(v57, v19 + v44, v4);
      OUTLINED_FUNCTION_0_32();
      sub_23B44EF28(v50, v51, MEMORY[0x277CC9598]);
      v52 = sub_23B50D134();
      v53 = *(v48 + 8);
      v53(v49, v4);
      v53(v47, v4);
      sub_23B3988E8(v19, &qword_27E131E18, &unk_23B50F710);
      return (v52 & 1) != 0;
    }

    (*(v58 + 8))(v12, v4);
  }

  v35 = v19;
LABEL_27:
  sub_23B3988E8(v35, &qword_27E131E20, &qword_23B51E340);
  return 0;
}

uint64_t MoonEvents.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133570, &qword_23B517BE8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B44ED24();
  sub_23B50D974();
  v19[2] = *v3;
  v19[1] = 0;
  sub_23B44ED78();
  sub_23B50D7F4();
  if (!v2)
  {
    v11 = type metadata accessor for MoonEvents(0);
    v12 = *(v11 + 20);
    v19[0] = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_0_32();
    sub_23B44EF28(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_7_27(&v3[v12], v19);
    v15 = *(v11 + 24);
    v18 = 2;
    OUTLINED_FUNCTION_7_27(&v3[v15], &v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t MoonEvents.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_12_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133578, &qword_23B517BF0);
  OUTLINED_FUNCTION_5();
  v36 = v11;
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = type metadata accessor for MoonEvents(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v16 = (v15 - v14);
  v17 = *(v13 + 28);
  v18 = sub_23B50AD24();
  v41 = v17;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v40 = *(v13 + 32);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  v25 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B44ED24();
  v26 = v38;
  sub_23B50D964();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_23B3988E8(&v16[v41], &qword_27E131E18, &unk_23B50F710);
    return sub_23B3988E8(&v16[v40], &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v43[1] = 0;
    sub_23B44EDCC();
    sub_23B50D734();
    *v16 = v43[2];
    v43[0] = 1;
    OUTLINED_FUNCTION_0_32();
    v29 = sub_23B44EF28(v27, v28, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_5_18(v29, v43);
    v30 = sub_23B3CF890(v9, &v16[v41]);
    v42 = 2;
    OUTLINED_FUNCTION_5_18(v30, &v42);
    v31 = OUTLINED_FUNCTION_9_19();
    v32(v31);
    sub_23B3CF890(v6, &v16[v40]);
    sub_23B44EE20(v16, v35);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_23B44EE84(v16);
  }
}

uint64_t MoonEvents.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  MoonPhase.rawValue.getter(*v1);
  sub_23B50D1C4();

  v16 = type metadata accessor for MoonEvents(0);
  sub_23B3C7DF4(&v1[*(v16 + 20)], v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v4 + 32))(v8, v15, v2);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_0_32();
    v19 = sub_23B44EF28(v17, v18, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_11(v19);
    (*(v4 + 8))(v8, v2);
  }

  sub_23B3C7DF4(&v1[*(v16 + 24)], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_23B50D8E4();
  }

  (*(v4 + 32))(v8, v12, v2);
  sub_23B50D8E4();
  OUTLINED_FUNCTION_0_32();
  v23 = sub_23B44EF28(v21, v22, MEMORY[0x277CC9588]);
  OUTLINED_FUNCTION_11(v23);
  return (*(v4 + 8))(v8, v2);
}

uint64_t MoonEvents.hashValue.getter()
{
  sub_23B50D8C4();
  MoonEvents.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B44ECE8(uint64_t a1)
{
  sub_23B50D8C4();
  MoonEvents.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B44ED24()
{
  result = qword_280B42650;
  if (!qword_280B42650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42650);
  }

  return result;
}

unint64_t sub_23B44ED78()
{
  result = qword_280B41A80;
  if (!qword_280B41A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A80);
  }

  return result;
}

unint64_t sub_23B44EDCC()
{
  result = qword_27E133580;
  if (!qword_27E133580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133580);
  }

  return result;
}

uint64_t sub_23B44EE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonEvents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B44EE84(uint64_t a1)
{
  v2 = type metadata accessor for MoonEvents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B44EF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MoonEvents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B44F078()
{
  result = qword_27E133590;
  if (!qword_27E133590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133590);
  }

  return result;
}

unint64_t sub_23B44F0D0()
{
  result = qword_280B42640;
  if (!qword_280B42640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42640);
  }

  return result;
}

unint64_t sub_23B44F128()
{
  result = qword_280B42648;
  if (!qword_280B42648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42648);
  }

  return result;
}

uint64_t PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:nextHour:nextSixHours:nextTwentyFourHours:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1, v4);
  type metadata accessor for PrecipitationAmount(0);
  OUTLINED_FUNCTION_12_14();
  v6();
  OUTLINED_FUNCTION_12_14();
  v7();
  OUTLINED_FUNCTION_12_14();
  v8();
  OUTLINED_FUNCTION_12_14();
  v9();
  OUTLINED_FUNCTION_12_14();

  return v10();
}

uint64_t PrecipitationAmount.pastHour.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t PrecipitationAmount.pastHour.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t PrecipitationAmount.pastSixHours.getter()
{
  OUTLINED_FUNCTION_14_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmount.pastSixHours.setter()
{
  OUTLINED_FUNCTION_8_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmount.pastTwentyFourHours.getter()
{
  OUTLINED_FUNCTION_14_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmount.pastTwentyFourHours.setter()
{
  OUTLINED_FUNCTION_8_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextHour.getter()
{
  OUTLINED_FUNCTION_14_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextHour.setter()
{
  OUTLINED_FUNCTION_8_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextSixHours.getter()
{
  OUTLINED_FUNCTION_14_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextSixHours.setter()
{
  OUTLINED_FUNCTION_8_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextTwentyFourHours.getter()
{
  OUTLINED_FUNCTION_14_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmount.nextTwentyFourHours.setter()
{
  OUTLINED_FUNCTION_8_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmount.init(pastHour:pastSixHours:pastTwentyFourHours:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v20 = v9;
  v11 = *(v10 + 16);
  v11(a4, a1, v8);
  v12 = type metadata accessor for PrecipitationAmount(0);
  v11(a4 + *(v12 + 20), a2, v8);
  v11(a4 + *(v12 + 24), a3, v8);
  v13 = objc_opt_self();
  v14 = [v13 millimeters];
  sub_23B3E3A54();
  sub_23B50A9B4();
  v15 = [v13 millimeters];
  sub_23B50A9B4();
  v16 = [v13 millimeters];
  sub_23B50A9B4();
  v19 = *(v20 + 8);
  v19(a3, v8);
  v19(a2, v8);

  return (v19)(a1, v8);
}

uint64_t sub_23B44FB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F4874736170 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4878695374736170 && a2 == 0xEC0000007372756FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B535D80 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72756F487478656ELL && a2 == 0xE800000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x487869537478656ELL && a2 == 0xEC0000007372756FLL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x800000023B535DA0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B44FD5C(char a1)
{
  result = 0x72756F4874736170;
  switch(a1)
  {
    case 1:
      v3 = 1953718640;
      goto LABEL_4;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x72756F487478656ELL;
      break;
    case 4:
      v3 = 1954047342;
LABEL_4:
      result = v3 | 0x4878695300000000;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B44FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B44FB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B44FE38(uint64_t a1)
{
  v2 = sub_23B45019C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B44FE74(uint64_t a1)
{
  v2 = sub_23B45019C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static PrecipitationAmount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]);
  if (sub_23B50D134() & 1) != 0 && (type metadata accessor for PrecipitationAmount(0), (OUTLINED_FUNCTION_4_2()) && (OUTLINED_FUNCTION_4_2() & 1) != 0 && (OUTLINED_FUNCTION_4_2() & 1) != 0 && (OUTLINED_FUNCTION_4_2())
  {
    return OUTLINED_FUNCTION_4_2() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PrecipitationAmount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133598, &qword_23B517DF8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B45019C();
  sub_23B50D974();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
  OUTLINED_FUNCTION_2_13(v3, &v24);
  if (!v2)
  {
    v11 = type metadata accessor for PrecipitationAmount(0);
    v12 = v11[5];
    v23 = 1;
    OUTLINED_FUNCTION_2_13(v3 + v12, &v23);
    v13 = v11[6];
    v22 = 2;
    OUTLINED_FUNCTION_2_13(v3 + v13, &v22);
    v14 = v11[7];
    v21 = 3;
    OUTLINED_FUNCTION_2_13(v3 + v14, &v21);
    v15 = v11[8];
    v20 = 4;
    OUTLINED_FUNCTION_2_13(v3 + v15, &v20);
    v16 = v11[9];
    v19 = 5;
    OUTLINED_FUNCTION_2_13(v3 + v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B45019C()
{
  result = qword_280B423B0;
  if (!qword_280B423B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423B0);
  }

  return result;
}

uint64_t PrecipitationAmount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v58 = v4;
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v52 = &v46 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1335A0, &qword_23B517E00);
  OUTLINED_FUNCTION_5();
  v53 = v21;
  v54 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v55 = type metadata accessor for PrecipitationAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  v59 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B45019C();
  v27 = v56;
  sub_23B50D964();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v56 = v17;
  v48 = v11;
  v61[4] = 0;
  v28 = sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  v29 = v52;
  v30 = v23;
  sub_23B50D734();
  v31 = v3;
  v32 = *(v58 + 32);
  v52 = (v58 + 32);
  v32(v59, v29, v3);
  v61[3] = 1;
  v33 = v56;
  OUTLINED_FUNCTION_9_20();
  sub_23B50D734();
  v34 = &v59[v55[5]];
  v47 = v32;
  v32(v34, v33, v31);
  v61[2] = 2;
  v35 = v14;
  OUTLINED_FUNCTION_9_20();
  v56 = v28;
  sub_23B50D734();
  v36 = v59;
  v47(&v59[v55[6]], v35, v31);
  v61[1] = 3;
  v37 = v48;
  OUTLINED_FUNCTION_9_20();
  sub_23B50D734();
  v38 = v36;
  v39 = v37;
  v40 = v47;
  v41 = (v47)(&v36[v55[7]], v39, v31);
  v61[0] = 4;
  v42 = v51;
  OUTLINED_FUNCTION_13_11(v41, v61);
  v43 = v40(v38 + v55[8], v42, v31);
  v60 = 5;
  v44 = v50;
  OUTLINED_FUNCTION_13_11(v43, &v60);
  (*(v53 + 8))(v30, v54);
  v47((v38 + v55[9]), v44, v31);
  sub_23B3FE3B0(v38, v49);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_23B45085C(v38);
}

uint64_t sub_23B45085C(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAmount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationAmount.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_7_28(&qword_280B42BC8);
  sub_23B50D0E4();
  type metadata accessor for PrecipitationAmount(0);
  sub_23B50D0E4();
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_5_19();
  return OUTLINED_FUNCTION_5_19();
}

uint64_t PrecipitationAmount.hashValue.getter()
{
  sub_23B50D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_7_28(&qword_280B42BC8);
  sub_23B50D0E4();
  type metadata accessor for PrecipitationAmount(0);
  v0 = sub_23B50D0E4();
  v1 = OUTLINED_FUNCTION_6_12(v0);
  v2 = OUTLINED_FUNCTION_6_12(v1);
  v3 = OUTLINED_FUNCTION_6_12(v2);
  OUTLINED_FUNCTION_6_12(v3);
  return sub_23B50D914();
}

uint64_t sub_23B450A68(uint64_t a1)
{
  sub_23B50D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC8, MEMORY[0x277CC87E0]);
  sub_23B50D0E4();
  sub_23B50D0E4();
  sub_23B50D0E4();
  sub_23B50D0E4();
  sub_23B50D0E4();
  sub_23B50D0E4();
  return sub_23B50D914();
}

unint64_t sub_23B450B7C()
{
  result = qword_27E1335A8;
  if (!qword_27E1335A8)
  {
    type metadata accessor for PrecipitationAmount(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationAmount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B450CDC()
{
  result = qword_27E1335B0;
  if (!qword_27E1335B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335B0);
  }

  return result;
}

unint64_t sub_23B450D34()
{
  result = qword_280B423A0;
  if (!qword_280B423A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423A0);
  }

  return result;
}

unint64_t sub_23B450D8C()
{
  result = qword_280B423A8;
  if (!qword_280B423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423A8);
  }

  return result;
}

double static Forecast<>.mock()@<D0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v65 = v1;
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v5 = type metadata accessor for Swell(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v64 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132A60, &qword_23B514100);
  v14 = (type metadata accessor for HourMarineWeather(0) - 8);
  v15 = *v14;
  v57 = *(*v14 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23B510090;
  v55 = v17;
  v18 = v17 + v16;
  sub_23B50AB94();
  v54 = objc_opt_self();
  v19 = [v54 meters];
  v58 = sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  sub_23B50A9B4();
  v62 = objc_opt_self();
  v20 = [v62 degrees];
  v61 = sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  *&v8[*(v6 + 32)] = 0x4028000000000000;
  v60 = objc_opt_self();
  v21 = [v60 celsius];
  v59 = sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  sub_23B50A9B4();
  v22 = *(v64 + 32);
  v52 = v9;
  v53 = v22;
  v64 += 32;
  v23 = v18;
  v24 = v18;
  v25 = v9;
  v22(v24, v13, v9);
  v26 = v23;
  sub_23B451400(v8, v23 + v14[7]);
  v27 = v14[8];
  v51 = *(v65 + 32);
  v65 += 32;
  v28 = v23 + v27;
  v29 = v4;
  v30 = v63;
  v51(v28, v4, v63);
  v31 = v26 + v57;
  v32 = v13;
  sub_23B50AB94();
  v33 = v54;
  v34 = [v54 meters];
  sub_23B50A9B4();
  v35 = [v62 degrees];
  sub_23B50A9B4();
  *&v8[*(v6 + 32)] = 0x4020000000000000;
  v36 = [v60 celsius];
  sub_23B50A9B4();
  v37 = v25;
  v38 = v53;
  v53(v31, v32, v37);
  sub_23B451400(v8, v31 + v14[7]);
  v39 = v31 + v14[8];
  v40 = v51;
  v51(v39, v29, v30);
  v41 = v26 + 2 * v57;
  sub_23B50AB94();
  v42 = [v33 meters];
  sub_23B50A9B4();
  v43 = [v62 degrees];
  sub_23B50A9B4();
  *&v8[*(v6 + 32)] = 0x4028000000000000;
  v44 = [v60 celsius];
  v45 = v56;
  sub_23B50A9B4();
  v38(v41, v32, v52);
  sub_23B451400(v8, v41 + v14[7]);
  v40(v41 + v14[8], v29, v63);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  static WeatherMetadata.mock()(&v45[v46[13]]);
  if (qword_27E131C58 != -1)
  {
    swift_once();
  }

  *v45 = v55;
  v47 = &v45[v46[14]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&v45[v46[15]] = 0;
  *&v45[v46[16]] = 0;
  v48 = &v45[v46[17]];
  result = *&xmmword_27E15A780;
  *v48 = xmmword_27E15A780;
  v48[16] = 0;
  return result;
}

uint64_t sub_23B451400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Swell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DayTemperatureSummary.init(date:lowTemperature:highTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for DayTemperatureSummary(0);
  v10 = *(v9 + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v15 = *(v12 + 32);
  v15(a4 + v10, a2, v11);
  v13 = a4 + *(v9 + 24);

  return (v15)(v13, a3, v11);
}

uint64_t type metadata accessor for DayTemperatureSummary(uint64_t a1)
{
  result = qword_27E1335D0;
  if (!qword_27E1335D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DayTemperatureSummary.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DayTemperatureSummary.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayTemperatureSummary.lowTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureSummary(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayTemperatureSummary.lowTemperature.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for DayTemperatureSummary(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DayTemperatureSummary.lowTemperature.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayTemperatureSummary(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t DayTemperatureSummary.highTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureSummary(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayTemperatureSummary.highTemperature.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for DayTemperatureSummary(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DayTemperatureSummary.highTemperature.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayTemperatureSummary(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t static DayTemperatureSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_23B50ACD4() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0), type metadata accessor for DayTemperatureSummary(0), sub_23B40B418(&qword_280B42B78, MEMORY[0x277CC87F0]), (sub_23B50D134()))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4519D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706D655468676968 && a2 == 0xEF65727574617265)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B451AF0(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x65706D6554776F6CLL;
  }

  return 0x706D655468676968;
}

uint64_t sub_23B451B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4519D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B451B88(uint64_t a1)
{
  v2 = sub_23B451DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B451BC4(uint64_t a1)
{
  v2 = sub_23B451DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayTemperatureSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1335B8, &qword_23B518038);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B451DF0();
  sub_23B50D974();
  v17[1] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  sub_23B50D7F4();
  if (!v2)
  {
    v11 = type metadata accessor for DayTemperatureSummary(0);
    v12 = *(v11 + 20);
    v17[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B40B418(&qword_280B42B88, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_2_2(v3 + v12, v17);
    v13 = *(v11 + 24);
    v16 = 2;
    OUTLINED_FUNCTION_2_2(v3 + v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B451DF0()
{
  result = qword_27E1335C0;
  if (!qword_27E1335C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335C0);
  }

  return result;
}

uint64_t DayTemperatureSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v35 = v10;
  MEMORY[0x28223BE20](v11);
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1335C8, &qword_23B518040);
  OUTLINED_FUNCTION_5();
  v36 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for DayTemperatureSummary(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B451DF0();
  v39 = v16;
  v21 = v41;
  sub_23B50D964();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v36;
  v31 = v20;
  v41 = a1;
  v23 = v38;
  v44 = 0;
  sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
  v24 = v37;
  sub_23B50D734();
  (*(v35 + 32))(v31, v24, v9);
  v43 = 1;
  sub_23B40B418(&qword_27E132090, MEMORY[0x277CC87F8]);
  sub_23B50D734();
  v30 = v9;
  v37 = v17;
  v25 = *(v34 + 32);
  v25(&v31[*(v17 + 20)], v8, v23);
  v42 = 2;
  v26 = v33;
  v27 = v39;
  sub_23B50D734();
  (*(v22 + 8))(v27, v40);
  v28 = v31;
  v25(&v31[*(v37 + 6)], v26, v23);
  sub_23B4522FC(v28, v32);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_23B452360(v28);
}

uint64_t sub_23B4522FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayTemperatureSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B452360(uint64_t a1)
{
  v2 = type metadata accessor for DayTemperatureSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23B452418(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B392F50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for DayTemperatureSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B45257C()
{
  result = qword_27E1335E0;
  if (!qword_27E1335E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335E0);
  }

  return result;
}

unint64_t sub_23B4525D4()
{
  result = qword_27E1335E8;
  if (!qword_27E1335E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335E8);
  }

  return result;
}

unint64_t sub_23B45262C()
{
  result = qword_27E1335F0;
  if (!qword_27E1335F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1335F0);
  }

  return result;
}

uint64_t SnowfallAmount.init(amount:maximum:minimum:amountLiquidEquivalent:maximumLiquidEquivalent:minimumLiquidEquivalent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1, v4);
  type metadata accessor for SnowfallAmount(0);
  OUTLINED_FUNCTION_12_14();
  v6();
  OUTLINED_FUNCTION_12_14();
  v7();
  OUTLINED_FUNCTION_12_14();
  v8();
  OUTLINED_FUNCTION_12_14();
  v9();
  OUTLINED_FUNCTION_12_14();

  return v10();
}

uint64_t SnowfallAmount.amount.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t SnowfallAmount.maximum.setter()
{
  OUTLINED_FUNCTION_8_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t SnowfallAmount.minimum.setter()
{
  OUTLINED_FUNCTION_8_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t SnowfallAmount.amountLiquidEquivalent.getter()
{
  OUTLINED_FUNCTION_14_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t SnowfallAmount.amountLiquidEquivalent.setter()
{
  OUTLINED_FUNCTION_8_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t SnowfallAmount.maximumLiquidEquivalent.getter()
{
  OUTLINED_FUNCTION_14_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t SnowfallAmount.maximumLiquidEquivalent.setter()
{
  OUTLINED_FUNCTION_8_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t SnowfallAmount.minimumLiquidEquivalent.getter()
{
  OUTLINED_FUNCTION_14_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t SnowfallAmount.minimumLiquidEquivalent.setter()
{
  OUTLINED_FUNCTION_8_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t static SnowfallAmount.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]);
  if (sub_23B50D134() & 1) != 0 && (type metadata accessor for SnowfallAmount(0), (OUTLINED_FUNCTION_4_2()) && (OUTLINED_FUNCTION_4_2() & 1) != 0 && (OUTLINED_FUNCTION_4_2() & 1) != 0 && (OUTLINED_FUNCTION_4_2())
  {
    return OUTLINED_FUNCTION_4_2() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B452DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756D6978616DLL && a2 == 0xE700000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023B535DC0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x800000023B535DE0 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x800000023B535E00 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_23B50D834();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B452FDC(char a1)
{
  result = 0x746E756F6D61;
  switch(a1)
  {
    case 1:
      v3 = 1769496941;
      goto LABEL_5;
    case 2:
      v3 = 1768843629;
LABEL_5:
      result = v3 | 0x6D756D00000000;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B453094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B452DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4530BC(uint64_t a1)
{
  v2 = sub_23B453344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4530F8(uint64_t a1)
{
  v2 = sub_23B453344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SnowfallAmount.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1335F8, &qword_23B518210);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B453344();
  sub_23B50D974();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
  OUTLINED_FUNCTION_2_13(v3, &v24);
  if (!v2)
  {
    v11 = type metadata accessor for SnowfallAmount(0);
    v12 = v11[5];
    v23 = 1;
    OUTLINED_FUNCTION_2_13(v3 + v12, &v23);
    v13 = v11[6];
    v22 = 2;
    OUTLINED_FUNCTION_2_13(v3 + v13, &v22);
    v14 = v11[7];
    v21 = 3;
    OUTLINED_FUNCTION_2_13(v3 + v14, &v21);
    v15 = v11[8];
    v20 = 4;
    OUTLINED_FUNCTION_2_13(v3 + v15, &v20);
    v16 = v11[9];
    v19 = 5;
    OUTLINED_FUNCTION_2_13(v3 + v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B453344()
{
  result = qword_27E133600;
  if (!qword_27E133600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133600);
  }

  return result;
}

uint64_t SnowfallAmount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v58 = v4;
  MEMORY[0x28223BE20](v5);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v52 = &v46 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133608, &qword_23B518218);
  OUTLINED_FUNCTION_5();
  v53 = v21;
  v54 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - v22;
  v55 = type metadata accessor for SnowfallAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v24);
  v59 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_23B453344();
  v27 = v56;
  sub_23B50D964();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v56 = v17;
  v48 = v11;
  v61[4] = 0;
  v28 = sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  v29 = v52;
  v30 = v23;
  sub_23B50D734();
  v31 = v3;
  v32 = *(v58 + 32);
  v52 = (v58 + 32);
  v32(v59, v29, v3);
  v61[3] = 1;
  v33 = v56;
  OUTLINED_FUNCTION_9_20();
  sub_23B50D734();
  v34 = &v59[v55[5]];
  v47 = v32;
  v32(v34, v33, v31);
  v61[2] = 2;
  v35 = v14;
  OUTLINED_FUNCTION_9_20();
  v56 = v28;
  sub_23B50D734();
  v36 = v59;
  v47(&v59[v55[6]], v35, v31);
  v61[1] = 3;
  v37 = v48;
  OUTLINED_FUNCTION_9_20();
  sub_23B50D734();
  v38 = v36;
  v39 = v37;
  v40 = v47;
  v41 = (v47)(&v36[v55[7]], v39, v31);
  v61[0] = 4;
  v42 = v51;
  OUTLINED_FUNCTION_13_11(v41, v61);
  v43 = v40(v38 + v55[8], v42, v31);
  v60 = 5;
  v44 = v50;
  OUTLINED_FUNCTION_13_11(v43, &v60);
  (*(v53 + 8))(v30, v54);
  v47((v38 + v55[9]), v44, v31);
  sub_23B453A04(v38, v49);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_23B453A68(v38);
}

uint64_t sub_23B453A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnowfallAmount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B453A68(uint64_t a1)
{
  v2 = type metadata accessor for SnowfallAmount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SnowfallAmount.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_7_28(&qword_280B42BC8);
  sub_23B50D0E4();
  type metadata accessor for SnowfallAmount(0);
  sub_23B50D0E4();
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_5_19();
  return OUTLINED_FUNCTION_5_19();
}

uint64_t SnowfallAmount.hashValue.getter()
{
  sub_23B50D8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_7_28(&qword_280B42BC8);
  sub_23B50D0E4();
  type metadata accessor for SnowfallAmount(0);
  v0 = sub_23B50D0E4();
  v1 = OUTLINED_FUNCTION_6_12(v0);
  v2 = OUTLINED_FUNCTION_6_12(v1);
  v3 = OUTLINED_FUNCTION_6_12(v2);
  OUTLINED_FUNCTION_6_12(v3);
  return sub_23B50D914();
}

unint64_t sub_23B453C7C()
{
  result = qword_27E133610;
  if (!qword_27E133610)
  {
    type metadata accessor for SnowfallAmount(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133610);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnowfallAmount.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B453DDC()
{
  result = qword_27E133618;
  if (!qword_27E133618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133618);
  }

  return result;
}

unint64_t sub_23B453E34()
{
  result = qword_27E133620;
  if (!qword_27E133620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133620);
  }

  return result;
}

unint64_t sub_23B453E8C()
{
  result = qword_27E133628;
  if (!qword_27E133628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133628);
  }

  return result;
}

uint64_t static TideEvent.mock()@<X0>(uint64_t a1@<X8>)
{
  sub_23B50B9D4();
  sub_23B50B994();
  v2 = [objc_opt_self() feet];
  v3 = type metadata accessor for TideEvent(0);
  sub_23B3E3A54();
  result = sub_23B50A9B4();
  *(a1 + *(v3 + 20)) = 0;
  return result;
}

uint64_t MinuteCondition.init(date:expirationDate:shortDescription:longDescription:shift:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for MinuteCondition(0);
  v16 = v15[5];
  v17 = sub_23B50AD24();
  __swift_storeEnumTagSinglePayload(a8 + v16, 1, 1, v17);
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  sub_23B3CF890(a2, a8 + v16);
  result = sub_23B454074(a7, a8 + v15[8]);
  v19 = (a8 + v15[6]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + v15[7]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t sub_23B454074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationShift(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MinuteCondition.date.getter()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t MinuteCondition.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MinuteCondition.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MinuteCondition(0) + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t MinuteCondition.expirationDate.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for MinuteCondition(v2) + 20);

  return sub_23B3CF890(v0, v3);
}

uint64_t MinuteCondition.expirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteCondition(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.shortDescription.getter()
{
  type metadata accessor for MinuteCondition(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t MinuteCondition.shortDescription.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  v4 = (v1 + *(type metadata accessor for MinuteCondition(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t MinuteCondition.shortDescription.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteCondition(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.longDescription.getter()
{
  type metadata accessor for MinuteCondition(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t MinuteCondition.longDescription.setter()
{
  v3 = OUTLINED_FUNCTION_8_14();
  v4 = (v1 + *(type metadata accessor for MinuteCondition(v3) + 28));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t MinuteCondition.longDescription.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteCondition(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteCondition.shift.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for MinuteCondition(v2) + 32);

  return sub_23B454478(v0, v3);
}

uint64_t sub_23B454478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationShift(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MinuteCondition.shift.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteCondition(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B45451C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000023B535E20 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7466696873 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_23B4546D0(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x63736544676E6F6CLL;
      break;
    case 4:
      result = 0x7466696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B454784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B45451C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4547AC(uint64_t a1)
{
  v2 = sub_23B455648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4547E8(uint64_t a1)
{
  v2 = sub_23B455648();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static MinuteCondition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_8_14();
  v2 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for MinuteCondition(0);
  v17 = v16[5];
  v18 = *(v12 + 48);
  sub_23B3C7DF4(v1 + v17, v15);
  sub_23B3C7DF4(v0 + v17, &v15[v18]);
  OUTLINED_FUNCTION_46(v15);
  if (!v19)
  {
    sub_23B3C7DF4(v15, v11);
    OUTLINED_FUNCTION_46(&v15[v18]);
    if (!v19)
    {
      (*(v4 + 32))(v8, &v15[v18], v2);
      OUTLINED_FUNCTION_0_33();
      sub_23B45579C(v22, v23, MEMORY[0x277CC9598]);
      v24 = sub_23B50D134();
      v25 = *(v4 + 8);
      v25(v8, v2);
      v25(v11, v2);
      sub_23B398890(v15, &qword_27E131E18, &unk_23B50F710);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v4 + 8))(v11, v2);
LABEL_10:
    sub_23B398890(v15, &qword_27E131E20, &qword_23B51E340);
    return 0;
  }

  OUTLINED_FUNCTION_46(&v15[v18]);
  if (!v19)
  {
    goto LABEL_10;
  }

  sub_23B398890(v15, &qword_27E131E18, &unk_23B50F710);
LABEL_14:
  OUTLINED_FUNCTION_12_1(v16[6]);
  if (v19)
  {
    v28 = v26 == v27;
  }

  else
  {
    v28 = 0;
  }

  if (v28 || (sub_23B50D834() & 1) != 0)
  {
    OUTLINED_FUNCTION_12_1(v16[7]);
    v31 = v19 && v29 == v30;
    if (v31 || (sub_23B50D834() & 1) != 0)
    {
      return static PrecipitationShift.== infix(_:_:)(v1 + v16[8], v0 + v16[8]);
    }
  }

  return 0;
}

uint64_t MinuteCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133630, &qword_23B518438);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B455648();
  sub_23B50D974();
  v19 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_33();
  sub_23B45579C(v9, v10, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v1)
  {
    type metadata accessor for MinuteCondition(0);
    v18 = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
    v17 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7A4();
    v16 = 3;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7A4();
    v15 = 4;
    type metadata accessor for PrecipitationShift(0);
    OUTLINED_FUNCTION_4_18();
    sub_23B45579C(v11, v12, &protocol conformance descriptor for PrecipitationShift);
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MinuteCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42[0] = a2;
  v42[1] = type metadata accessor for PrecipitationShift(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = v42 - v8;
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v43 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  v15 = v14 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133648, &qword_23B518440);
  OUTLINED_FUNCTION_5();
  v44 = v16;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  type metadata accessor for MinuteCondition(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_27();
  v50 = v21;
  v48 = *(v21 + 20);
  v24 = v23 - v22;
  __swift_storeEnumTagSinglePayload(v23 - v22 + v48, 1, 1, v10);
  v25 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B455648();
  v45 = v19;
  v26 = v47;
  sub_23B50D964();
  if (v26)
  {
    v29 = v48;
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_23B398890(v24 + v29, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v47 = v6;
    v55 = 0;
    OUTLINED_FUNCTION_0_33();
    sub_23B45579C(v27, v28, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_16_9();
    sub_23B50D734();
    (*(v43 + 32))(v24, v15, v10);
    v54 = 1;
    OUTLINED_FUNCTION_16_9();
    sub_23B50D6D4();
    sub_23B3CF890(v9, v24 + v48);
    v53 = 2;
    v30 = sub_23B50D6E4();
    v31 = v50;
    v32 = (v24 + *(v50 + 24));
    *v32 = v30;
    v32[1] = v33;
    v52 = 3;
    v34 = sub_23B50D6E4();
    v35 = v44;
    v36 = (v24 + *(v31 + 28));
    *v36 = v34;
    v36[1] = v37;
    v51 = 4;
    OUTLINED_FUNCTION_4_18();
    sub_23B45579C(v38, v39, &protocol conformance descriptor for PrecipitationShift);
    v40 = v47;
    sub_23B50D734();
    (*(v35 + 8))(v45, v46);
    sub_23B454074(v40, v24 + *(v31 + 32));
    sub_23B45569C(v24, v42[0], type metadata accessor for MinuteCondition);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_23B4556F8(v24);
  }
}

uint64_t MinuteCondition.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v8 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  OUTLINED_FUNCTION_0_33();
  sub_23B45579C(v16, v17, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v18 = type metadata accessor for MinuteCondition(0);
  sub_23B3C7DF4(v0 + *(v18 + 20), v15);
  OUTLINED_FUNCTION_22_3(v15);
  if (v19)
  {
    sub_23B50D8E4();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_7_29();
    v21(v20, v15, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    v22 = OUTLINED_FUNCTION_13_12();
    v23(v22);
  }

  sub_23B50D1C4();
  sub_23B50D1C4();
  v24 = v0 + *(v18 + 32);
  sub_23B3C7DF4(v24, v12);
  OUTLINED_FUNCTION_22_3(v12);
  if (v19)
  {
    sub_23B50D8E4();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_7_29();
    v26(v25, v12, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    v27 = OUTLINED_FUNCTION_13_12();
    v28(v27);
  }

  v29 = type metadata accessor for PrecipitationShift(0);
  v30 = v35;
  sub_23B3C7DF4(v24 + *(v29 + 20), v35);
  OUTLINED_FUNCTION_22_3(v30);
  if (v19)
  {
    sub_23B50D8E4();
  }

  else
  {
    v31 = OUTLINED_FUNCTION_7_29();
    v32(v31, v30, v1);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_6_13();
    (*(v3 + 8))(v7, v1);
  }

  return MEMORY[0x23EE9DB40](*(v24 + *(v29 + 24)));
}

uint64_t MinuteCondition.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteCondition.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45560C(uint64_t a1)
{
  sub_23B50D8C4();
  MinuteCondition.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B455648()
{
  result = qword_27E133638;
  if (!qword_27E133638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133638);
  }

  return result;
}

uint64_t sub_23B45569C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

uint64_t sub_23B4556F8(uint64_t a1)
{
  v2 = type metadata accessor for MinuteCondition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B45579C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MinuteCondition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4558EC()
{
  result = qword_27E133660;
  if (!qword_27E133660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133660);
  }

  return result;
}

unint64_t sub_23B455944()
{
  result = qword_27E133668;
  if (!qword_27E133668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133668);
  }

  return result;
}

unint64_t sub_23B45599C()
{
  result = qword_27E133670[0];
  if (!qword_27E133670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133670);
  }

  return result;
}

uint64_t TrendBaseline.init(kind:value:startDate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a4, a1);
  v11 = *(type metadata accessor for TrendBaseline(0, a3, v9, v10) + 32);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v13 = *(v12 + 32);

  return v13(a4 + v11, a2);
}

uint64_t sub_23B455AB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1851876717 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23B50D834();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23B455B54(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B3DE120();
  return sub_23B50D914();
}

uint64_t sub_23B455BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B455AB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B455BF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E5F40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B455C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B455C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23B455CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3D27E4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23B455D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B455D54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void TrendBaseline.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = *(v2 + 16);
  v18[1] = type metadata accessor for TrendBaseline.Kind.MeanCodingKeys(255, v3, v4, v5);
  OUTLINED_FUNCTION_1_23();
  v18[2] = swift_getWitnessTable();
  v19 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v18[0] = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  type metadata accessor for TrendBaseline.Kind.CodingKeys(255, v3, v10, v11);
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v12 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v14 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = v18 - v16;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_23B50D974();
  sub_23B50D764();
  (*(v18[0] + 8))(v9, v19);
  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_105();
}

uint64_t TrendBaseline.Kind.hashValue.getter()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

void TrendBaseline.Kind.init(from:)()
{
  OUTLINED_FUNCTION_107();
  v2 = v1;
  v4 = v3;
  type metadata accessor for TrendBaseline.Kind.MeanCodingKeys(255, v1, v5, v6);
  OUTLINED_FUNCTION_1_23();
  WitnessTable = swift_getWitnessTable();
  sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v36 = v8;
  v37 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  type metadata accessor for TrendBaseline.Kind.CodingKeys(255, v2, v12, v13);
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_30();
  sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v39 = v14;
  v40 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_23B50D964();
  if (!v0)
  {
    v35 = v11;
    v45 = v2;
    v19 = v39;
    *&v41 = sub_23B50D744();
    OUTLINED_FUNCTION_7_30();
    sub_23B50D304();
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    *&v43 = sub_23B50D554();
    *(&v43 + 1) = v20;
    *&v44 = v21;
    *(&v44 + 1) = v22;
    OUTLINED_FUNCTION_7_30();
    sub_23B50D544();
    swift_getWitnessTable();
    sub_23B50D3D4();
    v23 = v18;
    if ((v41 & 1) != 0 || (v34 = v43, v41 = v43, v42 = v44, (sub_23B50D454() & 1) == 0))
    {
      v25 = v19;
      v26 = v23;
      v27 = v4;
      v28 = sub_23B50D5F4();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
      *v30 = type metadata accessor for TrendBaseline.Kind(0, v45, v31, v32);
      sub_23B50D684();
      sub_23B50D5E4();
      v33 = v30;
      v4 = v27;
      (*(*(v28 - 8) + 104))(v33, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v40 + 8))(v26, v25);
    }

    else
    {
      v24 = v35;
      sub_23B50D674();
      (*(v36 + 8))(v24, v37);
      (*(v40 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B456440(uint64_t a1)
{
  sub_23B50D8C4();
  TrendBaseline.Kind.hash(into:)();
  return sub_23B50D914();
}

uint64_t TrendBaseline.value.getter@<X0>(uint64_t a2@<X8>)
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t TrendBaseline.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t static TrendBaseline.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TrendBaseline(0, a3, v4, v5);

  return sub_23B50ACD4();
}

uint64_t sub_23B4565FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_23B456710(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x7461447472617473;
}

uint64_t sub_23B45676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4565FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B456798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B4567EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void TrendBaseline.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_107();
  a23 = v26;
  a24 = v27;
  v48 = v24;
  v49 = v25;
  v29 = v28;
  v47 = v30;
  v31 = *(v30 + 16);
  type metadata accessor for TrendBaseline.CodingKeys(255, v31, v27, v32);
  OUTLINED_FUNCTION_3_31();
  swift_getWitnessTable();
  v33 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v35 = v34;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v36);
  v38 = &v46 - v37;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_23B50D974();
  a14 = 0;
  type metadata accessor for TrendBaseline.Kind(0, v31, v39, v40);
  OUTLINED_FUNCTION_6_14();
  swift_getWitnessTable();
  v41 = v49;
  sub_23B50D7F4();
  if (v41)
  {
    (*(v35 + 8))(v38, v33);
  }

  else
  {
    v42 = v47;
    v43 = v35;
    a13 = 1;
    sub_23B50A9E4();
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    v44 = v48;
    OUTLINED_FUNCTION_9_22(v48, &a13);
    v45 = *(v42 + 32);
    a12 = 2;
    sub_23B50AD24();
    sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_9_22(v44 + v45, &a12);
    (*(v43 + 8))(v38, v33);
  }

  OUTLINED_FUNCTION_105();
}

void TrendBaseline.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_107();
  v80 = v24;
  v26 = v25;
  v28 = v27;
  v71 = v29;
  v72 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v70 = v30;
  MEMORY[0x28223BE20](v31);
  v76 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_30();
  v78 = sub_23B50A9E4();
  OUTLINED_FUNCTION_5();
  v75 = v33;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  v74 = &v67 - v35;
  type metadata accessor for TrendBaseline.CodingKeys(255, v26, v36, v37);
  OUTLINED_FUNCTION_3_31();
  swift_getWitnessTable();
  v79 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v73 = v38;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  v41 = &v67 - v40;
  v42 = OUTLINED_FUNCTION_7_30();
  v46 = type metadata accessor for TrendBaseline(v42, v43, v44, v45);
  OUTLINED_FUNCTION_5();
  v69 = v47;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v48);
  v50 = &v67 - v49;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v77 = v41;
  v51 = v80;
  sub_23B50D964();
  if (v51)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v52 = v73;
    v53 = v74;
    v80 = v50;
    v68 = v46;
    v55 = v75;
    v54 = v76;
    v56 = v78;
    v57 = OUTLINED_FUNCTION_7_30();
    type metadata accessor for TrendBaseline.Kind(v57, v58, v59, v60);
    OUTLINED_FUNCTION_6_14();
    swift_getWitnessTable();
    v61 = v77;
    sub_23B50D734();
    swift_getWitnessTable();
    sub_23B50D734();
    v62 = *(v55 + 32);
    v63 = v80;
    v62(v80, v53, v56);
    sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
    v64 = v72;
    sub_23B50D734();
    (*(v52 + 8))(v61, v79);
    v65 = v68;
    (*(v70 + 32))(&v63[*(v68 + 32)], v54, v64);
    v66 = v69;
    (*(v69 + 16))(v71, v63, v65);
    __swift_destroy_boxed_opaque_existential_1(v28);
    (*(v66 + 8))(v63, v65);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t TrendBaseline.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x23EE9DB40](0);
  sub_23B50A9E4();
  swift_getWitnessTable();
  sub_23B50D0E4();
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B48, MEMORY[0x277CC9588]);
  return sub_23B50D0E4();
}

uint64_t TrendBaseline.hashValue.getter(uint64_t a1)
{
  sub_23B50D8C4();
  TrendBaseline.hash(into:)(v3, a1);
  return sub_23B50D914();
}

uint64_t sub_23B457048(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  TrendBaseline.hash(into:)(v4, a2);
  return sub_23B50D914();
}

_BYTE *sub_23B4570EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_23B4571B8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CLLocationCoordinate2D.SolarEvents.sunset.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CLLocationCoordinate2D.SolarEvents(0) + 20);

  return sub_23B3CF890(a1, v3);
}

uint64_t CLLocationCoordinate2D.SolarEvents.isDaylight.setter(char a1)
{
  result = type metadata accessor for CLLocationCoordinate2D.SolarEvents(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t HourTide.init(date:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v6 + 32))(a3, a1);
  v7 = *(type metadata accessor for HourTide(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v9 = *(v8 + 32);

  return v9(a3 + v7, a2);
}

uint64_t HourTide.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t HourTide.date.setter(uint64_t a1)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t HourTide.height.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HourTide(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HourTide.height.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HourTide(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t static HourTide.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  type metadata accessor for HourTide(0);
  sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]);
  return sub_23B50D134() & 1;
}

uint64_t sub_23B457830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_23B50D834();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23B4578F4(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_23B457928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B457830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B457950(uint64_t a1)
{
  v2 = sub_23B457B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B45798C(uint64_t a1)
{
  v2 = sub_23B457B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourTide.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1337F8, &qword_23B518B48);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B457B80();
  sub_23B50D974();
  v15 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_40(v3, &v15);
  if (!v2)
  {
    v11 = *(type metadata accessor for HourTide(0) + 20);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_40(v3 + v11, &v14);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B457B80()
{
  result = qword_27E133800;
  if (!qword_27E133800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133800);
  }

  return result;
}

uint64_t HourTide.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v34 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  v32 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133808, &qword_23B518B50);
  OUTLINED_FUNCTION_5();
  v33 = v11;
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for HourTide(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B457B80();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v13;
  v17 = v16;
  v19 = v30;
  v18 = v31;
  v37 = 0;
  sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
  v20 = v32;
  sub_23B50D734();
  v21 = *(v19 + 32);
  v26 = v17;
  v21(v17, v20, v34);
  v36 = 1;
  sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  sub_23B50D734();
  v22 = OUTLINED_FUNCTION_2_26();
  v23(v22);
  v24 = v26;
  (*(v28 + 32))(v26 + *(v27 + 20), v7, v18);
  sub_23B457F84(v24, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B457FE8(v24);
}

uint64_t sub_23B457F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourTide(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B457FE8(uint64_t a1)
{
  v2 = type metadata accessor for HourTide(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for HourTide.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B458180()
{
  result = qword_27E133810;
  if (!qword_27E133810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133810);
  }

  return result;
}

unint64_t sub_23B4581D8()
{
  result = qword_27E133818;
  if (!qword_27E133818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133818);
  }

  return result;
}

unint64_t sub_23B458230()
{
  result = qword_27E133820;
  if (!qword_27E133820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133820);
  }

  return result;
}

unint64_t Forecast.debugDescription.getter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_12();
  v116 = v2;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_76();
  v124 = v4;
  v128 = type metadata accessor for DayWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12();
  v112 = v6;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_76();
  v117 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133830, &qword_23B518D08);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12();
  v119 = v10;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_76();
  v126 = v12;
  v127 = type metadata accessor for HourWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v113 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_76();
  v120 = v16;
  v17 = sub_23B50D504();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12();
  v115 = v19;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_1();
  v123 = v21;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  v118 = v23;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  v125 = v25;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  v121 = v27;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v112 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133838, &qword_23B518D10);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v112 - v35;
  v37 = type metadata accessor for MinuteWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12();
  v114 = v39;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_76();
  v122 = v41;
  WitnessTable = swift_getWitnessTable();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v30);
  v130 = v17;
  v131 = v18;
  if (v43)
  {
    (*(v18 + 8))(v30, v17);
    OUTLINED_FUNCTION_18_13(v36, 1);
LABEL_6:
    v33 = v36;
    goto LABEL_7;
  }

  v42 = OUTLINED_FUNCTION_14_20(v36, v30);
  OUTLINED_FUNCTION_18_13(v36, v42 ^ 1u);
  OUTLINED_FUNCTION_24_9(v36, 1);
  if (v43)
  {
    goto LABEL_6;
  }

  v59 = v122;
  sub_23B459140(v36, v122, type metadata accessor for MinuteWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v60 = v121;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v60);
  if (v61)
  {
    OUTLINED_FUNCTION_9_23();
    (*(v131 + 8))(v60, v130);
    OUTLINED_FUNCTION_18_13(v33, 1);
  }

  else
  {
    v82 = OUTLINED_FUNCTION_14_20(v33, v60);
    OUTLINED_FUNCTION_18_13(v33, v82 ^ 1u);
    OUTLINED_FUNCTION_24_9(v33, 1);
    if (!v83)
    {
      v96 = v59;
      v97 = type metadata accessor for MinuteWeather;
      v98 = v33;
      v99 = v114;
      sub_23B459140(v98, v114, type metadata accessor for MinuteWeather);
      OUTLINED_FUNCTION_15_12();
      sub_23B50D5C4();
      MEMORY[0x23EE9D460](0x20736574756E696DLL, 0xEE003D746E756F63);
      OUTLINED_FUNCTION_11_13();
      v132 = sub_23B50D434();
      sub_23B50D824();
      OUTLINED_FUNCTION_16_10();

      OUTLINED_FUNCTION_2_27();
      sub_23B50AD24();
      sub_23B4590E8();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
      OUTLINED_FUNCTION_13_13(*(v96 + *(v37 + 20)));
      Precipitation.description.getter();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      sub_23B4591FC(&qword_280B42BD8, &qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_13_13(*(v99 + *(v37 + 20)));
      Precipitation.description.getter();
      OUTLINED_FUNCTION_20_12();

      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      v77 = v133;
      v100 = v99;
LABEL_38:
      sub_23B4591A0(v100, v97);
      v106 = v96;
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_9_23();
  }

LABEL_7:
  sub_23B398890(v33, &qword_27E133838, &qword_23B518D10);
  v44 = v125;
  OUTLINED_FUNCTION_11_13();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v44);
  v45 = v127;
  if (v43)
  {
    v46 = v131;
    v47 = v44;
    v48 = v130;
    (*(v131 + 8))(v47, v130);
    v52 = v126;
    v49 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_18_13(v49, v50);
    v51 = v128;
    goto LABEL_19;
  }

  v52 = v126;
  OUTLINED_FUNCTION_14_20(v126, v44);
  v53 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v45);
  v56 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_9(v56, v57);
  v51 = v128;
  v46 = v131;
  if (v58)
  {
    goto LABEL_12;
  }

  v62 = v120;
  sub_23B459140(v52, v120, type metadata accessor for HourWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v63 = v118;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v63);
  if (!v64)
  {
    v52 = v119;
    OUTLINED_FUNCTION_14_20(v119, v63);
    v84 = OUTLINED_FUNCTION_10_17();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v45);
    v87 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_24_9(v87, v88);
    if (!v89)
    {
      v101 = v62;
      v97 = type metadata accessor for HourWeather;
      v102 = v113;
      sub_23B459140(v52, v113, type metadata accessor for HourWeather);
      OUTLINED_FUNCTION_15_12();
      sub_23B50D5C4();
      MEMORY[0x23EE9D460](0x6F63207372756F68, 0xEC0000003D746E75);
      OUTLINED_FUNCTION_11_13();
      v132 = sub_23B50D434();
      sub_23B50D824();
      OUTLINED_FUNCTION_16_10();

      OUTLINED_FUNCTION_2_27();
      sub_23B50AD24();
      sub_23B4590E8();
      v103 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x23EE9D460](v103);

      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
      OUTLINED_FUNCTION_13_13(*(v101 + *(v45 + 40)));
      WeatherCondition.description.getter();
      OUTLINED_FUNCTION_16_10();

      MEMORY[0x23EE9D460](0xD000000000000014, 0x800000023B535EA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
      sub_23B4591FC(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
      v104 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x23EE9D460](v104);

      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_13_13(*(v102 + *(v45 + 40)));
      v105 = WeatherCondition.description.getter();
      MEMORY[0x23EE9D460](v105);

      MEMORY[0x23EE9D460](0xD000000000000013, 0x800000023B535EC0);
      OUTLINED_FUNCTION_17_11();
      OUTLINED_FUNCTION_16_10();

      v77 = v133;
      sub_23B4591A0(v102, type metadata accessor for HourWeather);
      v106 = v101;
LABEL_39:
      sub_23B4591A0(v106, v97);
      return v77;
    }

    OUTLINED_FUNCTION_7_31();
LABEL_12:
    v48 = v130;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_31();
  v48 = v130;
  (*(v46 + 8))(v63, v130);
  v52 = v119;
  v65 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_18_13(v65, v66);
LABEL_19:
  sub_23B398890(v52, &qword_27E133830, &qword_23B518D08);
  v67 = v123;
  OUTLINED_FUNCTION_11_13();
  sub_23B50D444();
  OUTLINED_FUNCTION_4_19(v67);
  v68 = v124;
  if (v43)
  {
    (*(v46 + 8))(v67, v48);
LABEL_22:
    v69 = OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v69, v70, 1, v51);
    goto LABEL_24;
  }

  swift_dynamicCast();
  v71 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v51);
  v74 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v75, v51);
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_24;
  }

  v79 = v46;
  v80 = v117;
  sub_23B459140(v68, v117, type metadata accessor for DayWeather);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  v81 = v115;
  sub_23B50D0F4();
  OUTLINED_FUNCTION_4_19(v81);
  if (v43)
  {
    OUTLINED_FUNCTION_8_15();
    (*(v79 + 8))(v81, v48);
    v68 = v116;
    goto LABEL_22;
  }

  v68 = v116;
  swift_dynamicCast();
  v90 = OUTLINED_FUNCTION_10_17();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v51);
  v93 = OUTLINED_FUNCTION_44_0();
  v95 = __swift_getEnumTagSinglePayload(v93, v94, v51);
  if (v95 != 1)
  {
    v97 = type metadata accessor for DayWeather;
    v107 = v112;
    sub_23B459140(v68, v112, type metadata accessor for DayWeather);
    OUTLINED_FUNCTION_15_12();
    sub_23B50D5C4();
    MEMORY[0x23EE9D460](0x756F632073796164, 0xEB000000003D746ELL);
    v132 = sub_23B50D434();
    v108 = sub_23B50D824();
    v96 = v80;
    MEMORY[0x23EE9D460](v108);

    OUTLINED_FUNCTION_2_27();
    sub_23B50AD24();
    sub_23B4590E8();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_22_10();
    v109 = OUTLINED_FUNCTION_21_9();
    MEMORY[0x23EE9D460](v109);

    MEMORY[0x23EE9D460](0xD000000000000012, 0x800000023B535E60);
    OUTLINED_FUNCTION_13_13(*(v80 + *(v51 + 20)));
    v110 = WeatherCondition.description.getter();
    MEMORY[0x23EE9D460](v110);

    MEMORY[0x23EE9D460](0x207473726966202CLL, 0xED00003D68676968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    sub_23B4591FC(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0);
    v111 = OUTLINED_FUNCTION_21_9();
    MEMORY[0x23EE9D460](v111);

    MEMORY[0x23EE9D460](0x207473726966202CLL, 0xEC0000003D776F6CLL);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_13_13(*(v107 + *(v51 + 20)));
    WeatherCondition.description.getter();
    OUTLINED_FUNCTION_20_12();

    MEMORY[0x23EE9D460](0x68207473616C202CLL, 0xEC0000003D686769);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_20_12();

    MEMORY[0x23EE9D460](0x6C207473616C202CLL, 0xEB000000003D776FLL);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_16_10();

    v77 = v133;
    v100 = v107;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_8_15();
LABEL_24:
  sub_23B398890(v68, &qword_27E133828, &qword_23B518D00);
  return 0xD000000000000015;
}

unint64_t sub_23B4590E8()
{
  result = qword_280B42B40;
  if (!qword_280B42B40)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42B40);
  }

  return result;
}

uint64_t sub_23B459140(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23B4591A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B4591FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WeatherServiceCacheObserverProduct.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t *WeatherServiceCacheObserverConfiguration.init(location:products:excludeLocalChanges:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *result;
  v6 = *(result + 8);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 25) = a2;
  return result;
}

uint64_t WeatherServiceCacheObservationToken.hash(into:)(uint64_t a1)
{
  sub_23B50AD64();
  OUTLINED_FUNCTION_0_36();
  sub_23B45952C(v1, v2, MEMORY[0x277CC9600]);

  return sub_23B50D0E4();
}

uint64_t WeatherServiceCacheObservationToken.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B50AD64();
  OUTLINED_FUNCTION_0_36();
  sub_23B45952C(v0, v1, MEMORY[0x277CC9600]);
  sub_23B50D0E4();
  return sub_23B50D914();
}

uint64_t sub_23B459408(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B50AD64();
  sub_23B45952C(&qword_27E132B48, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23B50D0E4();
  return sub_23B50D914();
}

unint64_t sub_23B459490()
{
  result = qword_27E133840;
  if (!qword_27E133840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133840);
  }

  return result;
}

uint64_t sub_23B45952C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WeatherServiceCacheObservationToken(uint64_t a1)
{
  result = qword_27E133850;
  if (!qword_27E133850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCacheObserverProduct(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_23B4596D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B459710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B459768(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B4597A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B459820(uint64_t a1)
{
  result = sub_23B50AD64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t WeatherMetadata.init(date:expirationDate:latitude:longitude:attribution:)(double a1, double a2)
{
  v9 = OUTLINED_FUNCTION_8_16();
  v10 = OUTLINED_FUNCTION_13_14(v9);
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 32);
  v12(v3, v2, v10);
  v13 = OUTLINED_FUNCTION_10_18();
  (v12)(v13);
  *(v3 + *(v4 + 24)) = a1;
  *(v3 + *(v4 + 28)) = a2;

  *(v3 + v6) = v5;
  return result;
}

uint64_t WeatherMetadata.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WeatherMetadata.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t WeatherMetadata.expirationDate.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for WeatherMetadata(v2) + 20);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t WeatherMetadata.expirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherMetadata(v0);
  return OUTLINED_FUNCTION_44();
}

id WeatherMetadata.location.getter()
{
  v1 = type metadata accessor for WeatherMetadata(0);
  v2 = *(v0 + *(v1 + 24));
  v3 = *(v0 + *(v1 + 28));
  v4 = objc_allocWithZone(MEMORY[0x277CE41F8]);

  return [v4 initWithLatitude:v2 longitude:v3];
}

uint64_t WeatherMetadata.latitude.setter(double a1)
{
  result = type metadata accessor for WeatherMetadata(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t WeatherMetadata.latitude.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherMetadata(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.longitude.setter(double a1)
{
  result = type metadata accessor for WeatherMetadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t WeatherMetadata.longitude.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherMetadata(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.attribution.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for WeatherMetadata(0) + 32);

  *(v1 + v3) = v2;
  return result;
}

uint64_t WeatherMetadata.attribution.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherMetadata(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherMetadata.init(date:expirationDate:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v56 = a2;
  v57 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_12_0();
  v53 = v9 - v10;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_1();
  v51 = v12;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  v54 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  v17 = v47 - v16;
  v18 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_0();
  v50 = (v22 - v23);
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  v52 = v25;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  v55 = v27;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v28);
  v30 = v47 - v29;
  v31 = type metadata accessor for WeatherMetadata(0);
  v49 = v31[8];
  *(a3 + v49) = 0;
  v32 = sub_23B50AD24();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v34(a3, v57, v32);
  v34(a3 + v31[5], v56, v32);
  *(a3 + v31[6]) = a4;
  v35 = v31[7];
  v48 = a3;
  *(a3 + v35) = a5;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v17);
  if (v37)
  {
    __break(1u);
    goto LABEL_7;
  }

  v38 = *(v20 + 32);
  v47[1] = v30;
  v38(v30, v17, v18);
  v39 = v54;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v39);
  if (v37)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v38(v55, v39, v18);
  v40 = v51;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v40);
  v41 = v53;
  if (v37)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v38(v52, v40, v18);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_4_20(v41);
  if (!v37)
  {
    v42 = *(v33 + 8);
    v42(v56, v32);
    v42(v57, v32);
    v38(v50, v41, v18);
    type metadata accessor for WeatherAttribution.Storage(0);
    swift_allocObject();
    sub_23B42E3E8();
    v44 = v43;
    v45 = v48;
    v46 = v49;

    *(v45 + v46) = v44;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WeatherMetadata.init(date:expirationDate:attribution:)()
{
  v5 = OUTLINED_FUNCTION_8_16();
  v6 = OUTLINED_FUNCTION_13_14(v5);
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 32);
  v8(v1, v0, v6);
  v9 = OUTLINED_FUNCTION_10_18();
  (v8)(v9);
  *(v1 + *(v2 + 24)) = 0;
  *(v1 + *(v2 + 28)) = 0;

  *(v1 + v4) = v3;
  return result;
}

uint64_t sub_23B45A180(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = sub_23B50D834();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_23B45A334(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x656475746974616CLL;
      break;
    case 3:
      result = 0x64757469676E6F6CLL;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B45A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B45A180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B45A410(uint64_t a1)
{
  v2 = sub_23B45A7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B45A44C(uint64_t a1)
{
  v2 = sub_23B45A7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static WeatherMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WeatherMetadata(0);
  if ((sub_23B50ACD4() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = *(a2 + v5);
  if (*(a1 + v5))
  {
    if (v6)
    {
      type metadata accessor for WeatherAttribution.Storage(0);
      swift_retain_n();

      sub_23B42DD28();
      v8 = v7;

      return (v8 & 1) != 0;
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t WeatherMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133860, &qword_23B519058);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B45A7F0();
  sub_23B50D974();
  v20 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_37();
  sub_23B45AF50(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherMetadata(0);
    v19 = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    v18 = 2;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v17 = 3;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v15[1] = *(v3 + *(v13 + 32));
    v16 = 4;
    sub_23B45A844();

    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B45A7F0()
{
  result = qword_280B426C0;
  if (!qword_280B426C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B426C0);
  }

  return result;
}

unint64_t sub_23B45A844()
{
  result = qword_280B428A0;
  if (!qword_280B428A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B428A0);
  }

  return result;
}

uint64_t WeatherMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v36 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133868, &qword_23B519060);
  OUTLINED_FUNCTION_5();
  v37 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v42 = *(v18 + 32);
  v19 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19[v42] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B45A7F0();
  v40 = v14;
  v20 = v41;
  sub_23B50D964();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v41 = v15;
    v48 = 0;
    OUTLINED_FUNCTION_0_37();
    sub_23B45AF50(v21, v22, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_12_15();
    sub_23B50D734();
    v23 = v19;
    v24 = v38;
    v38 = *(v36 + 32);
    (v38)(v19, v24, v3);
    v47 = 1;
    v25 = v8;
    OUTLINED_FUNCTION_12_15();
    sub_23B50D734();
    v26 = v41;
    (v38)(v23 + *(v41 + 20), v25, v3);
    v46 = 2;
    v27 = v39;
    v38 = 0;
    sub_23B50D704();
    v28 = v37;
    *(v23 + *(v26 + 24)) = v29;
    v45 = 3;
    OUTLINED_FUNCTION_12_15();
    sub_23B50D704();
    *(v23 + *(v26 + 28)) = v30;
    v44 = 4;
    sub_23B45ACF4();
    OUTLINED_FUNCTION_12_15();
    sub_23B50D6D4();
    (*(v28 + 8))(v40, v27);
    v32 = v42;
    v31 = v43;

    *(v23 + v32) = v31;
    sub_23B3CA078(v23, v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23B3E79F4(v23);
  }
}

unint64_t sub_23B45ACF4()
{
  result = qword_27E133870;
  if (!qword_27E133870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133870);
  }

  return result;
}

void WeatherMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_37();
  sub_23B45AF50(v1, v2, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v3 = type metadata accessor for WeatherMetadata(0);
  sub_23B50D0E4();
  v4 = *(v0 + v3[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v4);
  v5 = *(v0 + v3[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v5);
  if (*(v0 + v3[8]))
  {
    sub_23B50D8E4();
    sub_23B42E190();
  }

  else
  {
    sub_23B50D8E4();
  }
}

uint64_t WeatherMetadata.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45AECC(uint64_t a1)
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B45AF50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}