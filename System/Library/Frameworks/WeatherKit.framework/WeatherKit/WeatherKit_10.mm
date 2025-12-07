uint64_t sub_23B478FAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23B4791C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47929C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    sub_23B408E00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B479330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HourlyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B479358@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = HourlyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B479380(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B4793F4(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B4793F4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  HourlyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B4794B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B479524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4795AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_38();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B479630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = HourlyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B47971C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B479770(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B4797F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for Weather(uint64_t a1)
{
  result = qword_27E133A10;
  if (!qword_27E133A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Weather.minuteForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 20), &qword_27E131C90, &unk_23B514EC0);
}

uint64_t Weather.minuteForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.hourlyForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 24), &qword_27E131CA8, &unk_23B50ED70);
}

uint64_t Weather.hourlyForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.dailyForecast.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 28), &qword_27E131CB0, &qword_23B516B60);
}

uint64_t Weather.dailyForecast.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.weatherAlerts.getter()
{
  type metadata accessor for Weather(0);
}

uint64_t Weather.weatherAlerts.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for Weather(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Weather.weatherAlerts.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.availability.getter()
{
  result = OUTLINED_FUNCTION_29_9();
  v3 = (v1 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 2);
  *v0 = v4;
  *(v0 + 2) = v3;
  return result;
}

uint64_t Weather.availability.setter(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = type metadata accessor for Weather(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 2) = v3;
  return result;
}

uint64_t Weather.availability.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.airQuality.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 40), &qword_27E131C78, &qword_23B50ED40);
}

uint64_t Weather.airQuality.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.weatherChanges.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  v1 = type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_26_10(*(v1 + 44), &qword_27E131EF0, &unk_23B50F220);
}

uint64_t Weather.weatherChanges.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for Weather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t Weather.news.getter()
{
  *v0 = *(v1 + *(OUTLINED_FUNCTION_29_9() + 48));
}

uint64_t Weather.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:weatherAlerts:availability:airQuality:weatherChanges:news:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v34 = *(a6 + 2);
  v35 = *a6;
  v38 = *a10;
  v15 = type metadata accessor for Weather(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v15[8];
  v22 = v15[10];
  type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v15[11];
  type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_15_14();
  sub_23B47C090(a1, a9);
  sub_23B3C2510(a2, a9 + v16, &qword_27E131C90, &unk_23B514EC0);
  sub_23B3CE5BC(a3, a9 + v15[6], &qword_27E131CA8, &unk_23B50ED70);
  sub_23B3CE5BC(a4, a9 + v15[7], &qword_27E131CB0, &qword_23B516B60);
  *(a9 + v21) = a5;
  v32 = a9 + v15[9];
  *v32 = v35;
  *(v32 + 2) = v34;
  sub_23B3C2510(a7, a9 + v22, &qword_27E131C78, &qword_23B50ED40);
  result = sub_23B3C2510(a8, a9 + v27, &qword_27E131EF0, &unk_23B50F220);
  *(a9 + v15[12]) = v38;
  return result;
}

uint64_t sub_23B47A0A8(uint64_t a1, uint64_t a2)
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
          v9 = a1 == 0x4172656874616577 && a2 == 0xED0000737472656CLL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1937204590 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_23B50D834();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_23B47A3AC(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      v3 = 0x6574756E696DLL;
      goto LABEL_5;
    case 2:
      v3 = 0x796C72756F68;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x4172656874616577;
      break;
    case 5:
      result = 0x6962616C69617661;
      break;
    case 6:
      result = 0x696C617551726961;
      break;
    case 7:
      result = 0x4372656874616577;
      break;
    case 8:
      result = 1937204590;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B47A4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B47A0A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B47A510@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B47A3A4();
  *a1 = result;
  return result;
}

uint64_t sub_23B47A538(uint64_t a1)
{
  v2 = sub_23B47C0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B47A574(uint64_t a1)
{
  v2 = sub_23B47C0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Weather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v102 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v103 = v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1339E0, &qword_23B519920);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v97 - v12;
  v107 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v104 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v106 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133138, &qword_23B5166B0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v108 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133150, &qword_23B5166C8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v32);
  v34 = &v97 - v33;
  if (!static CurrentWeather.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v98 = v13;
  v99 = v4;
  v35 = type metadata accessor for Weather(0);
  v36 = a2;
  v37 = *(v35 + 20);
  v38 = *(v31 + 48);
  v100 = v35;
  v101 = a1;
  sub_23B3CE510(a1 + v37, v34, &qword_27E131C90, &unk_23B514EC0);
  v39 = v36 + v37;
  v40 = v36;
  sub_23B3CE510(v39, &v34[v38], &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(v34, 1, v23);
  if (v41)
  {
    OUTLINED_FUNCTION_51(&v34[v38], 1, v23);
    if (v41)
    {
      sub_23B398890(v34, &qword_27E131C90, &unk_23B514EC0);
      goto LABEL_13;
    }

LABEL_10:
    v42 = &qword_27E133150;
    v43 = &qword_23B5166C8;
    v44 = v34;
LABEL_11:
    sub_23B398890(v44, v42, v43);
    return 0;
  }

  sub_23B3CE510(v34, v30, &qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_51(&v34[v38], 1, v23);
  if (v41)
  {
    sub_23B398890(v30, &qword_27E131CA0, &qword_23B5101A0);
    goto LABEL_10;
  }

  sub_23B3CE5BC(&v34[v38], v26, &qword_27E131CA0, &qword_23B5101A0);
  v45 = sub_23B44249C();
  sub_23B398890(v26, &qword_27E131CA0, &qword_23B5101A0);
  v46 = OUTLINED_FUNCTION_65();
  sub_23B398890(v46, v47, &qword_23B5101A0);
  sub_23B398890(v34, &qword_27E131C90, &unk_23B514EC0);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v49 = v100;
  v48 = v101;
  if ((sub_23B4424C4() & 1) == 0 || (sub_23B4424EC() & 1) == 0)
  {
    return 0;
  }

  v50 = *(v49 + 32);
  v51 = *(v36 + v50);
  if (*(v48 + v50))
  {
    v52 = v99;
    if (!v51)
    {
      return 0;
    }

    sub_23B3E17F4();
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v52 = v99;
    if (v51)
    {
      return 0;
    }
  }

  if ((sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0 || (sub_23B3E61D8() & 1) == 0)
  {
    return 0;
  }

  v55 = *(v20 + 48);
  v56 = v108;
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v57, v58, v59, v60);
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v61, v62, v63, v64);
  v65 = v107;
  OUTLINED_FUNCTION_51(v56, 1, v107);
  if (v41)
  {
    OUTLINED_FUNCTION_51(v56 + v55, 1, v65);
    if (v41)
    {
      sub_23B398890(v56, &qword_27E131C78, &qword_23B50ED40);
      goto LABEL_33;
    }

LABEL_31:
    v42 = &qword_27E133138;
    v43 = &qword_23B5166B0;
LABEL_46:
    v44 = v56;
    goto LABEL_11;
  }

  v66 = v106;
  sub_23B3CE510(v56, v106, &qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_51(v56 + v55, 1, v65);
  if (v67)
  {
    OUTLINED_FUNCTION_13_16();
    sub_23B47C280();
    goto LABEL_31;
  }

  v68 = v104;
  sub_23B47C090(v56 + v55, v104);
  v69 = static AirQuality.== infix(_:_:)(v66, v68);
  sub_23B47C280();
  sub_23B47C280();
  sub_23B398890(v56, &qword_27E131C78, &qword_23B50ED40);
  if (!v69)
  {
    return 0;
  }

LABEL_33:
  v70 = *(v105 + 48);
  v56 = v98;
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v71, v72, v73, v74);
  OUTLINED_FUNCTION_59();
  sub_23B3CE510(v75, v76, v77, v78);
  OUTLINED_FUNCTION_51(v56, 1, v52);
  if (v41)
  {
    OUTLINED_FUNCTION_51(v56 + v70, 1, v52);
    if (v41)
    {
      sub_23B398890(v56, &qword_27E131EF0, &unk_23B50F220);
      goto LABEL_38;
    }

    goto LABEL_45;
  }

  v84 = v103;
  sub_23B3CE510(v56, v103, &qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_51(v56 + v70, 1, v52);
  if (v85)
  {
    OUTLINED_FUNCTION_10_19();
    sub_23B47C280();
LABEL_45:
    v42 = &qword_27E1339E0;
    v43 = &qword_23B519920;
    goto LABEL_46;
  }

  v86 = v56 + v70;
  v87 = v102;
  sub_23B47C090(v86, v102);
  sub_23B3E0724(*v84, *v87, v88, v89, v90, v91, v92, v93, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
  if ((v94 & 1) == 0)
  {
    sub_23B47C280();
    sub_23B47C280();
    v42 = &qword_27E131EF0;
    v43 = &unk_23B50F220;
    goto LABEL_46;
  }

  v95 = static WeatherMetadata.== infix(_:_:)(v84 + *(v52 + 20), v87 + *(v52 + 20));
  sub_23B47C280();
  sub_23B47C280();
  sub_23B398890(v56, &qword_27E131EF0, &unk_23B50F220);
  if (!v95)
  {
    return 0;
  }

LABEL_38:
  v79 = *(v49 + 48);
  v80 = *(v48 + v79);
  v81 = *(v40 + v79);
  if (v80)
  {
    if (v81)
    {
      swift_bridgeObjectRetain_n();

      sub_23B3DF420(v80, v81);
      v83 = v82;
      swift_bridgeObjectRelease_n();

      return (v83 & 1) != 0;
    }

LABEL_52:

    return 0;
  }

  if (v81)
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t Weather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1339E8, &qword_23B519928);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B47C0E8();
  sub_23B50D974();
  LOBYTE(v22) = 0;
  type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_11_15();
  sub_23B47C480(v11, v12);
  OUTLINED_FUNCTION_23_9();
  OUTLINED_FUNCTION_5_21();
  sub_23B50D7F4();
  if (!v2)
  {
    v20 = type metadata accessor for Weather(0);
    LOBYTE(v22) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_1_0(&qword_280B41A88);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    LOBYTE(v22) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_1_0(&qword_280B41A90);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    LOBYTE(v22) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_1_0(qword_280B41A98);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    v22 = *(v3 + v20[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B47C190(&qword_280B41A38, &unk_280B426F8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_5_21();
    sub_23B50D794();
    v13 = (v3 + v20[9]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 2);
    LOWORD(v22) = v14;
    BYTE2(v22) = v13;
    v21 = 5;
    sub_23B448E5C();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    LOBYTE(v22) = 6;
    type metadata accessor for AirQuality(0);
    OUTLINED_FUNCTION_14_22();
    sub_23B47C480(v15, v16);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    LOBYTE(v22) = 7;
    type metadata accessor for WeatherChanges(0);
    OUTLINED_FUNCTION_12_16();
    sub_23B47C480(v17, v18);
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
    v22 = *(v3 + v20[12]);
    v21 = 8;
    sub_23B47C13C();

    OUTLINED_FUNCTION_23_0();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Weather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v74 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v75 = v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v76 = v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v78 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v81 = v15;
  v80 = type metadata accessor for CurrentWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v82 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133A00, &qword_23B519930);
  OUTLINED_FUNCTION_5();
  v83 = v19;
  v84 = v20;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = v72 - v22;
  v24 = type metadata accessor for Weather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27();
  v28 = v27 - v26;
  v30 = *(v29 + 20);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  v90 = v30;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = *(v24 + 40);
  v36 = type metadata accessor for AirQuality(0);
  v37 = v35;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
  v87 = v24;
  v41 = *(v24 + 44);
  v42 = type metadata accessor for WeatherChanges(0);
  v89 = v41;
  v91 = v28;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_23B47C0E8();
  v85 = v23;
  v47 = v86;
  sub_23B50D964();
  if (v47)
  {
    __swift_destroy_boxed_opaque_existential_1(v88);
    v56 = v91;
    sub_23B398890(v91 + v90, &qword_27E131C90, &unk_23B514EC0);

    sub_23B398890(v56 + v37, &qword_27E131C78, &qword_23B50ED40);
    return sub_23B398890(v56 + v89, &qword_27E131EF0, &unk_23B50F220);
  }

  else
  {
    v48 = v81;
    v72[2] = v36;
    v72[1] = v42;
    LOBYTE(v93) = 0;
    OUTLINED_FUNCTION_11_15();
    sub_23B47C480(v49, v50);
    OUTLINED_FUNCTION_23_9();
    v51 = v82;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v86 = v37;
    OUTLINED_FUNCTION_15_14();
    v52 = v51;
    v53 = v91;
    sub_23B47C090(v52, v91);
    LOBYTE(v93) = 1;
    OUTLINED_FUNCTION_2_4(&qword_27E133180, &qword_27E131CA0, &qword_23B5101A0);
    OUTLINED_FUNCTION_23_9();
    sub_23B50D6D4();
    v54 = v87;
    sub_23B3C2510(v48, v53 + v90, &qword_27E131C90, &unk_23B514EC0);
    LOBYTE(v93) = 2;
    OUTLINED_FUNCTION_2_4(&qword_27E133188, &qword_27E131CA8, &unk_23B50ED70);
    OUTLINED_FUNCTION_23_9();
    v55 = v78;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    sub_23B3CE5BC(v55, v91 + v54[6], &qword_27E131CA8, &unk_23B50ED70);
    LOBYTE(v93) = 3;
    OUTLINED_FUNCTION_2_4(&qword_27E133190, &qword_27E131CB0, &qword_23B516B60);
    OUTLINED_FUNCTION_23_9();
    v57 = v76;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v58 = v86;
    v59 = v91;
    sub_23B3CE5BC(v57, v91 + v54[7], &qword_27E131CB0, &qword_23B516B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
    v92[0] = 4;
    sub_23B47C190(&qword_27E1331A0, &qword_27E1331A8, &protocol conformance descriptor for WeatherAlert, MEMORY[0x277D83978]);
    sub_23B50D6D4();
    *(v59 + v54[8]) = v93;
    v92[0] = 5;
    sub_23B448FA0();
    OUTLINED_FUNCTION_1_24();
    sub_23B50D734();
    v60 = BYTE2(v93);
    v61 = v59 + v54[9];
    *v61 = v93;
    *(v61 + 2) = v60;
    LOBYTE(v93) = 6;
    OUTLINED_FUNCTION_14_22();
    sub_23B47C480(v62, v63);
    OUTLINED_FUNCTION_23_9();
    v64 = v75;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    sub_23B3C2510(v64, v59 + v58, &qword_27E131C78, &qword_23B50ED40);
    LOBYTE(v93) = 7;
    OUTLINED_FUNCTION_12_16();
    sub_23B47C480(v65, v66);
    OUTLINED_FUNCTION_23_9();
    v67 = v74;
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    v68 = v91;
    sub_23B3C2510(v67, v91 + v89, &qword_27E131EF0, &unk_23B50F220);
    v92[0] = 8;
    sub_23B47C22C();
    OUTLINED_FUNCTION_1_24();
    sub_23B50D6D4();
    v69 = OUTLINED_FUNCTION_8_17();
    v70(v69);
    *(v68 + v54[12]) = v93;
    sub_23B3CE4B8(v68, v73);
    __swift_destroy_boxed_opaque_existential_1(v88);
    return sub_23B47C280();
  }
}

uint64_t Weather.isExpired.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52();
  v47 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  OUTLINED_FUNCTION_3(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v45 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v15 = sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for CurrentWeather(0);
  type metadata accessor for WeatherMetadata(0);
  v16 = sub_23B47C480(&qword_280B43110, MEMORY[0x277CC9578]);
  OUTLINED_FUNCTION_21_11();
  v48 = sub_23B50D114();
  v17 = *(v13 + 8);
  v18 = OUTLINED_FUNCTION_31();
  v17(v18);
  v19 = type metadata accessor for Weather(0);
  v20 = v19[10];
  v44 = v1;
  sub_23B3CE510(v1 + v20, v11, &qword_27E131C78, &qword_23B50ED40);
  v21 = type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_51(v11, 1, v21);
  v46 = v15;
  v43 = v16;
  v41 = v13 + 8;
  if (v22)
  {
    sub_23B398890(v11, &qword_27E131C78, &qword_23B50ED40);
    v42 = 0;
  }

  else
  {
    v40 = v19;
    sub_23B50B994();
    OUTLINED_FUNCTION_21_11();
    v23 = sub_23B50D114();
    v19 = v40;
    v42 = v23;
    v24 = OUTLINED_FUNCTION_31();
    v17(v24);
    OUTLINED_FUNCTION_13_16();
    sub_23B47C280();
  }

  v25 = v44;
  v26 = v45;
  sub_23B3CE510(v44 + v19[5], v45, &qword_27E131C90, &unk_23B514EC0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_51(v26, 1, v27);
  if (v22)
  {
    sub_23B398890(v26, &qword_27E131C90, &unk_23B514EC0);
    v28 = 0;
  }

  else
  {
    sub_23B50B994();
    OUTLINED_FUNCTION_21_11();
    v28 = sub_23B50D114();
    v29 = OUTLINED_FUNCTION_31();
    v17(v29);
    sub_23B398890(v26, &qword_27E131CA0, &qword_23B5101A0);
  }

  if (*(v25 + v19[8]))
  {
    v30 = Array<A>.isExpired.getter();
  }

  else
  {
    v30 = 0;
  }

  v31 = v25 + v19[11];
  v32 = v47;
  sub_23B3CE510(v31, v47, &qword_27E131EF0, &unk_23B50F220);
  v33 = type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_51(v32, 1, v33);
  if (v22)
  {
    sub_23B398890(v32, &qword_27E131EF0, &unk_23B50F220);
    v36 = 0;
  }

  else
  {
    v34 = v28;
    v35 = v17;
    sub_23B50B994();
    OUTLINED_FUNCTION_21_11();
    v36 = sub_23B50D114();
    v37 = OUTLINED_FUNCTION_31();
    v35(v37);
    v28 = v34;
    OUTLINED_FUNCTION_10_19();
    sub_23B47C280();
  }

  return (v48 | v42 | v28 | v30 | v36) & 1;
}

uint64_t sub_23B47C090(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

unint64_t sub_23B47C0E8()
{
  result = qword_27E1339F0;
  if (!qword_27E1339F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1339F0);
  }

  return result;
}

unint64_t sub_23B47C13C()
{
  result = qword_27E1339F8;
  if (!qword_27E1339F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1339F8);
  }

  return result;
}

uint64_t sub_23B47C190(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131EB8, &unk_23B519380);
    sub_23B47C480(a2, type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B47C22C()
{
  result = qword_27E133A08;
  if (!qword_27E133A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A08);
  }

  return result;
}

uint64_t sub_23B47C280()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_23B47C2FC(uint64_t a1)
{
  type metadata accessor for CurrentWeather(319);
  if (v1 <= 0x3F)
  {
    sub_23B442A7C(319, &qword_280B43628, &qword_27E131CA0, &qword_23B5101A0);
    if (v2 <= 0x3F)
    {
      sub_23B3C1C00(319);
      if (v3 <= 0x3F)
      {
        sub_23B3C1DD4(319);
        if (v4 <= 0x3F)
        {
          sub_23B442A7C(319, &qword_280B43420, &qword_27E131EB8, &unk_23B519380);
          if (v5 <= 0x3F)
          {
            sub_23B3C1F2C(319, qword_280B44448, type metadata accessor for AirQuality);
            if (v6 <= 0x3F)
            {
              sub_23B3C1F2C(319, qword_280B44640, type metadata accessor for WeatherChanges);
              if (v7 <= 0x3F)
              {
                sub_23B47C4C4();
                if (v8 <= 0x3F)
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
}

uint64_t sub_23B47C480(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_77();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B47C4C4()
{
  if (!qword_280B43888)
  {
    v0 = sub_23B50D504();
    if (!v1)
    {
      atomic_store(v0, &qword_280B43888);
    }
  }
}

uint64_t getEnumTagSinglePayload for Weather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Weather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B47C67C()
{
  result = qword_27E133A20;
  if (!qword_27E133A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A20);
  }

  return result;
}

unint64_t sub_23B47C6D4()
{
  result = qword_27E133A28;
  if (!qword_27E133A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133A28);
  }

  return result;
}

unint64_t sub_23B47C72C()
{
  result = qword_27E133A30[0];
  if (!qword_27E133A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133A30);
  }

  return result;
}

uint64_t DailyWeatherStatistics.init(days:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v11 = type metadata accessor for DailyWeatherStatistics(0, v15);
  v12 = *(v11 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(&a8[v12], a2);
  return sub_23B3CA20C(a3, &a8[*(v11 + 56)]);
}

uint64_t DailyWeatherStatistics.days.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DailyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t DailyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_23B47CA7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B47CB94(char a1)
{
  if (!a1)
  {
    return 1937334628;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_23B47CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B47CA7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B47CC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B47CC80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DailyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v5;
  v18[1] = a2;
  v23[0] = v19;
  v23[1] = v5;
  type metadata accessor for DailyWeatherStatistics.CodingKeys(255, v23);
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v23[0] = *v3;
  v24 = 0;
  sub_23B50D304();
  v22 = v20;
  swift_getWitnessTable();
  v12 = v21;
  sub_23B50D7F4();
  if (!v12)
  {
    LOBYTE(v23[0]) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_6_15();
    LOBYTE(v23[0]) = 2;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v15, v16, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t DailyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v45 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v44 = v12;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v48 = v14;
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v47 = v15;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  type metadata accessor for DailyWeatherStatistics.CodingKeys(255, &v56);
  OUTLINED_FUNCTION_3_33();
  swift_getWitnessTable();
  v52 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v46 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v50 = a2;
  v51 = a3;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v20 = type metadata accessor for DailyWeatherStatistics(0, &v56);
  OUTLINED_FUNCTION_5();
  v42 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v40 - v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v19;
  v25 = v54;
  sub_23B50D964();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v46;
  v26 = v47;
  v41 = v24;
  v54 = a1;
  v29 = v48;
  v28 = v49;
  sub_23B50D304();
  v60 = 0;
  v55 = v51;
  swift_getWitnessTable();
  sub_23B50D734();
  v51 = v56;
  *v41 = v56;
  LOBYTE(v56) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v30, v31, MEMORY[0x277CC95A0]);
  v32 = v26;
  sub_23B50D734();
  v50 = v20;
  v33 = v41;
  (*(v29 + 32))(v41 + *(v20 + 52), v32, v28);
  LOBYTE(v56) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v34, v35, &protocol conformance descriptor for WeatherMetadata);
  v36 = v44;
  sub_23B50D734();
  (*(v27 + 8))(v53, v52);
  v37 = v50;
  sub_23B3CA20C(v36, v33 + *(v50 + 56));
  v38 = v42;
  (*(v42 + 16))(v43, v33, v37);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return (*(v38 + 8))(v33, v37);
}

uint64_t sub_23B47D530(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47D5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B47D5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B47D624(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B47D698(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B47D698(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  DailyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B47D754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B47D7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B47D848(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_39();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B47D8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = DailyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B47D99C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B47D9F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B47DA6C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t WeatherAQIScaleCacheManager.__allocating_init(store:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  WeatherAQIScaleCacheManager.init(store:)(a1, a2);
  return v4;
}

uint64_t sub_23B47DBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23B50C3C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321C0, &qword_23B510190);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  result = sub_23B50C364();
  if (v16)
  {

    result = sub_23B50C374();
    if (v17)
    {

      result = sub_23B50C3B4();
      if (v18)
      {

        sub_23B50C3A4();
        v19 = sub_23B50C9B4();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v19);
        result = sub_23B398890(v14, &qword_27E1321C0, &qword_23B510190);
        if (EnumTagSinglePayload != 1)
        {
          os_unfair_lock_lock((v4 + 16));
          v21 = sub_23B3A461C((v4 + 24));

          (*(v9 + 16))(v11, a1, v8);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v21;
          sub_23B47E760(v11, a2, a3, isUniquelyReferenced_nonNull_native);

          v23 = v25;
          *(v4 + 24) = v25;

          os_unfair_lock_unlock((v4 + 16));
          sub_23B47DE20(v23);
        }
      }
    }
  }

  return result;
}

void sub_23B47DE20(uint64_t a1)
{
  v56 = a1;
  v62 = sub_23B50C3C4();
  v1 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD0, &qword_23B519F70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v51 - v7);
  if (sub_23B3A528C())
  {
    v9 = *(v56 + 64);
    v58 = v56 + 64;
    v10 = 1 << *(v56 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v9;
    v52 = (v10 + 63) >> 6;
    v54 = v1 + 16;
    v55 = v1;
    v60 = (v1 + 32);

    v13 = 0;
    *&v14 = 136446210;
    v51 = v14;
    v61 = v8;
    v57 = v5;
    while (v12)
    {
      v64 = 0;
      v15 = v13;
LABEL_11:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = v55;
      v19 = (*(v56 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = v62;
      v23 = v63;
      (*(v55 + 16))(v63, *(v56 + 56) + *(v55 + 72) * v17, v62);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
      v25 = *(v24 + 48);
      *v5 = v21;
      v5[1] = v20;
      (*(v18 + 32))(v5 + v25, v23, v22);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v24);

      v8 = v61;
LABEL_12:
      sub_23B47E8D4(v5, v8);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
      if (__swift_getEnumTagSinglePayload(v8, 1, v26) == 1)
      {

        return;
      }

      v27 = *v8;
      v28 = v8[1];
      v29 = v8 + *(v26 + 48);
      v30 = v63;
      (*v60)(v63, v29, v62);
      v31 = sub_23B44C840(v27, v28, v30);
      v33 = v32;
      v35 = v34;
      sub_23B50CF04();
      v66 = v31;
      v67 = v33;
      v68 = v35;
      v36 = v64;
      sub_23B50CED4();
      if (v36)
      {

        if (qword_280B43440 != -1)
        {
          swift_once();
        }

        v37 = sub_23B50CDF4();
        __swift_project_value_buffer(v37, qword_280B4E9D8);

        v38 = sub_23B50CDD4();
        v39 = sub_23B50D4B4();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v64 = v36;
          v53 = v39;
          v41 = v40;
          v42 = swift_slowAlloc();
          v65 = v42;
          *v41 = v51;
          v66 = v31;
          v67 = v33;
          v68 = v35;

          v43 = sub_23B50D184();
          v45 = sub_23B391F1C(v43, v44, &v65);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_23B38D000, v38, v53, "Failed to save AQI scale to the store, error=%{public}s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x23EE9E260](v42, -1, -1);
          MEMORY[0x23EE9E260](v41, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }

      v5 = v57;
      v8 = v61;
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v52)
      {
        v64 = 0;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD8, &qword_23B519F78);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v46);
        v12 = 0;
        goto LABEL_12;
      }

      v12 = *(v58 + 8 * v15);
      ++v13;
      if (v12)
      {
        v64 = 0;
        v13 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_280B43440 != -1)
  {
LABEL_31:
    swift_once();
  }

  v47 = sub_23B50CDF4();
  __swift_project_value_buffer(v47, qword_280B4E9D8);
  v64 = sub_23B50CDD4();
  v48 = sub_23B50D4B4();
  if (os_log_type_enabled(v64, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_23B38D000, v64, v48, "no store AQI scale database is setup - aborting caching", v49, 2u);
    MEMORY[0x23EE9E260](v49, -1, -1);
  }

  v50 = v64;
}

uint64_t sub_23B47E484()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = sub_23B3A461C((v0 + 24));

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133AE8, &qword_23B519F88);
  sub_23B50D0B4();
  *(v1 + 24) = v2;

  os_unfair_lock_unlock((v1 + 16));
  sub_23B47DE20(v2);
}

Swift::Void __swiftcall WeatherAQIScaleCacheManager.reloadStore()()
{
  os_unfair_lock_lock((v0 + 16));

  *(v0 + 24) = sub_23B3A4A40();

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t WeatherAQIScaleCacheManager.deinit()
{
  sub_23B398890(v0 + 24, &qword_27E133AC0, &qword_23B519F10);

  return v0;
}

uint64_t WeatherAQIScaleCacheManager.__deallocating_deinit()
{
  WeatherAQIScaleCacheManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_23B47E608(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23B3A7084(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133088, &qword_23B519FA0);
  if ((sub_23B50D624() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_23B3A7084(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_23B50D864();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ReverseGeocodeResult(0) - 8) + 72) * v12;

    sub_23B47EA8C(a1, v18);
  }

  else
  {
    sub_23B47E944(v12, a2, a3, a1, v16);
  }
}

void sub_23B47E760(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23B3A7084(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AE0, &qword_23B519F80);
  if ((sub_23B50D624() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_23B3A7084(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_23B50D864();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_23B50C3C4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    v20(v22, a1, v21);
  }

  else
  {
    sub_23B47E9DC(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_23B47E8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133AD0, &qword_23B519F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B47E944(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ReverseGeocodeResult(0);
  result = sub_23B437AC8(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23B47E9DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23B50C3C4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_23B47EA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodeResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Percentiles.init(p10:p50:p90:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v17 = *(v11 + 32);
  v17(a5, a1, v10);
  v14 = type metadata accessor for Percentiles(0, a4, v12, v13);
  v17(a5 + *(v14 + 28), a2, v10);
  v15 = a5 + *(v14 + 32);

  return (v17)(v15, a3, v10);
}

uint64_t Percentiles.p10.getter@<X0>(uint64_t a2@<X8>)
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t Percentiles.p10.setter(uint64_t a1, uint64_t a2)
{
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2, a1, v4);
}

uint64_t Percentiles.p50.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t Percentiles.p50.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t Percentiles.p90.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t Percentiles.p90.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t static Percentiles.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23B50A9E4();
  swift_getWitnessTable();
  if (sub_23B50D134() & 1) != 0 && (type metadata accessor for Percentiles(0, a3, v4, v5), (OUTLINED_FUNCTION_4_2()))
  {
    return OUTLINED_FUNCTION_4_2() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B47EF68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3158384 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 3159408 && a2 == 0xE300000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 3160432 && a2 == 0xE300000000000000)
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

uint64_t sub_23B47F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B47EF68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B47F0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B47F108(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Percentiles.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a2;
  type metadata accessor for Percentiles.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_2_30();
  swift_getWitnessTable();
  v5 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  v16 = 0;
  sub_23B50A9E4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_24();
  v11 = v13[3];
  sub_23B50D7F4();
  if (!v11)
  {
    v15 = 1;
    OUTLINED_FUNCTION_4_24();
    sub_23B50D7F4();
    v14 = 2;
    OUTLINED_FUNCTION_4_24();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Percentiles.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v48 = sub_23B50A9E4();
  OUTLINED_FUNCTION_5();
  v51 = v5;
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v40 - v9;
  MEMORY[0x28223BE20](v10);
  v47 = &v40 - v11;
  type metadata accessor for Percentiles.CodingKeys(255, a2, v12, v13);
  OUTLINED_FUNCTION_2_30();
  swift_getWitnessTable();
  sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v49 = v15;
  v50 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v20 = type metadata accessor for Percentiles(0, a2, v18, v19);
  OUTLINED_FUNCTION_5();
  v43 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v17;
  v25 = v53;
  sub_23B50D964();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v24;
  v53 = a1;
  v26 = v51;
  v56 = 0;
  v27 = v48;
  WitnessTable = swift_getWitnessTable();
  v29 = v47;
  sub_23B50D734();
  v41 = *(v26 + 32);
  v41(v42, v29, v27);
  v55 = 1;
  v30 = v46;
  OUTLINED_FUNCTION_6_16();
  v47 = WitnessTable;
  sub_23B50D734();
  v40 = v20;
  v31 = *(v20 + 28);
  v32 = v41;
  v41(&v42[v31], v30, v27);
  v54 = 2;
  v33 = v45;
  OUTLINED_FUNCTION_6_16();
  sub_23B50D734();
  v34 = OUTLINED_FUNCTION_3_34();
  v35(v34);
  v36 = v40;
  v37 = v42;
  v32(&v42[*(v40 + 32)], v33, v27);
  v38 = v43;
  (*(v43 + 16))(v44, v37, v36);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return (*(v38 + 8))(v37, v36);
}

_BYTE *sub_23B47F818(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherKit::WeatherServiceHourlyRelativeRange __swiftcall WeatherServiceHourlyRelativeRange.init(start:end:relativeTo:)(Swift::Int start, Swift::Int end, WeatherKit::WeatherServiceHourlyRelativeRange::RelativeTo relativeTo)
{
  v4 = *relativeTo;
  *v3 = start;
  *(v3 + 8) = end;
  *(v3 + 16) = v4;
  result.end = end;
  result.start = start;
  result.relativeTo = relativeTo;
  return result;
}

WeatherKit::WeatherServiceHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherServiceHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherServiceHourlyRelativeRange.RelativeTo.rawValue.getter()
{
  if (*v0)
  {
    return 7827310;
  }

  else
  {
    return 7954788;
  }
}

unint64_t sub_23B47F9E0()
{
  result = qword_27E133B70;
  if (!qword_27E133B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B70);
  }

  return result;
}

uint64_t sub_23B47FA58@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B47FC20()
{
  result = qword_27E133B78;
  if (!qword_27E133B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B78);
  }

  return result;
}

uint64_t Swell.init(height:direction:period:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a3, a1);
  v9 = type metadata accessor for Swell(0);
  v10 = *(v9 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  result = (*(v11 + 32))(a3 + v10, a2);
  *(a3 + *(v9 + 24)) = a4;
  return result;
}

uint64_t Swell.height.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Swell.height.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t Swell.direction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Swell(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Swell.direction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Swell(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Swell.period.setter(double a1)
{
  result = type metadata accessor for Swell(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_23B480024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000)
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

uint64_t sub_23B480134(char a1)
{
  if (!a1)
  {
    return 0x746867696568;
  }

  if (a1 == 1)
  {
    return 0x6F69746365726964;
  }

  return 0x646F69726570;
}

uint64_t sub_23B480190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B480024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4801B8(uint64_t a1)
{
  v2 = sub_23B480444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4801F4(uint64_t a1)
{
  v2 = sub_23B480444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Swell.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133B80, &qword_23B51A2C8);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B480444();
  sub_23B50D974();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2_31();
  sub_23B3F1C50(v9, v10, &qword_23B50EFB0, v11);
  sub_23B50D7F4();
  if (!v1)
  {
    v16[1] = type metadata accessor for Swell(0);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v12, v13, &qword_23B510118, v14);
    sub_23B50D7F4();
    v17 = 2;
    sub_23B50D7C4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B480444()
{
  result = qword_27E133B88;
  if (!qword_27E133B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133B88);
  }

  return result;
}

uint64_t Swell.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_5();
  v30 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v31 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v35 = &v28 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133B90, &qword_23B51A2D0);
  OUTLINED_FUNCTION_5();
  v32 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for Swell(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_23B480444();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v28 = v14;
  v19 = v33;
  v39 = 0;
  OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
  sub_23B50D734();
  v20 = *(v31 + 32);
  v21 = v35;
  v35 = v8;
  v20(v17, v21, v8);
  v38 = 1;
  OUTLINED_FUNCTION_3_8(&qword_27E133B98, &qword_27E132170, &qword_23B510118);
  sub_23B50D734();
  (*(v30 + 32))(&v17[*(v28 + 20)], v7, v19);
  v37 = 2;
  sub_23B50D704();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_4_25();
  v25(v24);
  v26 = v29;
  *&v17[*(v28 + 24)] = v23;
  sub_23B4808CC(v17, v26);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_23B480930(v17);
}

uint64_t sub_23B4808CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Swell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B480930(uint64_t a1)
{
  v2 = type metadata accessor for Swell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Swell.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v4, v5, &qword_23B50EFB0, v6);
  if (sub_23B50D134() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118), v7 = type metadata accessor for Swell(0), OUTLINED_FUNCTION_3_35(), sub_23B3F1C50(v8, v9, &qword_23B510118, v10), (sub_23B50D134()))
  {
    return *(a1 + *(v7 + 24)) == *(a2 + *(v7 + 24));
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for Swell.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B480BD0()
{
  result = qword_27E133BA0;
  if (!qword_27E133BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BA0);
  }

  return result;
}

unint64_t sub_23B480C28()
{
  result = qword_27E133BA8;
  if (!qword_27E133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BA8);
  }

  return result;
}

unint64_t sub_23B480C80()
{
  result = qword_27E133BB0;
  if (!qword_27E133BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BB0);
  }

  return result;
}

uint64_t DayPrecipitationStatistics.init(day:averagePrecipitationProbability:averagePrecipitationAmount:averageSnowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  v8 = type metadata accessor for DayPrecipitationStatistics(0);
  v9 = *(v8 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v14 = *(v11 + 32);
  v14(a4 + v9, a2, v10);
  v12 = a4 + *(v8 + 28);

  return (v14)(v12, a3, v10);
}

uint64_t DayPrecipitationStatistics.averagePrecipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationStatistics(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayPrecipitationStatistics.averagePrecipitationAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_26() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t DayPrecipitationStatistics.averageSnowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationStatistics(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayPrecipitationStatistics.averageSnowfallAmount.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_26() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t static DayPrecipitationStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0), type metadata accessor for DayPrecipitationStatistics(0), sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]), (sub_23B50D134() & 1) != 0))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B481150(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000023B528820 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000023B528840 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B528860 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_23B50D834();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_23B4812B8(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B481354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B481150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48137C(uint64_t a1)
{
  v2 = sub_23B4815D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4813B8(uint64_t a1)
{
  v2 = sub_23B4815D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayPrecipitationStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133BB8, &qword_23B51A488);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4815D8();
  sub_23B50D974();
  v17[2] = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v17[1] = 1;
    sub_23B50D7C4();
    v11 = type metadata accessor for DayPrecipitationStatistics(0);
    v12 = *(v11 + 24);
    v17[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_2_6(v3 + v12, v17);
    v13 = *(v11 + 28);
    v16 = 3;
    OUTLINED_FUNCTION_2_6(v3 + v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4815D8()
{
  result = qword_27E133BC0;
  if (!qword_27E133BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BC0);
  }

  return result;
}

uint64_t DayPrecipitationStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133BC8, &qword_23B51A490);
  OUTLINED_FUNCTION_5();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for DayPrecipitationStatistics(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23B4815D8();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v33 = v7;
  v34 = v15;
  v21 = v36;
  v20 = v37;
  v22 = v38;
  v23 = v39;
  v44 = 0;
  OUTLINED_FUNCTION_3_1();
  *v18 = sub_23B50D724();
  v43 = 1;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D704();
  v32 = v18;
  v18[1] = v24;
  v42 = 2;
  sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  v25 = *(v34 + 24);
  v30 = *(v23 + 32);
  v31 = v25;
  v30(v32 + v25, v10, v20);
  v41 = 3;
  v26 = v33;
  OUTLINED_FUNCTION_3_1();
  sub_23B50D734();
  (*(v21 + 8))(v14, v22);
  v27 = v32;
  v30(v32 + *(v34 + 28), v26, v20);
  sub_23B4819D0(v27, v35);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_23B481A34(v27);
}

uint64_t sub_23B4819D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPrecipitationStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B481A34(uint64_t a1)
{
  v2 = type metadata accessor for DayPrecipitationStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayPrecipitationStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B481BCC()
{
  result = qword_27E133BD0;
  if (!qword_27E133BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BD0);
  }

  return result;
}

unint64_t sub_23B481C24()
{
  result = qword_27E133BD8;
  if (!qword_27E133BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BD8);
  }

  return result;
}

unint64_t sub_23B481C7C()
{
  result = qword_27E133BE0;
  if (!qword_27E133BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133BE0);
  }

  return result;
}

uint64_t sub_23B481CD0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v227 = a5;
  v226 = a4;
  v222 = a1;
  v245[1] = *v5;
  v246 = v5;
  v216 = sub_23B50CB54();
  OUTLINED_FUNCTION_5();
  v215 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v243 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52();
  v242 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_52();
  v241 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v29);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v33 = OUTLINED_FUNCTION_3(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v35);
  v212 = sub_23B50B7E4();
  OUTLINED_FUNCTION_5();
  v211 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v38);
  v39 = sub_23B50B604();
  v40 = OUTLINED_FUNCTION_3(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v44);
  sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v244 = v45;
  v245[0] = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_55(v47);
  v219 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_76();
  v252 = v50;
  v253 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v248 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_55(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_76();
  v251 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_76();
  v250 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_76();
  v247 = v61;
  v221 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_76();
  v249 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v66 = OUTLINED_FUNCTION_3(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v67);
  v69 = &v206 - v68;
  v70 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v72 = v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v206 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v78 = &v206 - v77;
  v213 = *a2;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  v79 = *(Options + 20);
  v228 = a3;
  v80 = a3 + v79;
  v81 = v70;
  sub_23B3CE510(v80, v69, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v69, 1, v70);
  if (v82)
  {
    v83 = v72;
    sub_23B50AEE4();
    OUTLINED_FUNCTION_51(v69, 1, v70);
    if (!v82)
    {
      sub_23B398890(v69, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    v83 = v72;
    (*(v72 + 32))(v78, v69, v70);
  }

  sub_23B50B9D4();
  v84 = v229;
  sub_23B50B994();
  v85 = v247;
  v223 = v78;
  sub_23B50ABA4();
  v86 = v248 + 8;
  v87 = *(v248 + 8);
  v88 = v253;
  v87(v84, v253);
  sub_23B50AEE4();
  sub_23B50ABA4();
  v90 = *(v83 + 8);
  v89 = v83 + 8;
  v225 = v81;
  v218 = v90;
  v90(v75, v81);
  v234 = v87;
  v232 = v86;
  v87(v85, v88);
  sub_23B50AC94();
  v210 = sub_23B50AD84();
  v209 = v91;
  v92 = v228;
  sub_23B3CE510(v228 + v79, v233, &qword_27E131F68, &unk_23B50F2A0);
  v93 = v92[1];
  v207 = *v92;
  v94 = Options;
  if ((*(v92 + *(Options + 24) + 8) & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    v95 = OUTLINED_FUNCTION_4_27(&v264);
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
  }

  else
  {

    OUTLINED_FUNCTION_144();
    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
  }

  v103 = v231;
  v263 = *(v92 + *(v94 + 28));
  sub_23B3A1C3C();
  OUTLINED_FUNCTION_26_13();
  v104 = v253;
  v208 = v93;
  if (v82)
  {
    OUTLINED_FUNCTION_30_7();
    v114 = v237;
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    v262 = v105;
    v261 = v106 & 1;
    v107 = vdupq_n_s64(v106);
    v254 = v108;
    v255 = v105;
    v256 = v109;
    v257 = v106 & 1;
    v258 = OUTLINED_FUNCTION_36_5(vshlq_u64(v107, xmmword_23B5192A0), vshlq_u64(v107, xmmword_23B519290)).u32[0];
    v259 = v110;
    v260 = v111;
    v112 = v237;
    sub_23B3A205C();
    OUTLINED_FUNCTION_30_7();
    v114 = v112;
  }

  v113(v114);
  v115 = *(v92 + *(v94 + 32));
  v116 = sub_23B50AA24();
  v117 = OUTLINED_FUNCTION_4_27(&v265);
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v116);
  v120 = v248 + 16;
  v121 = *(v248 + 16);
  v121(v247, v249, v104);
  v231 = v120;
  v121(v229, v250, v104);
  v122 = Options;

  OUTLINED_FUNCTION_144();
  sub_23B50AA04();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_40_4(v123, v124, v125, v116);
  sub_23B50B894();
  v126 = OUTLINED_FUNCTION_4_27(&v266);
  OUTLINED_FUNCTION_40_4(v126, v127, v128, v129);
  sub_23B50B864();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v130, v131, v132, v133);
  sub_23B50B874();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v134, v135, v136, v137);
  sub_23B50B8A4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v141);
  sub_23B3CE510(v92 + *(v122 + 36), v103, &qword_27E1338B0, &unk_23B519390);
  v142 = type metadata accessor for WeatherNetworkActivity(0);
  v143 = OUTLINED_FUNCTION_27_10();
  OUTLINED_FUNCTION_51(v143, v144, v142);
  if (v82)
  {
    sub_23B398890(v103, &qword_27E1338B0, &unk_23B519390);
    v147 = 1;
    v145 = v214;
  }

  else
  {
    v145 = *(v103 + 1);
    sub_23B3CE510(v103 + *(v142 + 28), v206, &qword_27E1321E8, &qword_23B5101C0);
    OUTLINED_FUNCTION_144();
    v92 = v228;
    sub_23B50C824();
    OUTLINED_FUNCTION_17_13();
    sub_23B48712C(v103, v146);
    v147 = 0;
  }

  v148 = v208;
  v149 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v145, v147, 1, v149);
  v150 = v145;
  v151 = *(v92 + *(v122 + 40));
  sub_23B50AD94();
  OUTLINED_FUNCTION_30_7();
  v152 = v217;
  v153(v217);
  sub_23B50B784(v210, v209, v233, v152, v207, v148, v235, v236, v237, v115, v238, v239, v240, v241, v242, v243, v150, v151);
  v254 = v213;
  v255 = 0;
  v154 = v222;
  v243 = sub_23B482F30(v222, &v254);
  v155 = v251;
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v156 = sub_23B50CDF4();
  __swift_project_value_buffer(v156, qword_280B4E9D8);
  v157 = OUTLINED_FUNCTION_37_5(v245);
  v158 = v253;
  v159 = v121;
  v121(v157, v155, v253);
  v160 = v154;
  v161 = sub_23B50CDD4();
  v162 = sub_23B50D4C4();

  v163 = os_log_type_enabled(v161, v162);
  v224 = v89;
  v212 = v121;
  if (v163)
  {
    v164 = OUTLINED_FUNCTION_42_0();
    v254 = swift_slowAlloc();
    *v164 = 141558531;
    *(v164 + 4) = 1752392040;
    *(v164 + 12) = 2081;
    v263 = v160;
    sub_23B3A3BC8();
    v165 = v160;
    v166 = sub_23B50D1A4();
    v168 = sub_23B391F1C(v166, v167, &v254);

    *(v164 + 14) = v168;
    *(v164 + 22) = 2082;
    v169 = v247;
    v159(v247, v150, v158);
    v170 = sub_23B50D1A4();
    v172 = v171;
    v173 = OUTLINED_FUNCTION_32_6();
    v174(v173);
    v175 = sub_23B391F1C(v170, v172, &v254);

    *(v164 + 24) = v175;
    OUTLINED_FUNCTION_47_3(&dword_23B38D000, v176, v177, "About to fetch nano weather data; location=%{private,mask.hash}s, startTime=%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_16_1();
  }

  else
  {

    v179 = OUTLINED_FUNCTION_32_6();
    v178 = v180(v179);
    v169 = v247;
  }

  MEMORY[0x28223BE20](v178);
  v181 = v246;
  v182 = v252;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133950, &unk_23B519500);
  sub_23B50B0C4();

  v183 = v244;
  v184 = v245[0];
  v185 = v220;
  (*(v245[0] + 16))(v220, v182, v244);
  v186 = (*(v184 + 80) + 24) & ~*(v184 + 80);
  v187 = swift_allocObject();
  *(v187 + 16) = v160;
  (*(v184 + 32))(v187 + v186, v185, v183);
  v188 = v160;
  v189 = sub_23B50B034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v243 = sub_23B50B064();

  v190 = v253;
  v212(v169, v251, v253);
  v191 = v248;
  v192 = (*(v248 + 80) + 16) & ~*(v248 + 80);
  v193 = (v221 + v192 + 7) & 0xFFFFFFFFFFFFFFF8;
  v194 = (v193 + 15) & 0xFFFFFFFFFFFFFFF8;
  v195 = swift_allocObject();
  (*(v191 + 32))(v195 + v192, v169, v190);
  *(v195 + v193) = v188;
  *(v195 + v194) = v181;
  v196 = (v195 + ((v194 + 15) & 0xFFFFFFFFFFFFFFF8));
  v197 = v226;
  v198 = v227;
  *v196 = v226;
  v196[1] = v198;
  v199 = v188;

  v200 = sub_23B50B034();
  sub_23B50B074();

  v201 = swift_allocObject();
  v201[2] = v199;
  v201[3] = v197;
  v201[4] = v198;
  v202 = v199;

  v203 = sub_23B50B034();
  sub_23B50B084();

  v204 = v234;
  v234(v251, v190);
  v204(v250, v190);
  v204(v249, v190);
  v218(v223, v225);
  return (*(v245[0] + 8))(v252, v244);
}

void *sub_23B482F30(void *a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    if (qword_280B43440 != -1)
    {
      swift_once();
    }

    v3 = sub_23B50CDF4();
    __swift_project_value_buffer(v3, qword_280B4E9D8);
    v4 = a1;
    v5 = sub_23B50CDD4();
    v6 = sub_23B50D4C4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_23B3A3BC8();
      v9 = v4;
      v10 = sub_23B50D1A4();
      v12 = sub_23B391F1C(v10, v11, &v14);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_23B38D000, v5, v6, "Data sets were empty, falling back to aggregate fetch; location=%{private,mask.hash}s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x23EE9E260](v8, -1, -1);
      MEMORY[0x23EE9E260](v7, -1, -1);
    }

    return &unk_284E0DC40;
  }

  else
  {
    v14 = *a2;
    return sub_23B486A94(&v14);
  }
}

uint64_t sub_23B4830CC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  [a3 coordinate];
  return sub_23B50B734();
}

uint64_t sub_23B483150(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v137 = a7;
  v138 = a6;
  v164 = a5;
  v168 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  MEMORY[0x28223BE20](v135);
  v136 = &v134 - v10;
  v141 = type metadata accessor for WatchWeather(0);
  MEMORY[0x28223BE20](v141);
  v145 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23B50B654();
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v162 = (&v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v140 = &v134 - v18;
  MEMORY[0x28223BE20](v19);
  v150 = &v134 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v139 = &v134 - v25;
  MEMORY[0x28223BE20](v26);
  v151 = &v134 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  MEMORY[0x28223BE20](v28 - 8);
  v156 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v144 = &v134 - v31;
  MEMORY[0x28223BE20](v32);
  v152 = &v134 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  MEMORY[0x28223BE20](v34 - 8);
  v161 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v143 = &v134 - v37;
  MEMORY[0x28223BE20](v38);
  v154 = &v134 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v142 = &v134 - v44;
  MEMORY[0x28223BE20](v45);
  v157 = &v134 - v46;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  MEMORY[0x28223BE20](v166);
  v165 = (&v134 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v48 - 8);
  v167 = &v134 - v49;
  v50 = sub_23B50AD24();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v134 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B50AD14();
  sub_23B50ABD4();
  v55 = v54;
  (*(v51 + 8))(v53, v50);
  if (qword_280B43440 != -1)
  {
LABEL_46:
    swift_once();
  }

  v56 = sub_23B50CDF4();
  v57 = __swift_project_value_buffer(v56, qword_280B4E9D8);
  v58 = a4;
  v146 = v57;
  v59 = sub_23B50CDD4();
  v60 = sub_23B50D4C4();

  v61 = os_log_type_enabled(v59, v60);
  v147 = v16;
  v153 = v23;
  v159 = v58;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v172 = v63;
    *v62 = 141558531;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2081;
    *&v170 = v159;
    sub_23B3A3BC8();
    v64 = v159;
    v65 = sub_23B50D1A4();
    v67 = sub_23B391F1C(v65, v66, &v172);

    *(v62 + 14) = v67;
    *(v62 + 22) = 2050;
    *(v62 + 24) = v55;
    _os_log_impl(&dword_23B38D000, v59, v60, "Got response for fetch of nano weather data + corresponding AQI scale; location=%{private,mask.hash}s, duration=%{public}f", v62, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x23EE9E260](v63, -1, -1);
    v68 = v62;
    v58 = v159;
    MEMORY[0x23EE9E260](v68, -1, -1);
  }

  v23 = v156;
  v69 = v165;
  sub_23B3CE510(v168, v165, &qword_27E132D70, &qword_23B515160);
  v70 = *v69;
  sub_23B3CE5BC(v69 + *(v166 + 48), v167, &qword_27E131EA8, &qword_23B5194F0);
  v166 = *(v70 + 16);
  if (v166)
  {
    v165 = v70;
    a4 = type metadata accessor for CurrentWeather(0);
    __swift_storeEnumTagSinglePayload(v157, 1, 1, a4);
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v160);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
    __swift_storeEnumTagSinglePayload(v152, 1, 1, v158);
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
    __swift_storeEnumTagSinglePayload(v151, 1, 1, v155);
    v149 = type metadata accessor for AirQuality(0);
    __swift_storeEnumTagSinglePayload(v150, 1, 1, v149);
    v71 = v165;
    v148 = 0;
    v72 = 0;
    v16 = &unk_23B519370;
    while (1)
    {
      if (v166 == v72)
      {

        sub_23B3CE510(v157, v142, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3CE510(v154, v143, &qword_27E131C90, &unk_23B514EC0);
        sub_23B3CE510(v152, v144, &qword_27E131C88, &unk_23B50ED50);
        v112 = v139;
        sub_23B3CE510(v151, v139, &qword_27E131C80, &qword_23B50ED48);
        v113 = v140;
        sub_23B3CE510(v150, v140, &qword_27E131C78, &qword_23B50ED40);
        v114 = v145;
        __swift_storeEnumTagSinglePayload(v145, 1, 1, a4);
        v115 = v141;
        v116 = *(v141 + 20);
        __swift_storeEnumTagSinglePayload(v114 + v116, 1, 1, v160);
        v117 = v115[6];
        __swift_storeEnumTagSinglePayload(v114 + v117, 1, 1, v158);
        v118 = v115[7];
        __swift_storeEnumTagSinglePayload(v114 + v118, 1, 1, v155);
        v119 = v115[8];
        __swift_storeEnumTagSinglePayload(v114 + v119, 1, 1, v149);
        v120 = v115[9];
        sub_23B3C2510(v142, v114, &qword_27E131C98, &unk_23B50ED60);
        sub_23B3C2510(v143, v114 + v116, &qword_27E131C90, &unk_23B514EC0);
        sub_23B3C2510(v144, v114 + v117, &qword_27E131C88, &unk_23B50ED50);
        sub_23B3C2510(v112, v114 + v118, &qword_27E131C80, &qword_23B50ED48);
        sub_23B3C2510(v113, v114 + v119, &qword_27E131C78, &qword_23B50ED40);
        *(v114 + v120) = v148;
        v121 = v159;
        v122 = sub_23B50CDD4();
        v123 = sub_23B50D4C4();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          *&v172 = v125;
          *v124 = 141558275;
          *(v124 + 4) = 1752392040;
          *(v124 + 12) = 2081;
          *&v170 = v121;
          sub_23B3A3BC8();
          v126 = v121;
          v127 = sub_23B50D1A4();
          v129 = sub_23B391F1C(v127, v128, &v172);

          *(v124 + 14) = v129;
          _os_log_impl(&dword_23B38D000, v122, v123, "Successfully parsed nano weather data; location=%{private,mask.hash}s", v124, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v125);
          MEMORY[0x23EE9E260](v125, -1, -1);
          MEMORY[0x23EE9E260](v124, -1, -1);
        }

        v130 = v138;
        v131 = v136;
        v132 = v145;
        sub_23B4870D0(v145, v136, type metadata accessor for WatchWeather);
        swift_storeEnumTagMultiPayload();
        v130(v131);
        sub_23B398890(v131, qword_27E133BE8, &unk_23B51A660);
        sub_23B398890(v150, &qword_27E131C78, &qword_23B50ED40);
        sub_23B398890(v151, &qword_27E131C80, &qword_23B50ED48);
        sub_23B398890(v152, &qword_27E131C88, &unk_23B50ED50);
        sub_23B398890(v154, &qword_27E131C90, &unk_23B514EC0);
        sub_23B398890(v157, &qword_27E131C98, &unk_23B50ED60);
        sub_23B398890(v167, &qword_27E131EA8, &qword_23B5194F0);
        return sub_23B48712C(v132, type metadata accessor for WatchWeather);
      }

      if (v72 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v73 = v16;
      v74 = v162;
      v75 = v71 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v76 = *(v163 + 72);
      v168 = v72;
      sub_23B4870D0(v75 + v76 * v72, v162, MEMORY[0x277D7ABF8]);
      sub_23B3AA378(v74, v58, v167, &v172);
      sub_23B48712C(v74, MEMORY[0x277D7ABF8]);
      if (v8)
      {

        sub_23B398890(v150, &qword_27E131C78, &qword_23B50ED40);
        sub_23B398890(v151, &qword_27E131C80, &qword_23B50ED48);
        sub_23B398890(v152, &qword_27E131C88, &unk_23B50ED50);
        sub_23B398890(v154, &qword_27E131C90, &unk_23B514EC0);
        sub_23B398890(v157, &qword_27E131C98, &unk_23B50ED60);
        return sub_23B398890(v167, &qword_27E131EA8, &qword_23B5194F0);
      }

      v16 = v73;
      sub_23B3CE510(&v172, &v170, &qword_27E133080, v73);
      if (*(&v171 + 1))
      {
        v77 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v42, v77 ^ 1u, 1, a4);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, a4);
        v79 = v161;
        if (EnumTagSinglePayload != 1)
        {
          sub_23B398890(&v172, &qword_27E133080, v73);
          v80 = v157;
          sub_23B398890(v157, &qword_27E131C98, &unk_23B50ED60);
          sub_23B486F00(v42, v80, type metadata accessor for CurrentWeather);
          v81 = v80;
          v82 = a4;
LABEL_20:
          __swift_storeEnumTagSinglePayload(v81, 0, 1, v82);
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v170, &qword_27E133080, v73);
        __swift_storeEnumTagSinglePayload(v42, 1, 1, a4);
        v79 = v161;
      }

      sub_23B398890(v42, &qword_27E131C98, &unk_23B50ED60);
      sub_23B3CE510(&v172, &v170, &qword_27E133080, v73);
      if (*(&v171 + 1))
      {
        v83 = v58;
        v84 = v160;
        v85 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v79, v85 ^ 1u, 1, v84);
        v86 = v84;
        v58 = v83;
        v8 = 0;
        v16 = v73;
        if (__swift_getEnumTagSinglePayload(v79, 1, v86) != 1)
        {
          sub_23B398890(&v172, &qword_27E133080, v73);
          v87 = v79;
          v88 = v154;
          sub_23B398890(v154, &qword_27E131C90, &unk_23B514EC0);
          v89 = v87;
          v58 = v159;
          sub_23B3CE5BC(v89, v88, &qword_27E131CA0, &qword_23B5101A0);
          v81 = v88;
          v82 = v160;
          goto LABEL_20;
        }
      }

      else
      {
        sub_23B398890(&v170, &qword_27E133080, v73);
        __swift_storeEnumTagSinglePayload(v79, 1, 1, v160);
      }

      sub_23B398890(v79, &qword_27E131C90, &unk_23B514EC0);
      sub_23B3CE510(&v172, &v170, &qword_27E133080, v16);
      if (*(&v171 + 1))
      {
        v90 = v158;
        v91 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v23, v91 ^ 1u, 1, v90);
        if (__swift_getEnumTagSinglePayload(v23, 1, v90) != 1)
        {
          sub_23B398890(&v172, &qword_27E133080, v16);
          v92 = v152;
          sub_23B398890(v152, &qword_27E131C88, &unk_23B50ED50);
          sub_23B3CE5BC(v23, v92, &qword_27E131CA8, &unk_23B50ED70);
          v81 = v92;
          v82 = v158;
          goto LABEL_20;
        }
      }

      else
      {
        sub_23B398890(&v170, &qword_27E133080, v16);
        __swift_storeEnumTagSinglePayload(v23, 1, 1, v158);
      }

      sub_23B398890(v23, &qword_27E131C88, &unk_23B50ED50);
      sub_23B3CE510(&v172, &v170, &qword_27E133080, v16);
      if (*(&v171 + 1))
      {
        v93 = v153;
        v94 = v155;
        v95 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v93, v95 ^ 1u, 1, v94);
        if (__swift_getEnumTagSinglePayload(v93, 1, v94) != 1)
        {
          sub_23B398890(&v172, &qword_27E133080, v16);
          v96 = v151;
          sub_23B398890(v151, &qword_27E131C80, &qword_23B50ED48);
          sub_23B3CE5BC(v93, v96, &qword_27E131CB0, &qword_23B516B60);
          __swift_storeEnumTagSinglePayload(v96, 0, 1, v155);
          v23 = v156;
          v58 = v159;
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v170, &qword_27E133080, v16);
        v93 = v153;
        __swift_storeEnumTagSinglePayload(v153, 1, 1, v155);
      }

      sub_23B398890(v93, &qword_27E131C80, &qword_23B50ED48);
      sub_23B3CE510(&v172, &v170, &qword_27E133080, v16);
      if (*(&v171 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
        v97 = swift_dynamicCast();
        v23 = v156;
        v58 = v159;
        if (v97)
        {
          sub_23B398890(&v172, &qword_27E133080, v16);

          v148 = v169;
          goto LABEL_21;
        }
      }

      else
      {
        sub_23B398890(&v170, &qword_27E133080, v16);
        v23 = v156;
        v58 = v159;
      }

      v170 = v172;
      v171 = v173;
      if (!*(&v173 + 1))
      {
        break;
      }

      v98 = v147;
      v99 = v149;
      v100 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v98, v100 ^ 1u, 1, v99);
      if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
      {
        goto LABEL_35;
      }

      v101 = v150;
      sub_23B398890(v150, &qword_27E131C78, &qword_23B50ED40);
      sub_23B486F00(v98, v101, type metadata accessor for AirQuality);
      __swift_storeEnumTagSinglePayload(v101, 0, 1, v149);
LABEL_36:
      v16 = v73;
LABEL_21:
      v72 = v168 + 1;
      v71 = v165;
    }

    sub_23B398890(&v170, &qword_27E133080, v16);
    v98 = v147;
    __swift_storeEnumTagSinglePayload(v147, 1, 1, v149);
LABEL_35:
    sub_23B398890(v98, &qword_27E131C78, &qword_23B50ED40);
    goto LABEL_36;
  }

  v102 = v58;
  v103 = sub_23B50CDD4();
  v104 = sub_23B50D4B4();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v172 = v106;
    *v105 = 141558275;
    *(v105 + 4) = 1752392040;
    *(v105 + 12) = 2081;
    *&v170 = v102;
    sub_23B3A3BC8();
    v107 = v102;
    v108 = sub_23B50D1A4();
    v110 = sub_23B391F1C(v108, v109, &v172);

    *(v105 + 14) = v110;
    _os_log_impl(&dword_23B38D000, v103, v104, "Unexpectedly empty response when fetching nano weather data; location=%{private,mask.hash}s", v105, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v106);
    MEMORY[0x23EE9E260](v106, -1, -1);
    MEMORY[0x23EE9E260](v105, -1, -1);
  }

  sub_23B3E3D54();
  swift_allocError();
  *v111 = 1;
  swift_willThrow();
  return sub_23B398890(v167, &qword_27E131EA8, &qword_23B5194F0);
}

uint64_t sub_23B484778(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v11 = sub_23B50CDF4();
  __swift_project_value_buffer(v11, qword_280B4E9D8);
  v12 = a1;
  v13 = a2;
  v14 = sub_23B50CDD4();
  v15 = sub_23B50D4B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = a4;
    v20 = v19;
    v35 = v13;
    v36 = v19;
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    sub_23B3A3BC8();
    v21 = v13;
    v22 = sub_23B50D1A4();
    v24 = sub_23B391F1C(v22, v23, &v36);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    swift_getErrorValue();
    v25 = sub_23B50D874();
    v27 = sub_23B391F1C(v25, v26, &v36);

    *(v17 + 24) = v27;
    *(v17 + 32) = 2112;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v29;
    *v18 = v29;
    _os_log_impl(&dword_23B38D000, v14, v15, "Encountered an error when fetching nano weather; location=%{private,mask.hash}s,  error=%{public}s %@", v17, 0x2Au);
    sub_23B398890(v18, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v20, -1, -1);
    v30 = v17;
    a3 = v34;
    MEMORY[0x23EE9E260](v30, -1, -1);
  }

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v31 = a1;
  a3(v10);
  return sub_23B398890(v10, qword_27E133BE8, &unk_23B51A660);
}

uint64_t sub_23B484A6C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v355 = a1;
  v339 = a4;
  v330 = type metadata accessor for WatchWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v7);
  v8 = sub_23B50B654();
  v380 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C80, &qword_23B50ED48);
  v16 = OUTLINED_FUNCTION_3(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_1();
  v383 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C88, &unk_23B50ED50);
  v22 = OUTLINED_FUNCTION_3(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v27 = OUTLINED_FUNCTION_3(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C98, &unk_23B50ED60);
  v32 = OUTLINED_FUNCTION_3(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  OUTLINED_FUNCTION_3(v36);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_52();
  v381 = v38;
  v353 = sub_23B50CB54();
  OUTLINED_FUNCTION_5();
  v352 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  OUTLINED_FUNCTION_3(v42);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v45);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D20, &qword_23B515138);
  OUTLINED_FUNCTION_3(v48);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D28, &unk_23B5193A0);
  OUTLINED_FUNCTION_3(v51);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_52();
  v384 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D30, &qword_23B515140);
  OUTLINED_FUNCTION_3(v54);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D38, &unk_23B5193B0);
  OUTLINED_FUNCTION_3(v57);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D40, &unk_23B5193C0);
  OUTLINED_FUNCTION_3(v60);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F00, &unk_23B5257B0);
  v64 = OUTLINED_FUNCTION_3(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v66);
  v346 = sub_23B50B7E4();
  OUTLINED_FUNCTION_5();
  v345 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v69);
  v70 = sub_23B50B604();
  v71 = OUTLINED_FUNCTION_3(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_55(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D48, &unk_23B5193D0);
  OUTLINED_FUNCTION_3(v73);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_35(v75);
  v338 = sub_23B50B7B4();
  OUTLINED_FUNCTION_5();
  v337 = v76;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_35(v78);
  v375 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v382 = v79;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_55(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v88 = OUTLINED_FUNCTION_3(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v89);
  v91 = &v325 - v90;
  v92 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v94 = v93;
  MEMORY[0x28223BE20](v95);
  v97 = &v325 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = *a2;
  Options = type metadata accessor for WeatherServiceFetchOptions(0);
  v99 = Options[5];
  sub_23B3CE510(a3 + v99, v91, &qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_51(v91, 1, v92);
  v336 = v92;
  v358 = v94;
  if (v100)
  {
    sub_23B50AEE4();
    OUTLINED_FUNCTION_51(v91, 1, v92);
    if (!v100)
    {
      sub_23B398890(v91, &qword_27E131F68, &unk_23B50F2A0);
    }
  }

  else
  {
    (*(v94 + 32))(v97, v91, v92);
  }

  sub_23B50B9D4();
  v101 = v379;
  sub_23B50B994();
  OUTLINED_FUNCTION_144();
  sub_23B50ABA4();
  v102 = v382;
  v103 = *(v382 + 8);
  v362 = v382 + 8;
  v361 = v103;
  v103(v101, v375);
  sub_23B50AC94();
  v344 = sub_23B50AD84();
  v343 = v104;
  sub_23B3CE510(a3 + v99, v364, &qword_27E131F68, &unk_23B50F2A0);
  v105 = a3[1];
  v341 = *a3;
  v106 = *(a3 + Options[6] + 8);
  v342 = v105;
  if ((v106 & 0xFF00) == 0x300)
  {
    sub_23B50B834();
    v107 = OUTLINED_FUNCTION_4_27(v389);
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  }

  else
  {

    sub_23B50B824();
    sub_23B50B834();
    OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  }

  v115 = v350;
  *&v387 = *(a3 + Options[7]);
  sub_23B3A1C3C();
  OUTLINED_FUNCTION_26_13();
  v335 = v97;
  if (v100)
  {
    OUTLINED_FUNCTION_30_7();
    v125 = v367;
  }

  else
  {
    OUTLINED_FUNCTION_43_6();
    LOBYTE(v386) = v116;
    v393[0] = v117 & 1;
    v118 = vdupq_n_s64(v117);
    *&v391 = v119;
    BYTE8(v391) = v116;
    *&v392 = v120;
    BYTE8(v392) = v117 & 1;
    *(&v392 + 9) = OUTLINED_FUNCTION_36_5(vshlq_u64(v118, xmmword_23B5192A0), vshlq_u64(v118, xmmword_23B519290)).u32[0];
    BYTE13(v392) = v121;
    BYTE14(v392) = v122;
    v123 = v367;
    sub_23B3A205C();
    OUTLINED_FUNCTION_30_7();
    v125 = v123;
  }

  v124(v125);
  v126 = *(a3 + Options[8]);
  v127 = sub_23B50AA24();
  v128 = OUTLINED_FUNCTION_4_27(&v391 + 8);
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v127);
  v131 = *(v102 + 16);
  v132 = v375;
  v131(v379, v372, v375);
  v382 = v102 + 16;
  v350 = v131;
  v131(v340, v371, v132);

  sub_23B50AA04();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_40_4(v133, v134, v135, v127);
  sub_23B50B894();
  v136 = v348;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_4(v137, v138, v139, v140);
  sub_23B50B864();
  v141 = OUTLINED_FUNCTION_4_27(&v397);
  OUTLINED_FUNCTION_40_4(v141, v142, v143, v144);
  sub_23B50B874();
  v145 = OUTLINED_FUNCTION_4_27(&v398);
  OUTLINED_FUNCTION_40_4(v145, v146, v147, v148);
  sub_23B50B8A4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  sub_23B3CE510(a3 + Options[9], v115, &qword_27E1338B0, &unk_23B519390);
  v153 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_51(v115, 1, v153);
  if (v100)
  {
    sub_23B398890(v115, &qword_27E1338B0, &unk_23B519390);
    v156 = 1;
    v154 = v351;
  }

  else
  {
    sub_23B3CE510(v115 + *(v153 + 28), v333, &qword_27E1321E8, &qword_23B5101C0);
    v154 = v351;
    sub_23B50C824();
    OUTLINED_FUNCTION_17_13();
    sub_23B48712C(v115, v155);
    v156 = 0;
  }

  v157 = sub_23B50C834();
  __swift_storeEnumTagSinglePayload(v154, v156, 1, v157);
  v158 = v154;
  v159 = *(a3 + Options[10]);
  sub_23B50AD94();
  OUTLINED_FUNCTION_30_7();
  v160 = v354;
  v161(v354);
  sub_23B50B784(v344, v343, v364, v160, v341, v342, v365, v366, v367, v126, v368, v373, v136, v376, v378, v384, v158, v159);
  *&v391 = v347;
  BYTE8(v391) = 0;
  v162 = v355;
  v378 = sub_23B482F30(v355, &v391);
  v163 = v363;
  sub_23B50AD14();
  v164 = v375;
  if (qword_280B43440 != -1)
  {
LABEL_61:
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v165 = sub_23B50CDF4();
  v166 = __swift_project_value_buffer(v165, qword_280B4E9D8);
  v167 = v349;
  v168 = v350;
  v350(v349, v163, v164);
  v169 = v162;
  v367 = v166;
  v170 = sub_23B50CDD4();
  LOBYTE(v166) = sub_23B50D4C4();

  v171 = os_log_type_enabled(v170, v166);
  v384 = v169;
  if (v171)
  {
    OUTLINED_FUNCTION_42_0();
    v172 = OUTLINED_FUNCTION_41_4();
    v173 = OUTLINED_FUNCTION_42_0();
    *&v391 = v173;
    OUTLINED_FUNCTION_12_17(7.2226e-34);
    *(v162 + 14) = v384;
    *v172 = v384;
    *(v162 + 11) = 2082;
    v168(v379, v167, v164);
    v174 = v384;
    v175 = sub_23B50D1A4();
    v177 = v176;
    v178 = OUTLINED_FUNCTION_31_6();
    v179(v178);
    v180 = sub_23B391F1C(v175, v177, &v391);

    *(v162 + 3) = v180;
    OUTLINED_FUNCTION_47_3(&dword_23B38D000, v181, v182, "About to fetch cached weather data; location=%{private,mask.hash}@, startTime=%{public}s");
    sub_23B398890(v172, &qword_27E132D80, &qword_23B5192E0);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_1(v173);
    v169 = v384;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_16_1();
  }

  else
  {

    v183 = OUTLINED_FUNCTION_31_6();
    v184(v183);
  }

  v185 = v358;
  v186 = v356;
  __swift_project_boxed_opaque_existential_1((v385 + 16), *(v385 + 40));
  [v169 coordinate];
  v187 = sub_23B50B724();

  if (v187)
  {
    v379 = v187[2];
    if (v379)
    {
      v378 = v187;
      sub_23B42CD1C(v187, v169, v374, v381);
      type metadata accessor for CurrentWeather(0);
      v188 = OUTLINED_FUNCTION_4_27(v393);
      v382 = v189;
      __swift_storeEnumTagSinglePayload(v188, v190, v191, v189);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
      v192 = OUTLINED_FUNCTION_4_27(&v392);
      v376 = v193;
      __swift_storeEnumTagSinglePayload(v192, v194, v195, v193);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
      v196 = OUTLINED_FUNCTION_4_27(&v388 + 8);
      v373 = v197;
      __swift_storeEnumTagSinglePayload(v196, v198, v199, v197);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
      v200 = OUTLINED_FUNCTION_4_27(&v388);
      v368 = v201;
      v204 = OUTLINED_FUNCTION_40_4(v200, v202, v203, v201);
      type metadata accessor for AirQuality(v204);
      v205 = OUTLINED_FUNCTION_4_27(&v387);
      v366 = v206;
      __swift_storeEnumTagSinglePayload(v205, v207, v208, v206);
      v365 = 0;
      v164 = 0;
      v162 = &unk_23B519370;
      v163 = v377;
      v209 = v383;
      while (1)
      {
        if (v379 == v164)
        {

          sub_23B3CE510(v370, v331, &qword_27E131C98, &unk_23B50ED60);
          v282 = v326;
          sub_23B3CE510(v369, v326, &qword_27E131C90, &unk_23B514EC0);
          v283 = v327;
          sub_23B3CE510(v360, v327, &qword_27E131C88, &unk_23B50ED50);
          v284 = v328;
          sub_23B3CE510(v359, v328, &qword_27E131C80, &qword_23B50ED48);
          v285 = v329;
          sub_23B3CE510(v357, v329, &qword_27E131C78, &qword_23B50ED40);
          v286 = v332;
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v287, v288, v289, v382);
          v290 = v330;
          v291 = *(v330 + 20);
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v292, v293, v294, v376);
          v295 = v290[6];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v296, v297, v298, v373);
          v299 = v290[7];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v300, v301, v302, v368);
          v303 = v290[8];
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v304, v305, v306, v366);
          v307 = v290[9];
          sub_23B3C2510(v331, v286, &qword_27E131C98, &unk_23B50ED60);
          sub_23B3C2510(v282, v286 + v291, &qword_27E131C90, &unk_23B514EC0);
          sub_23B3C2510(v283, v286 + v295, &qword_27E131C88, &unk_23B50ED50);
          sub_23B3C2510(v284, v286 + v299, &qword_27E131C80, &qword_23B50ED48);
          sub_23B3C2510(v285, v286 + v303, &qword_27E131C78, &qword_23B50ED40);
          *(v286 + v307) = v365;
          v308 = v384;
          v309 = sub_23B50CDD4();
          v310 = sub_23B50D4C4();

          if (os_log_type_enabled(v309, v310))
          {
            swift_slowAlloc();
            v311 = OUTLINED_FUNCTION_41_4();
            OUTLINED_FUNCTION_12_17(7.2225e-34);
            *(v283 + 14) = v308;
            *v312 = v308;
            v313 = v308;
            _os_log_impl(&dword_23B38D000, v309, v310, "Successfully created product tuple; location=%{private,mask.hash}@", v283, 0x16u);
            sub_23B398890(v311, &qword_27E132D80, &qword_23B5192E0);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_16_1();
          }

          sub_23B398890(v357, &qword_27E131C78, &qword_23B50ED40);
          sub_23B398890(v359, &qword_27E131C80, &qword_23B50ED48);
          sub_23B398890(v360, &qword_27E131C88, &unk_23B50ED50);
          sub_23B398890(v369, &qword_27E131C90, &unk_23B514EC0);
          sub_23B398890(v370, &qword_27E131C98, &unk_23B50ED60);
          sub_23B398890(v381, &qword_27E131EA8, &qword_23B5194F0);
          v314 = OUTLINED_FUNCTION_23_10();
          v316 = *(v315 - 256);
          v316(v314);
          v317 = OUTLINED_FUNCTION_8_18();
          v318(v317);
          v319 = OUTLINED_FUNCTION_45_4(v394);
          v316(v319);
          v320 = OUTLINED_FUNCTION_45_4(&v395);
          v316(v320);
          v321 = OUTLINED_FUNCTION_28_7();
          v322(v321);
          sub_23B486F00(v332, v339, type metadata accessor for WatchWeather);
          v323 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_73();
          v281 = v323;
          return __swift_storeEnumTagSinglePayload(v278, v279, v280, v281);
        }

        if (v164 >= v378[2])
        {
          __break(1u);
          goto LABEL_61;
        }

        v210 = v186;
        sub_23B4870D0(v378 + ((*(v380 + 80) + 32) & ~*(v380 + 80)) + *(v380 + 72) * v164, v163, MEMORY[0x277D7ABF8]);
        v211 = v163;
        sub_23B3AA378(v163, v169, v381, &v391);
        OUTLINED_FUNCTION_19_12();
        OUTLINED_FUNCTION_15_15();
        if (*(&v388 + 1))
        {
          OUTLINED_FUNCTION_37_5(&v399);
          v212 = v382;
          swift_dynamicCast();
          v213 = OUTLINED_FUNCTION_35_7();
          __swift_storeEnumTagSinglePayload(v213, v214, v215, v212);
          v216 = OUTLINED_FUNCTION_27_10();
          OUTLINED_FUNCTION_51(v216, v217, v212);
          v218 = v186;
          if (!v100)
          {
            OUTLINED_FUNCTION_25_9();
            v219 = OUTLINED_FUNCTION_38_5(v393);
            sub_23B398890(v219, &qword_27E131C98, &unk_23B50ED60);
            sub_23B486F00(v163, v163, type metadata accessor for CurrentWeather);
            v220 = OUTLINED_FUNCTION_5_22();
            v223 = v382;
LABEL_30:
            __swift_storeEnumTagSinglePayload(v220, v221, v222, v223);
            v186 = v218;
            v169 = v384;
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_37_5(&v399);
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v224, v225, v226, v382);
          v218 = v186;
        }

        sub_23B398890(v163, &qword_27E131C98, &unk_23B50ED60);
        OUTLINED_FUNCTION_15_15();
        if (*(&v388 + 1))
        {
          v211 = v376;
          v227 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v218, v227 ^ 1u, 1, v211);
          OUTLINED_FUNCTION_51(v218, 1, v211);
          if (!v100)
          {
            OUTLINED_FUNCTION_25_9();
            v228 = OUTLINED_FUNCTION_38_5(&v392);
            sub_23B398890(v228, &qword_27E131C90, &unk_23B514EC0);
            sub_23B3CE5BC(v218, v163, &qword_27E131CA0, &qword_23B5101A0);
            v220 = OUTLINED_FUNCTION_5_22();
            v223 = v376;
            goto LABEL_30;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v229, v230, v231, v376);
        }

        sub_23B398890(v218, &qword_27E131C90, &unk_23B514EC0);
        OUTLINED_FUNCTION_15_15();
        if (*(&v388 + 1))
        {
          OUTLINED_FUNCTION_37_5(&v392 + 8);
          v232 = v373;
          swift_dynamicCast();
          v233 = OUTLINED_FUNCTION_35_7();
          __swift_storeEnumTagSinglePayload(v233, v234, v235, v232);
          v236 = OUTLINED_FUNCTION_27_10();
          OUTLINED_FUNCTION_51(v236, v237, v232);
          v169 = v384;
          if (!v100)
          {
            OUTLINED_FUNCTION_25_9();
            v238 = OUTLINED_FUNCTION_38_5(&v388 + 8);
            sub_23B398890(v238, &qword_27E131C88, &unk_23B50ED50);
            sub_23B3CE5BC(v211, v163, &qword_27E131CA8, &unk_23B50ED70);
            v239 = OUTLINED_FUNCTION_5_22();
            v242 = &v396;
            goto LABEL_47;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_37_5(&v392 + 8);
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v243, v244, v245, v373);
          v169 = v384;
        }

        sub_23B398890(v211, &qword_27E131C88, &unk_23B50ED50);
        OUTLINED_FUNCTION_15_15();
        if (*(&v388 + 1))
        {
          v246 = v368;
          v247 = swift_dynamicCast();
          __swift_storeEnumTagSinglePayload(v209, v247 ^ 1u, 1, v246);
          OUTLINED_FUNCTION_51(v209, 1, v246);
          v186 = v210;
          if (!v100)
          {
            OUTLINED_FUNCTION_25_9();
            v248 = OUTLINED_FUNCTION_38_5(&v388);
            sub_23B398890(v248, &qword_27E131C80, &qword_23B50ED48);
            sub_23B3CE5BC(v383, v163, &qword_27E131CB0, &qword_23B516B60);
            v249 = OUTLINED_FUNCTION_5_22();
            __swift_storeEnumTagSinglePayload(v249, v250, v251, v368);
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v252, v253, v254, v368);
        }

        sub_23B398890(v383, &qword_27E131C80, &qword_23B50ED48);
        OUTLINED_FUNCTION_15_15();
        if (*(&v388 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EB8, &unk_23B519380);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_25_9();

            v365 = v386;
            goto LABEL_51;
          }
        }

        else
        {
          OUTLINED_FUNCTION_21_12();
        }

        v387 = v391;
        v388 = v392;
        v255 = v334;
        if (!*(&v392 + 1))
        {
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_1();
          __swift_storeEnumTagSinglePayload(v263, v264, v265, v366);
LABEL_49:
          sub_23B398890(v255, &qword_27E131C78, &qword_23B50ED40);
          goto LABEL_50;
        }

        v256 = v366;
        swift_dynamicCast();
        v257 = OUTLINED_FUNCTION_35_7();
        __swift_storeEnumTagSinglePayload(v257, v258, v259, v256);
        v260 = OUTLINED_FUNCTION_27_10();
        OUTLINED_FUNCTION_51(v260, v261, v256);
        if (v100)
        {
          goto LABEL_49;
        }

        v262 = OUTLINED_FUNCTION_38_5(&v387);
        sub_23B398890(v262, &qword_27E131C78, &qword_23B50ED40);
        sub_23B486F00(v255, v163, type metadata accessor for AirQuality);
        v239 = OUTLINED_FUNCTION_5_22();
        v242 = &v390;
LABEL_47:
        __swift_storeEnumTagSinglePayload(v239, v240, v241, *(v242 - 32));
LABEL_50:
        v186 = v210;
LABEL_51:
        ++v164;
      }
    }
  }

  v266 = v169;
  v267 = sub_23B50CDD4();
  v268 = sub_23B50D4B4();

  if (os_log_type_enabled(v267, v268))
  {
    v269 = swift_slowAlloc();
    v270 = OUTLINED_FUNCTION_42_0();
    *&v391 = v270;
    *v269 = 141558275;
    *(v269 + 4) = 1752392040;
    *(v269 + 12) = 2081;
    *&v387 = v266;
    sub_23B3A3BC8();
    v271 = v266;
    v272 = sub_23B50D1A4();
    v274 = sub_23B391F1C(v272, v273, &v391);

    *(v269 + 14) = v274;
    _os_log_impl(&dword_23B38D000, v267, v268, "Unexpectedly empty response when fetching nano weather data; location=%{private,mask.hash}s", v269, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v270);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_38();
  }

  v275 = v361;
  v361(v363, v164);
  v276 = OUTLINED_FUNCTION_8_18();
  v277(v276);
  v275(v371, v164);
  v275(v372, v164);
  (*(v185 + 8))(v335, v336);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E133BE8, &unk_23B51A660);
  v278 = OUTLINED_FUNCTION_4_27(&v370);
  return __swift_storeEnumTagSinglePayload(v278, v279, v280, v281);
}

uint64_t sub_23B486A94(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  while (v1)
  {
    v3 = v1 & -v1;
    v1 ^= v3;
    switch(v3)
    {
      case 1:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v28;
        }

        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_23B3AE984(v4 > 1, v5 + 1, 1, v2);
          v2 = v29;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = 1;
        break;
      case 2:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v26;
        }

        v19 = *(v2 + 16);
        v18 = *(v2 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_23B3AE984(v18 > 1, v19 + 1, 1, v2);
          v2 = v27;
        }

        *(v2 + 16) = v19 + 1;
        *(v2 + v19 + 32) = 5;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_16;
      case 4:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v30;
        }

        v21 = *(v2 + 16);
        v20 = *(v2 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23B3AE984(v20 > 1, v21 + 1, 1, v2);
          v2 = v31;
        }

        *(v2 + 16) = v21 + 1;
        *(v2 + v21 + 32) = 3;
        break;
      case 8:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
          v2 = v24;
        }

        v17 = *(v2 + 16);
        v16 = *(v2 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_23B3AE984(v16 > 1, v17 + 1, 1, v2);
          v2 = v25;
        }

        *(v2 + 16) = v17 + 1;
        *(v2 + v17 + 32) = 2;
        break;
      default:
        if (v3 == 16)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
            v2 = v32;
          }

          v23 = *(v2 + 16);
          v22 = *(v2 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_23B3AE984(v22 > 1, v23 + 1, 1, v2);
            v2 = v33;
          }

          *(v2 + 16) = v23 + 1;
          *(v2 + v23 + 32) = 10;
        }

        else if (v3 == 32)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23B3AE984(0, *(v2 + 16) + 1, 1, v2);
            v2 = v34;
          }

          v7 = *(v2 + 16);
          v6 = *(v2 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_23B3AE984(v6 > 1, v7 + 1, 1, v2);
            v2 = v35;
          }

          *(v2 + 16) = v7 + 1;
          *(v2 + v7 + 32) = 0;
        }

        else
        {
LABEL_16:
          if (qword_280B43440 != -1)
          {
            swift_once();
          }

          v8 = sub_23B50CDF4();
          __swift_project_value_buffer(v8, qword_280B4E9D8);
          v9 = sub_23B50CDD4();
          v10 = sub_23B50D4B4();
          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v37 = v12;
            *v11 = 136446210;
            v13 = sub_23B50D184();
            v15 = sub_23B391F1C(v13, v14, &v37);

            *(v11 + 4) = v15;
            _os_log_impl(&dword_23B38D000, v9, v10, "Unknown default; availableDataSets=%{public}s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v12);
            MEMORY[0x23EE9E260](v12, -1, -1);
            MEMORY[0x23EE9E260](v11, -1, -1);
          }
        }

        break;
    }
  }

  return v2;
}

uint64_t sub_23B486F00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

uint64_t sub_23B486F7C(uint64_t *a1)
{
  v3 = sub_23B50B7B4();
  OUTLINED_FUNCTION_3(v3);
  return sub_23B3A2BC8(*a1, *(v1 + 16), v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
}

uint64_t sub_23B486FF8(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_23B50AD24() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23B483150(a1, a2, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23B4870D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

uint64_t sub_23B48712C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MonthlyWeatherStatistics.init(months:baselineStartDate:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v11 = type metadata accessor for MonthlyWeatherStatistics(0, v15);
  v12 = *(v11 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v13 + 32))(&a8[v12], a2);
  return sub_23B3CA20C(a3, &a8[*(v11 + 56)]);
}

uint64_t MonthlyWeatherStatistics.months.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MonthlyWeatherStatistics.baselineStartDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t MonthlyWeatherStatistics.baselineStartDate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_23B487480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7368746E6F6DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000023B536030 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B487594(char a1)
{
  if (!a1)
  {
    return 0x7368746E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_23B4875FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B487480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B487630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B487684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MonthlyWeatherStatistics.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v5;
  v18[1] = a2;
  v23[0] = v19;
  v23[1] = v5;
  type metadata accessor for MonthlyWeatherStatistics.CodingKeys(255, v23);
  OUTLINED_FUNCTION_3_36();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v23[0] = *v3;
  v24 = 0;
  sub_23B50D304();
  v22 = v20;
  swift_getWitnessTable();
  v12 = v21;
  sub_23B50D7F4();
  if (!v12)
  {
    LOBYTE(v23[0]) = 1;
    sub_23B50AD24();
    OUTLINED_FUNCTION_4_22();
    sub_23B478FAC(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_6_15();
    LOBYTE(v23[0]) = 2;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_2_29();
    sub_23B478FAC(v15, v16, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_6_15();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t MonthlyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  v45 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v44 = v12;
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v48 = v14;
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v47 = v15;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  type metadata accessor for MonthlyWeatherStatistics.CodingKeys(255, &v56);
  OUTLINED_FUNCTION_3_36();
  swift_getWitnessTable();
  v52 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v46 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v50 = a2;
  v51 = a3;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v20 = type metadata accessor for MonthlyWeatherStatistics(0, &v56);
  OUTLINED_FUNCTION_5();
  v42 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v40 - v23);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v19;
  v25 = v54;
  sub_23B50D964();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v46;
  v26 = v47;
  v41 = v24;
  v54 = a1;
  v29 = v48;
  v28 = v49;
  sub_23B50D304();
  v60 = 0;
  v55 = v51;
  swift_getWitnessTable();
  sub_23B50D734();
  v51 = v56;
  *v41 = v56;
  LOBYTE(v56) = 1;
  OUTLINED_FUNCTION_4_22();
  sub_23B478FAC(v30, v31, MEMORY[0x277CC95A0]);
  v32 = v26;
  sub_23B50D734();
  v50 = v20;
  v33 = v41;
  (*(v29 + 32))(v41 + *(v20 + 52), v32, v28);
  LOBYTE(v56) = 2;
  OUTLINED_FUNCTION_2_29();
  sub_23B478FAC(v34, v35, &protocol conformance descriptor for WeatherMetadata);
  v36 = v44;
  sub_23B50D734();
  (*(v27 + 8))(v53, v52);
  v37 = v50;
  sub_23B3CA20C(v36, v33 + *(v50 + 56));
  v38 = v42;
  (*(v42 + 16))(v43, v33, v37);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return (*(v38 + 8))(v33, v37);
}

uint64_t sub_23B487F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B487FD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MonthlyWeatherStatistics.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B488000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MonthlyWeatherStatistics.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B488028(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B48809C(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B48809C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  MonthlyWeatherStatistics.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B488158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B4881C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B48824C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_40();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B4882B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = MonthlyWeatherStatistics.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B4883A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B4883F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B488470(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static Forecast<>.mock()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for DayWeather(0);
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B50AD24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - v12);
  if (qword_27E131C10 != -1)
  {
    swift_once();
  }

  v14 = *(qword_27E15A728 + 16);
  v33 = 0;
  v34 = 0;
  v32 = v14;
  v15 = (v5 + 32);
  v16 = (v5 + 8);

  for (i = MEMORY[0x277D84F90]; ; sub_23B48945C(v3, i + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21))
  {
    sub_23B4F4C90(v10);
    sub_23B488914(v10, v13);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
    {
      break;
    }

    v19 = *v13;
    (*v15)(v7, v13 + *(v18 + 48), v4);
    sub_23B488984(v7, v19, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B4F579C(0, *(i + 16) + 1, 1, i);
      i = v22;
    }

    v21 = *(i + 16);
    v20 = *(i + 24);
    if (v21 >= v20 >> 1)
    {
      sub_23B4F579C(v20 > 1, v21 + 1, 1, i);
      i = v23;
    }

    (*v16)(v7, v4);
    *(i + 16) = v21 + 1;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v25 = v30;
  result = static WeatherMetadata.mock()(v30 + v24[13]);
  *v25 = i;
  v27 = (v25 + v24[14]);
  *v27 = 0;
  v27[1] = 0;
  *(v25 + v24[15]) = 0;
  *(v25 + v24[16]) = 0;
  v28 = v25 + v24[17];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  return result;
}

{
  v30 = a1;
  v1 = type metadata accessor for HourWeather(0);
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B50AD24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - v12);
  if (qword_27E131C10 != -1)
  {
    swift_once();
  }

  v14 = *(qword_27E15A728 + 24);
  v33 = 0;
  v34 = 0;
  v32 = v14;
  v15 = (v5 + 32);
  v16 = (v5 + 8);

  for (i = MEMORY[0x277D84F90]; ; sub_23B4F566C(v3, i + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21))
  {
    sub_23B4F4C90(v10);
    sub_23B3E3DA8(v10, v13, &qword_27E133C70, &qword_23B51AA60);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C78, &qword_23B51AA68);
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
    {
      break;
    }

    v19 = *v13;
    (*v15)(v7, v13 + *(v18 + 48), v4);
    sub_23B4F4E04(v7, v19, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23B3A3A48(0, *(i + 16) + 1, 1, i, sub_23B411FC4, type metadata accessor for HourWeather, type metadata accessor for HourWeather);
      i = v22;
    }

    v21 = *(i + 16);
    v20 = *(i + 24);
    if (v21 >= v20 >> 1)
    {
      sub_23B3A3A48(v20 > 1, v21 + 1, 1, i, sub_23B411FC4, type metadata accessor for HourWeather, type metadata accessor for HourWeather);
      i = v23;
    }

    (*v16)(v7, v4);
    *(i + 16) = v21 + 1;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v25 = v30;
  result = static WeatherMetadata.mock()(v30 + v24[13]);
  *v25 = i;
  v27 = (v25 + v24[14]);
  *v27 = 0;
  v27[1] = 0;
  *(v25 + v24[15]) = 0;
  *(v25 + v24[16]) = 0;
  v28 = v25 + v24[17];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  return result;
}

uint64_t sub_23B488914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C70, &qword_23B51AA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23B488984(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132050, &qword_23B510140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v80 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  v24 = sub_23B50AEF4();
  MEMORY[0x28223BE20](v24);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 0xA)
  {
    __break(1u);
  }

  else
  {
    v81 = v17;
    v29 = byte_284E0D048[a2 + 32];
    v86 = v25;
    v84 = v26;
    type metadata accessor for WeatherConditionSymbolMapper();
    swift_initStaticObject();
    v85 = v8;
    sub_23B50AEE4();
    v93 = v29;
    v87 = v29;
    v30 = sub_23B50A4F4(&v93, a1, v28, 37.323, -122.0);
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0x2E78616D2E6E7573;
    }

    v33 = 0xEC0000006C6C6966;
    if (v31)
    {
      v33 = v31;
    }

    v88 = v33;
    v89 = v32;
    v34 = sub_23B3CAE4C(v29, 22);
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 0;
    }

    v90 = v35;
    if (v34)
    {
      v36 = 0.3;
    }

    else
    {
      v36 = 0.0;
    }

    v37 = sub_23B50AD24();
    v83 = v28;
    v38 = a1;
    v39 = v37;
    (*(*(v37 - 8) + 16))(a3, v38);
    v40 = objc_opt_self();
    v80 = v14;
    v41 = v23;
    v42 = v40;
    v92 = v20;
    v43 = [v40 fahrenheit];
    v44 = type metadata accessor for DayWeather(0);
    sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
    v91 = v11;
    sub_23B50A9B4();
    sub_23B50B9D4();
    v82 = v41;
    sub_23B50B994();
    v45 = v39;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
    v46 = [v42 fahrenheit];
    sub_23B50A9B4();
    v47 = v92;
    sub_23B50ABC4();
    v48 = v45;
    __swift_storeEnumTagSinglePayload(v47, 0, 1, v45);
    v49 = objc_opt_self();
    v50 = [v49 inches];
    sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
    sub_23B50A9B4();
    v51 = [v49 inches];
    sub_23B50A9B4();
    static PrecipitationAmountByType.mock()(a3 + v44[20]);
    static SunEvents.mock()(a3 + v44[21]);
    v52 = v81;
    __swift_storeEnumTagSinglePayload(v81, 1, 1, v45);
    v53 = v80;
    __swift_storeEnumTagSinglePayload(v80, 1, 1, v45);
    v54 = (a3 + v44[22]);
    v55 = type metadata accessor for MoonEvents(0);
    v56 = *(v55 + 20);
    __swift_storeEnumTagSinglePayload(&v54[v56], 1, 1, v48);
    v57 = *(v55 + 24);
    __swift_storeEnumTagSinglePayload(&v54[v57], 1, 1, v48);
    *v54 = 2;
    sub_23B3C24A8(v52, &v54[v56], &qword_27E131E18, &unk_23B50F710);
    sub_23B3C24A8(v53, &v54[v57], &qword_27E131E18, &unk_23B50F710);
    v58 = [objc_opt_self() degrees];
    v59 = (a3 + v44[28]);
    v60 = type metadata accessor for Wind(0);
    sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
    sub_23B50A9B4();
    v61 = objc_opt_self();
    v62 = [v61 kilometersPerHour];
    sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
    sub_23B50A9B4();
    v63 = [v61 kilometersPerHour];
    v64 = v91;
    sub_23B50A9B4();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v66 = *(v60 + 28);
    __swift_storeEnumTagSinglePayload(&v59[v66], 1, 1, v65);
    *v59 = 4;
    sub_23B3C24A8(v64, &v59[v66], &qword_27E132048, &qword_23B510110);
    v67 = [v61 kilometersPerHour];
    sub_23B50A9B4();
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v65);
    v68 = [v61 kilometersPerHour];
    sub_23B50A9B4();
    v69 = [v61 kilometersPerHour];
    sub_23B50A9B4();
    v70 = [v61 kilometersPerHour];
    sub_23B50A9B4();
    static DayPartForecast.mock()(a3 + v44[33]);
    static DayPartForecast.mock()(a3 + v44[34]);
    (*(v84 + 8))(v83, v86);
    v71 = type metadata accessor for DayPartForecast(0);
    v72 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v71);
    v73 = v44[8];
    __swift_storeEnumTagSinglePayload(a3 + v73, 1, 1, v48);
    v74 = v44[10];
    __swift_storeEnumTagSinglePayload(a3 + v74, 1, 1, v48);
    v75 = v44[29];
    __swift_storeEnumTagSinglePayload(a3 + v75, 1, 1, v65);
    v76 = v44[35];
    __swift_storeEnumTagSinglePayload(a3 + v76, 1, 1, v71);
    *(a3 + v44[5]) = v87;
    v77 = (a3 + v44[6]);
    v78 = v88;
    *v77 = v89;
    v77[1] = v78;
    sub_23B3C24A8(v82, a3 + v73, &qword_27E131E18, &unk_23B50F710);
    sub_23B3C24A8(v92, a3 + v74, &qword_27E131E18, &unk_23B50F710);
    *(a3 + v44[11]) = 0x3FC999999999999ALL;
    *(a3 + v44[12]) = 0x3FF0000000000000;
    *(a3 + v44[13]) = 0x3FB999999999999ALL;
    *(a3 + v44[14]) = 0x3FF0000000000000;
    *(a3 + v44[15]) = 0x3FB999999999999ALL;
    *(a3 + v44[16]) = v90;
    *(a3 + v44[17]) = v36;
    v79 = a3 + v44[23];
    *v79 = 5;
    *(v79 + 8) = 1;
    sub_23B3C24A8(v91, a3 + v75, &qword_27E132048, &qword_23B510110);
    sub_23B3C24A8(v72, a3 + v76, &qword_27E132050, &qword_23B510140);
    *(a3 + v44[24]) = 0x3FF0000000000000;
    *(a3 + v44[25]) = 0;
    *(a3 + v44[26]) = 0x3FF0000000000000;
    *(a3 + v44[27]) = 0;
  }
}

uint64_t static DayWeather.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133828, &qword_23B518D00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  static Forecast<>.mock()((&v14 - v6));
  v8 = *v7;
  v9 = *(*v7 + 16);
  v10 = type metadata accessor for DayWeather(0);
  v11 = v10;
  if (v9)
  {
    sub_23B4894C0(v8 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)), v4);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v12, 1, v11);
  sub_23B489524(v7);
  result = __swift_getEnumTagSinglePayload(v4, 1, v11);
  if (result != 1)
  {
    return sub_23B48945C(v4, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B48945C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeather(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4894C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B489524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TideEvents.init(date:events:hours:closestWaterLocation:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v14 + 32))(a5, a1);
  v15 = type metadata accessor for TideEvents(0);
  *(a5 + v15[5]) = a2;
  *(a5 + v15[6]) = a3;
  v16 = (a5 + v15[7]);
  *v16 = a6;
  v16[1] = a7;
  v17 = a5 + v15[8];

  return sub_23B3CA20C(a4, v17);
}

uint64_t TideEvents.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TideEvents.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

double TideEvents.events.getter()
{
  type metadata accessor for TideEvents(0);

  return result;
}

uint64_t TideEvents.events.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for TideEvents(v2) + 20);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TideEvents.events.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvents(v0);
  return OUTLINED_FUNCTION_44();
}

double TideEvents.hours.getter()
{
  type metadata accessor for TideEvents(0);

  return result;
}

uint64_t TideEvents.hours.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for TideEvents(v2) + 24);

  *(v1 + v3) = v0;
  return result;
}

uint64_t TideEvents.hours.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvents(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t TideEvents.closestWaterLocation.setter(double a1, double a2)
{
  result = type metadata accessor for TideEvents(0);
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TideEvents.closestWaterLocation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvents(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t TideEvents.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TideEvents(0) + 32);

  return sub_23B3CA078(v3, a1);
}

uint64_t TideEvents.metadata.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for TideEvents(v2) + 32);

  return sub_23B407020(v0, v3);
}

uint64_t TideEvents.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for TideEvents(v0);
  return OUTLINED_FUNCTION_44();
}

void MinuteSummary.init(date:expirationDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_23_11();
  v5 = OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_2_32();
  v9 = OUTLINED_FUNCTION_14();
  v10(v9);
  sub_23B3CF890(v0, v1 + v4);
  *(v1 + *(v2 + 24)) = v3;
  *(v1 + *(v2 + 28)) = v3;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

uint64_t MinuteSummary.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t MinuteSummary.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t MinuteSummary.expirationDate.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for MinuteSummary(v2) + 20);

  return sub_23B3C7DF4(v3, v0);
}

uint64_t MinuteSummary.expirationDate.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for MinuteSummary(v2) + 20);

  return sub_23B3CF890(v0, v3);
}

uint64_t MinuteSummary.expirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t MinuteSummary.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteSummary(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t MinuteSummary.precipitation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitationKind.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t MinuteSummary.precipitationKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MinuteSummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MinuteSummary.precipitationKind.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.precipitationChance.setter(double a1)
{
  result = type metadata accessor for MinuteSummary(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MinuteSummary.precipitationChance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for MinuteSummary(v2);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MinuteSummary(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t MinuteSummary.apparentPrecipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for MinuteSummary(v0);
  return OUTLINED_FUNCTION_44();
}

void MinuteSummary.init(date:expirationDate:precipitation:precipitationKind:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  v5 = *v4;
  type metadata accessor for MinuteSummary(0);
  v6 = OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_2_32();
  v10 = OUTLINED_FUNCTION_14();
  v11(v10);
  sub_23B3CF890(v0, v1 + v3);
  *(v1 + *(v2 + 28)) = v5;
  *(v1 + *(v2 + 24)) = 0;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

void MinuteSummary.init(date:expirationDate:precipitationKind:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_23_11();
  v5 = OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  OUTLINED_FUNCTION_2_32();
  v9 = OUTLINED_FUNCTION_14();
  v10(v9);
  sub_23B3CF890(v0, v1 + v4);
  *(v1 + *(v2 + 28)) = v3;
  *(v1 + *(v2 + 24)) = 0;
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_26_3();
}

uint64_t sub_23B489FDC(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000023B5360A0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2)
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

unint64_t sub_23B48A1DC(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B48A2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B489FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48A2E4(uint64_t a1)
{
  v2 = sub_23B48A904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48A320(uint64_t a1)
{
  v2 = sub_23B48A904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MinuteSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for MinuteSummary(0);
  v18 = v17[5];
  v19 = *(v13 + 48);
  sub_23B3C7DF4(a1 + v18, v16);
  sub_23B3C7DF4(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_46(v16);
  if (v20)
  {
    OUTLINED_FUNCTION_46(&v16[v19]);
    if (v20)
    {
      sub_23B398890(v16, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_12;
    }
  }

  else
  {
    sub_23B3C7DF4(v16, v2);
    OUTLINED_FUNCTION_46(&v16[v19]);
    if (!v20)
    {
      (*(v7 + 32))(v11, &v16[v19], v5);
      OUTLINED_FUNCTION_0_41();
      sub_23B48B188(v21, v22, MEMORY[0x277CC9598]);
      v23 = sub_23B50D134();
      v24 = *(v7 + 8);
      v24(v11, v5);
      v24(v2, v5);
      sub_23B398890(v16, &qword_27E131E18, &unk_23B50F710);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      if ((sub_23B3CFF58(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_23B3CFF58(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0 || *(a1 + v17[8]) != *(a2 + v17[8]))
      {
        return 0;
      }

      v25 = v17[9];
      v26 = (a1 + v25);
      v27 = *(a1 + v25 + 8);
      v28 = a2 + v25;
      v29 = *(v28 + 8);
      if (v27 == 3)
      {
        if (v29 != 3)
        {
          return 0;
        }
      }

      else
      {
        v30 = v29 != 3 && *v26 == *v28;
        if (!v30 || (sub_23B3E71A0() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    (*(v7 + 8))(v2, v5);
  }

  sub_23B398890(v16, &qword_27E131E20, &qword_23B51E340);
  return 0;
}

uint64_t MinuteSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C80, &qword_23B51AAA8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48A904();
  sub_23B50D974();
  LOBYTE(v17) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_41();
  sub_23B48B188(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_5_2();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for MinuteSummary(0);
    LOBYTE(v17) = 1;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
    LOBYTE(v17) = *(v3 + v13[6]);
    v19 = 2;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    LOBYTE(v17) = *(v3 + v13[7]);
    v19 = 3;
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7F4();
    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_5_2();
    sub_23B50D7C4();
    v14 = (v3 + v13[9]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 8);
    v17 = v15;
    v18 = v14;
    v19 = 5;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_13_17();
    OUTLINED_FUNCTION_5_2();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B48A904()
{
  result = qword_27E133C88;
  if (!qword_27E133C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133C88);
  }

  return result;
}

uint64_t MinuteSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v41 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v40 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133C90, &qword_23B51AAB0);
  OUTLINED_FUNCTION_5();
  v38 = v12;
  v39 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47_2();
  v15 = type metadata accessor for MinuteSummary(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27();
  v19 = v18 - v17;
  v44 = *(v20 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  v24 = v19 + v15[9];
  *v24 = 0;
  *(v24 + 8) = 3;
  v25 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B48A904();
  v42 = v2;
  v26 = v43;
  sub_23B50D964();
  if (v26)
  {
    v30 = v44;
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_23B398890(v19 + v30, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v43 = v24;
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_0_41();
    sub_23B48B188(v27, v28, MEMORY[0x277CC95A0]);
    v29 = v38;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    (*(v41 + 32))(v19, v40, v7);
    LOBYTE(v46) = 1;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D6D4();
    sub_23B3CF890(v6, v19 + v44);
    v48 = 2;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    *(v19 + v15[6]) = v46;
    v48 = 3;
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D734();
    *(v19 + v15[7]) = v46;
    LOBYTE(v46) = 4;
    OUTLINED_FUNCTION_10_20();
    sub_23B50D704();
    v31 = v39;
    *(v19 + v15[8]) = v32;
    v48 = 5;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_5_23();
    OUTLINED_FUNCTION_10_20();
    sub_23B50D6D4();
    (*(v31 + 8))(v42, v29);
    v33 = v47;
    v34 = v43;
    *v43 = v46;
    *(v34 + 8) = v33;
    sub_23B3E889C(v19, v37);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return sub_23B3E8900(v19);
  }
}

uint64_t MinuteSummary.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_0_41();
  sub_23B48B188(v11, v12, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v13 = type metadata accessor for MinuteSummary(0);
  sub_23B3C7DF4(v1 + v13[5], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v5 + 32))(v9, v2, v3);
    sub_23B50D8E4();
    sub_23B50D0E4();
    (*(v5 + 8))(v9, v3);
  }

  sub_23B3CFAAC(v0, *(v1 + v13[6]));
  sub_23B3CFAAC(v0, *(v1 + v13[7]));
  v14 = *(v1 + v13[8]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v14);
  v15 = (v1 + v13[9]);
  v16 = *(v15 + 8);
  if (v16 == 3)
  {
    return sub_23B50D8E4();
  }

  v18 = *v15;
  sub_23B50D8E4();
  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x23EE9DB70](v19);
  sub_23B50D1C4();
}

uint64_t MinuteSummary.hashValue.getter()
{
  sub_23B50D8C4();
  MinuteSummary.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B48B104(uint64_t a1)
{
  sub_23B50D8C4();
  MinuteSummary.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B48B188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for MinuteSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B48B2D8()
{
  result = qword_27E133CA0;
  if (!qword_27E133CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CA0);
  }

  return result;
}

unint64_t sub_23B48B330()
{
  result = qword_27E133CA8;
  if (!qword_27E133CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CA8);
  }

  return result;
}

unint64_t sub_23B48B388()
{
  result = qword_27E133CB0;
  if (!qword_27E133CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CB0);
  }

  return result;
}

uint64_t PeriodicForecasts.init(metadata:forecasts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23B3CA20C(a1, a3);
  result = type metadata accessor for PeriodicForecasts(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

WeatherKit::PeriodicForecast __swiftcall PeriodicForecast.init(periodLength:periods:)(Swift::Int periodLength, Swift::OpaquePointer periods)
{
  v2->_rawValue = periodLength;
  v2[1]._rawValue = periods._rawValue;
  result.periods = periods;
  result.periodLength = periodLength;
  return result;
}

double PeriodicForecasts.forecasts.getter()
{
  type metadata accessor for PeriodicForecasts(0);

  return result;
}

WeatherKit::PeriodicForecast_optional __swiftcall PeriodicForecasts.forecast(forPeriod:)(Swift::Int forPeriod)
{
  v4 = v1;
  v5 = type metadata accessor for PeriodicForecasts(0);
  v8 = *(v2 + *(v5 + 20));
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      *v4 = 0;
      v4[1] = 0;
      goto LABEL_8;
    }

    v11 = v9 + 2;
    v12 = *v9;
    v9 += 2;
  }

  while (v12 != forPeriod);
  v13 = *(v11 - 1);
  *v4 = forPeriod;
  v4[1] = v13;

LABEL_8:
  result.value.periods._rawValue = v6;
  result.value.periodLength = v5;
  result.is_nil = v7;
  return result;
}

uint64_t sub_23B48B518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473616365726F66 && a2 == 0xE900000000000073)
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

uint64_t sub_23B48B5E8(char a1)
{
  if (a1)
  {
    return 0x7473616365726F66;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_23B48B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B48B518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48B654(uint64_t a1)
{
  v2 = sub_23B48B914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48B690(uint64_t a1)
{
  v2 = sub_23B48B914();

  return MEMORY[0x2821FE720](a1, v2);
}

void static PeriodicForecasts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static WeatherMetadata.== infix(_:_:)(a1, a2))
  {
    type metadata accessor for PeriodicForecasts(0);

    sub_23B3DFE28();
  }
}

uint64_t PeriodicForecasts.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CB8, &qword_23B51ACD0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48B914();
  sub_23B50D974();
  v16 = 0;
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_1_25();
  sub_23B48C76C(v11, v12, &protocol conformance descriptor for WeatherMetadata);
  OUTLINED_FUNCTION_4_29();
  sub_23B50D7F4();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for PeriodicForecasts(0) + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CC8, &qword_23B51ACD8);
    sub_23B48BCC4(&qword_27E133CD0, sub_23B48B968, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_4_29();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B48B914()
{
  result = qword_27E133CC0;
  if (!qword_27E133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CC0);
  }

  return result;
}

unint64_t sub_23B48B968()
{
  result = qword_27E133CD8;
  if (!qword_27E133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CD8);
  }

  return result;
}

uint64_t PeriodicForecasts.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CE0, &qword_23B51ACE0);
  OUTLINED_FUNCTION_5();
  v23 = v7;
  v24 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for PeriodicForecasts(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48B914();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v14;
  v16 = v23;
  v28 = 0;
  OUTLINED_FUNCTION_1_25();
  sub_23B48C76C(v17, v18, &protocol conformance descriptor for WeatherMetadata);
  v19 = v24;
  sub_23B50D734();
  sub_23B3CA20C(v25, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CC8, &qword_23B51ACD8);
  v27 = 1;
  sub_23B48BCC4(&qword_27E133CE8, sub_23B48BD3C, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_3_37();
  sub_23B50D734();
  (*(v16 + 8))(v10, v19);
  *(v15 + *(v11 + 20)) = v26;
  sub_23B48BD90(v15, v22, type metadata accessor for PeriodicForecasts);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B48BDF0(v15, type metadata accessor for PeriodicForecasts);
}

uint64_t sub_23B48BCC4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133CC8, &qword_23B51ACD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B48BD3C()
{
  result = qword_27E133CF0;
  if (!qword_27E133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133CF0);
  }

  return result;
}

uint64_t sub_23B48BD90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B48BDF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23B48BE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C646F69726570 && a2 == 0xEC0000006874676ELL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
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

uint64_t sub_23B48BF54(char a1)
{
  if (a1)
  {
    return 0x73646F69726570;
  }

  else
  {
    return 0x654C646F69726570;
  }
}

uint64_t sub_23B48BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B48BE88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48BFC4(uint64_t a1)
{
  v2 = sub_23B48C220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48C000(uint64_t a1)
{
  v2 = sub_23B48C220();

  return MEMORY[0x2821FE720](a1, v2);
}

void static PeriodicForecast.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_23B3E0068(a1[1], a2[1]);
  }
}

uint64_t PeriodicForecast.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133CF8, &qword_23B51ACE8);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48C220();
  sub_23B50D974();
  v13 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D08, &qword_23B51ACF0);
    sub_23B48C274(&qword_27E133D10, &qword_27E132078, &protocol conformance descriptor for DayPartForecast, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_4_29();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B48C220()
{
  result = qword_27E133D00;
  if (!qword_27E133D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D00);
  }

  return result;
}

uint64_t sub_23B48C274(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D08, &qword_23B51ACF0);
    sub_23B48C76C(a2, type metadata accessor for DayPartForecast, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PeriodicForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D18, &qword_23B51ACF8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B48C220();
  sub_23B50D964();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_23B50D724();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D08, &qword_23B51ACF0);
    v15 = 1;
    sub_23B48C274(&qword_27E133D20, &qword_27E1320C0, &protocol conformance descriptor for DayPartForecast, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_3_37();
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    v12 = v14[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void PeriodicForecasts.hash(into:)()
{
  WeatherMetadata.hash(into:)();
  type metadata accessor for PeriodicForecasts(0);

  sub_23B4093F8();
}

uint64_t PeriodicForecasts.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  type metadata accessor for PeriodicForecasts(0);
  sub_23B4093F8();
  return sub_23B50D914();
}

uint64_t sub_23B48C5CC(uint64_t a1)
{
  sub_23B50D8C4();
  WeatherMetadata.hash(into:)();
  sub_23B4093F8();
  return sub_23B50D914();
}

uint64_t PeriodicForecast.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x23EE9DB40](*v1);

  return sub_23B409550(a1, v3);
}

uint64_t PeriodicForecast.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  sub_23B409550(v4, v2);
  return sub_23B50D914();
}

uint64_t sub_23B48C6CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v2);
  sub_23B409550(v5, v3);
  return sub_23B50D914();
}

uint64_t sub_23B48C76C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B48C7B8()
{
  result = qword_27E133D30;
  if (!qword_27E133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D30);
  }

  return result;
}

_BYTE *sub_23B48C82C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B48C90C()
{
  result = qword_27E133D38;
  if (!qword_27E133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D38);
  }

  return result;
}

unint64_t sub_23B48C964()
{
  result = qword_27E133D40;
  if (!qword_27E133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D40);
  }

  return result;
}

unint64_t sub_23B48C9BC()
{
  result = qword_27E133D48;
  if (!qword_27E133D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D48);
  }

  return result;
}

unint64_t sub_23B48CA14()
{
  result = qword_27E133D50;
  if (!qword_27E133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D50);
  }

  return result;
}

unint64_t sub_23B48CA6C()
{
  result = qword_27E133D58;
  if (!qword_27E133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D58);
  }

  return result;
}

unint64_t sub_23B48CAC4()
{
  result = qword_27E133D60;
  if (!qword_27E133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D60);
  }

  return result;
}

uint64_t static WeatherServiceLastFetched.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  Fetched = type metadata accessor for WeatherServiceLastFetched(0);
  MEMORY[0x28223BE20](Fetched - 8);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D68, &qword_23B51B100);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_23B3CE870(a1, &v22 - v14);
  sub_23B3CE870(a2, &v15[v17]);
  OUTLINED_FUNCTION_4_0(v15);
  if (!v19)
  {
    sub_23B3CE870(v15, v12);
    OUTLINED_FUNCTION_4_0(&v15[v17]);
    if (!v19)
    {
      (*(v5 + 32))(v8, &v15[v17], v4);
      v18 = sub_23B50ACD4();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v12, v4);
      sub_23B48CDB4(v15);
      return v18 & 1;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_23B48CD4C(v15);
    v18 = 0;
    return v18 & 1;
  }

  OUTLINED_FUNCTION_4_0(&v15[v17]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_23B48CDB4(v15);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_23B48CD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D68, &qword_23B51B100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B48CDB4(uint64_t a1)
{
  Fetched = type metadata accessor for WeatherServiceLastFetched(0);
  (*(*(Fetched - 8) + 8))(a1, Fetched);
  return a1;
}

void Forecast<>.summaries.getter()
{
  if (*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 64)))
  {
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v1 = sub_23B50CDF4();
    __swift_project_value_buffer(v1, qword_280B4E9D8);
    v2 = sub_23B50CDD4();
    v3 = sub_23B50D4C4();
    if (OUTLINED_FUNCTION_27_11(v3))
    {
      v4 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_6(v4);
      OUTLINED_FUNCTION_17_14(&dword_23B38D000, v5, v6, "Missing summaries for minute forecast.");
      OUTLINED_FUNCTION_9_11();
    }
  }
}

void Forecast<>.init(_:summary:conditions:summaries:metadata:)()
{
  OUTLINED_FUNCTION_28_8();
  *v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  OUTLINED_FUNCTION_20_14(v4);
  OUTLINED_FUNCTION_121(v0 + *(v1 + 68));
}

void Forecast.init(_:metadata:marineLocation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  *a9 = a1;
  v12 = OUTLINED_FUNCTION_42_6(a1, a2, a3, a4, a5, a6, a7, a8, a4);
  OUTLINED_FUNCTION_40_5(v12);
  OUTLINED_FUNCTION_21_13();
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11;
}

void Forecast<>.conditions.getter()
{
  if (*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 60)))
  {
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v1 = sub_23B50CDF4();
    __swift_project_value_buffer(v1, qword_280B4E9D8);
    v2 = sub_23B50CDD4();
    v3 = sub_23B50D4C4();
    if (OUTLINED_FUNCTION_27_11(v3))
    {
      v4 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_6(v4);
      OUTLINED_FUNCTION_17_14(&dword_23B38D000, v5, v6, "Missing conditions for minute forecast.");
      OUTLINED_FUNCTION_9_11();
    }
  }
}

uint64_t Forecast<>.isExpired.getter()
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v0);
  sub_23B50B9D4();
  sub_23B50B994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0);
  type metadata accessor for WeatherMetadata(0);
  sub_23B48F844(&qword_280B43110, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v1 = sub_23B50D114();
  v2 = OUTLINED_FUNCTION_31_7();
  v3(v2);
  return v1 & 1;
}

uint64_t Forecast.forecast.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Forecast.minuteSummary.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

__n128 Forecast.marineLocation.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 68));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

void Forecast.init(_:minuteSummary:minuteConditions:minuteSummaries:metadata:)()
{
  OUTLINED_FUNCTION_28_8();
  *v0 = v2;
  v10 = OUTLINED_FUNCTION_42_6(v2, v3, v4, v5, v6, v7, v8, v9, v8);
  OUTLINED_FUNCTION_20_14(v10);
  OUTLINED_FUNCTION_121(v0 + *(v1 + 68));
}

uint64_t static Forecast.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_23B50D324();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v17 = OUTLINED_FUNCTION_42_6(v9, v10, v11, v12, v13, v14, v15, v16, a3);
  if (!static WeatherMetadata.== infix(_:_:)(a1 + v17[13], a2 + v17[13]))
  {
    return 0;
  }

  v18 = v17[14];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v24 = v17[15];
  v25 = *(a2 + v24);
  if (*(a1 + v24))
  {
    if (!v25)
    {
      return 0;
    }

    sub_23B3E132C();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v28 = v17[16];
  v29 = *(a2 + v28);
  if (*(a1 + v28))
  {
    if (!v29)
    {
      return 0;
    }

    sub_23B3E17B4();
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      return 0;
    }

LABEL_22:
    v32 = v17[17];
    v33 = (a1 + v32);
    v34 = *(a1 + v32 + 16);
    v35 = (a2 + v32);
    if (v34)
    {
      if ((v35[2] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v35[2])
      {
        return 0;
      }

      if (*v33 != *v35 || v33[1] != v35[1])
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v29)
  {
    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_23B48D470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x75536574756E696DLL && a2 == 0xED00007972616D6DLL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000023B5360C0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x75536574756E696DLL && a2 == 0xEF73656972616D6DLL;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F4C656E6972616DLL && a2 == 0xEE006E6F69746163)
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

unint64_t sub_23B48D678(char a1)
{
  result = 0x7473616365726F66;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
    case 4:
      result = 0x75536574756E696DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6F4C656E6972616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B48D750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B48D470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48D784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3DEE2C();
  *a1 = result;
  return result;
}

uint64_t sub_23B48D7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B48D80C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Forecast.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_107();
  v26 = v23;
  v28 = v27;
  v37 = *(v29 + 32);
  v36 = v29;
  v38[0] = *(v29 + 16);
  v38[1] = v37;
  type metadata accessor for Forecast.CodingKeys(255, v38);
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  v30 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v32 = v31;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_127();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_23B50D974();
  *&v38[0] = *v26;
  sub_23B50D304();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v24)
  {
    OUTLINED_FUNCTION_37_6();
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v34, v35, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
    LOBYTE(v38[0]) = 2;
    sub_23B50D774();
    *&v38[0] = *(v26 + v36[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F88C();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D794();
    *&v38[0] = *(v26 + v36[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F940();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D794();
    OUTLINED_FUNCTION_35_8((v26 + v36[17]));
    sub_23B48F9F4();
    sub_23B50D794();
  }

  (*(v32 + 8))(v25, v30);
  OUTLINED_FUNCTION_105();
}

void Forecast.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_107();
  v66 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v59 = v34;
  v60 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v62 = v36;
  *&v70 = v31;
  *(&v70 + 1) = v29;
  v71 = v27;
  v72 = v25;
  type metadata accessor for Forecast.CodingKeys(255, &v70);
  OUTLINED_FUNCTION_15_16();
  swift_getWitnessTable();
  v64 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v61 = v37;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  v40 = &v58 - v39;
  *&v70 = v31;
  *(&v70 + 1) = v29;
  v71 = v27;
  v72 = v25;
  v65 = type metadata accessor for Forecast(0, &v70);
  OUTLINED_FUNCTION_5();
  v42 = v41;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  v67 = (&v58 - v44);
  v68 = v33;
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v63 = v40;
  v45 = v66;
  sub_23B50D964();
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    v46 = v62;
    sub_23B50D304();
    v69 = v29;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D734();
    v47 = v67;
    *v67 = v70;
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v48, v49, &protocol conformance descriptor for WeatherMetadata);
    sub_23B50D734();
    v50 = v65;
    sub_23B3CA20C(v46, v47 + *(v65 + 52));
    LOBYTE(v70) = 2;
    v51 = sub_23B50D6B4();
    v52 = (v47 + v50[14]);
    *v52 = v51;
    v52[1] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48FA48();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D6D4();
    *(v47 + v50[15]) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48FAFC();
    OUTLINED_FUNCTION_18_16();
    sub_23B50D6D4();
    *(v47 + v50[16]) = v70;
    sub_23B48FBB0();
    sub_23B50D6D4();
    v54 = OUTLINED_FUNCTION_19_13();
    v55(v54);
    v56 = v71;
    v57 = v47 + v50[17];
    *v57 = v70;
    v57[16] = v56;
    (*(v42 + 16))(v59, v47, v50);
    __swift_destroy_boxed_opaque_existential_1(v68);
    (*(v42 + 8))(v47, v50);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B48E0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B48E158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B48E1C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B48E21C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t Forecast<>.summary.getter()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA0, &qword_23B5101A0) + 56));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    if (qword_280B43440 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
    }

    v3 = sub_23B50CDF4();
    __swift_project_value_buffer(v3, qword_280B4E9D8);
    v4 = sub_23B50CDD4();
    v5 = sub_23B50D4C4();
    if (OUTLINED_FUNCTION_27_11(v5))
    {
      v6 = OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_6(v6);
      OUTLINED_FUNCTION_17_14(&dword_23B38D000, v7, v8, "Missing summary for minute forecast.");
      OUTLINED_FUNCTION_9_11();
    }

    return 0;
  }

  return v2;
}

void Forecast<>.init(from:)()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_41_5(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DB0, &unk_23B51B178);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v6 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  sub_23B48FDE0(0, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_16_11();
  v9 = sub_23B48FC1C(v7, &qword_27E133DB8, _s14HourCodingKeysOMa, v8);
  OUTLINED_FUNCTION_24_10(v9);
  if (!v0)
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_42();
    v12 = sub_23B48F844(v10, v11, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_23_12(v12);
    OUTLINED_FUNCTION_39_7();
    type metadata accessor for HourWeather(0);
    v13 = sub_23B48F844(&qword_280B430D0, type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v14 = OUTLINED_FUNCTION_34_9(v13);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v16 = OUTLINED_FUNCTION_6_18();
    v17(v16);
    *v6 = v15;
    v18 = (v6 + v20[14]);
    *v18 = 0;
    v18[1] = 0;
    *(v6 + v20[15]) = 0;
    *(v6 + v20[16]) = 0;
    OUTLINED_FUNCTION_121(v6 + v20[17]);
    sub_23B3E3DA8(v6, v19, &qword_27E131CA8, &unk_23B50ED70);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_41_5(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DD8, &unk_23B51B198);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v6 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  sub_23B48FDE0(0, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_14_23();
  v9 = sub_23B48FC1C(v7, &qword_27E133DE0, _s13DayCodingKeysOMa, v8);
  OUTLINED_FUNCTION_24_10(v9);
  if (!v0)
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_0_42();
    v12 = sub_23B48F844(v10, v11, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_23_12(v12);
    OUTLINED_FUNCTION_39_7();
    type metadata accessor for DayWeather(0);
    v13 = sub_23B48F844(&qword_280B430E8, type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v14 = OUTLINED_FUNCTION_34_9(v13);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v16 = OUTLINED_FUNCTION_6_18();
    v17(v16);
    *v6 = v15;
    v18 = (v6 + v20[14]);
    *v18 = 0;
    v18[1] = 0;
    *(v6 + v20[15]) = 0;
    *(v6 + v20[16]) = 0;
    OUTLINED_FUNCTION_121(v6 + v20[17]);
    sub_23B3E3DA8(v6, v19, &qword_27E131CB0, &qword_23B516B60);
  }

  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_105();
}

void Forecast<>.encode(to:)()
{
  OUTLINED_FUNCTION_107();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DC8, &qword_23B51B188);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  sub_23B48FDE0(0, &qword_27E133DB8, _s14HourCodingKeysOMa);
  OUTLINED_FUNCTION_16_11();
  v4 = sub_23B48FC1C(v2, &qword_27E133DB8, _s14HourCodingKeysOMa, v3);
  OUTLINED_FUNCTION_30_8(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  OUTLINED_FUNCTION_38_6();
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v5, v6, &protocol conformance descriptor for WeatherMetadata);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DD0, &qword_23B51B190);
    sub_23B48FC60();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DF0, &qword_23B51B1A8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  sub_23B48FDE0(0, &qword_27E133DE0, _s13DayCodingKeysOMa);
  OUTLINED_FUNCTION_14_23();
  v4 = sub_23B48FC1C(v2, &qword_27E133DE0, _s13DayCodingKeysOMa, v3);
  OUTLINED_FUNCTION_30_8(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  OUTLINED_FUNCTION_38_6();
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v5, v6, &protocol conformance descriptor for WeatherMetadata);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133DF8, &unk_23B51B1B0);
    sub_23B48FD2C();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  v7 = OUTLINED_FUNCTION_31_7();
  v8(v7);
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_107();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E20, &qword_23B51B1C8);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_13_18();
  sub_23B48FDE0(0, &qword_27E133E08, v8);
  OUTLINED_FUNCTION_12_18();
  sub_23B48FC1C(v9, &qword_27E133E08, v3, v10);
  sub_23B50D974();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_0_42();
  sub_23B48F844(v12, v13, &protocol conformance descriptor for WeatherMetadata);
  OUTLINED_FUNCTION_11_16();
  sub_23B50D7F4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E28, &qword_23B51B1D0);
    sub_23B48FE44();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_35_8((v0 + *(v11 + 68)));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E40, &unk_23B51B1D8);
    sub_23B48FEF8();
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_11_16();
    sub_23B50D7F4();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_23B48E7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B3F168C(*a1, a1[1], &unk_284E0DC68);
  *a2 = result;
  return result;
}

uint64_t sub_23B48E7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3F168C(a1, a2, &unk_284E0DC68);
  *a3 = result;
  return result;
}

uint64_t sub_23B48E828(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DC0, &qword_27E133DB8, _s14HourCodingKeysOMa, &unk_23B51B9B0);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48E89C(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DC0, &qword_27E133DB8, _s14HourCodingKeysOMa, &unk_23B51B9B0);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B48ED58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B3F168C(*a1, a1[1], &unk_284E0DCB8);
  *a2 = result;
  return result;
}

uint64_t sub_23B48ED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3F168C(a1, a2, &unk_284E0DCB8);
  *a3 = result;
  return result;
}

uint64_t sub_23B48EDC0(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DE8, &qword_27E133DE0, _s13DayCodingKeysOMa, &unk_23B51B960);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48EE34(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133DE8, &qword_27E133DE0, _s13DayCodingKeysOMa, &unk_23B51B960);

  return MEMORY[0x2821FE720](a1, v2);
}

double Forecast<>.closestWaterLocation.getter()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8) + 68));
  if ((v1[16] & 1) == 0)
  {
    return *v1;
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v2 = sub_23B50CDF4();
  __swift_project_value_buffer(v2, qword_280B4E9D8);
  v3 = sub_23B50CDD4();
  v4 = sub_23B50D4C4();
  if (OUTLINED_FUNCTION_27_11(v4))
  {
    v5 = OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_36_6(v5);
    OUTLINED_FUNCTION_17_14(&dword_23B38D000, v6, v7, "Missing closestWaterLocation in marine forecast.");
    OUTLINED_FUNCTION_9_11();
  }

  return 0.0;
}

void Forecast<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_107();
  v28 = v27;
  v44 = v29;
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v47 = v31;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133E00, &qword_23B51B1C0);
  OUTLINED_FUNCTION_5();
  v46 = v32;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_127();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC0, &qword_23B50F1B8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  OUTLINED_FUNCTION_13_18();
  sub_23B48FDE0(0, &qword_27E133E08, v35);
  OUTLINED_FUNCTION_12_18();
  sub_23B48FC1C(v36, &qword_27E133E08, v26, v37);
  sub_23B50D964();
  if (!v24)
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_0_42();
    sub_23B48F844(v38, v39, &protocol conformance descriptor for WeatherMetadata);
    sub_23B50D734();
    sub_23B3CA20C(v47, v23 + v45[13]);
    type metadata accessor for HourMarineWeather(0);
    LOBYTE(v49) = 0;
    sub_23B48F844(&qword_27E133E18, type metadata accessor for HourMarineWeather, &protocol conformance descriptor for HourMarineWeather);
    v40 = sub_23B50D6A4();
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v41 = v40;
    }

    *v23 = v41;
    sub_23B48FBB0();
    sub_23B50D694();
    (*(v46 + 8))(v25, v48);
    v42 = v23 + v45[17];
    *v42 = v49;
    v42[16] = v50;
    v43 = (v23 + v45[14]);
    *v43 = 0;
    v43[1] = 0;
    *(v23 + v45[15]) = 0;
    *(v23 + v45[16]) = 0;
    sub_23B3E3DA8(v23, v44, &qword_27E131EC0, &qword_23B50F1B8);
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_105();
}

unint64_t sub_23B48F4F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23B3D81C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23B48F520@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D8210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23B48F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B3D81C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B48F57C(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133E10, &qword_27E133E08, _s20HourMarineCodingKeysOMa, &unk_23B51B910);

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B48F5F0(uint64_t a1)
{
  v2 = sub_23B48FC1C(&qword_27E133E10, &qword_27E133E08, _s20HourMarineCodingKeysOMa, &unk_23B51B910);

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Forecast<>.hash(into:)(uint64_t a1, int *a2, uint64_t a3)
{
  sub_23B50D314();
  WeatherMetadata.hash(into:)();
  if (*(v3 + a2[14] + 8))
  {
    OUTLINED_FUNCTION_84();
    sub_23B50D1C4();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v3 + a2[15]))
  {
    OUTLINED_FUNCTION_84();
    sub_23B4083F0();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  if (*(v3 + a2[16]))
  {
    OUTLINED_FUNCTION_84();
    sub_23B408004();
  }

  else
  {
    OUTLINED_FUNCTION_83();
  }

  v5 = (v3 + a2[17]);
  if (*(v5 + 16) == 1)
  {
    return OUTLINED_FUNCTION_83();
  }

  v8 = *v5;
  v7 = v5[1];
  OUTLINED_FUNCTION_84();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x23EE9DB70](v9);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x23EE9DB70](v10);
}

uint64_t Forecast<>.hashValue.getter(int *a1, uint64_t a2)
{
  sub_23B50D8C4();
  Forecast<>.hash(into:)(v5, a1, a2);
  return sub_23B50D914();
}

uint64_t sub_23B48F7D8(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_23B50D8C4();
  Forecast<>.hash(into:)(v6, a2, v4);
  return sub_23B50D914();
}

uint64_t sub_23B48F844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B48F88C()
{
  result = qword_280B41A28;
  if (!qword_280B41A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F844(&qword_280B42530, type metadata accessor for MinuteCondition, &protocol conformance descriptor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A28);
  }

  return result;
}

unint64_t sub_23B48F940()
{
  result = qword_280B41A30;
  if (!qword_280B41A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F844(&qword_280B42588, type metadata accessor for MinuteSummary, &protocol conformance descriptor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A30);
  }

  return result;
}

unint64_t sub_23B48F9F4()
{
  result = qword_27E133D80;
  if (!qword_27E133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D80);
  }

  return result;
}

unint64_t sub_23B48FA48()
{
  result = qword_27E133D88;
  if (!qword_27E133D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D70, &qword_23B51B168);
    sub_23B48F844(&qword_27E133D90, type metadata accessor for MinuteCondition, &protocol conformance descriptor for MinuteCondition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D88);
  }

  return result;
}

unint64_t sub_23B48FAFC()
{
  result = qword_27E133D98;
  if (!qword_27E133D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133D78, &qword_23B51B170);
    sub_23B48F844(&qword_27E133DA0, type metadata accessor for MinuteSummary, &protocol conformance descriptor for MinuteSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133D98);
  }

  return result;
}

unint64_t sub_23B48FBB0()
{
  result = qword_27E133DA8;
  if (!qword_27E133DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133DA8);
  }

  return result;
}

uint64_t sub_23B48FC1C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23B48FDE0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B48FC60()
{
  result = qword_280B45CB0;
  if (!qword_280B45CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133DD0, &qword_23B51B190);
    sub_23B48F844(&qword_280B430E0, type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CB0);
  }

  return result;
}

unint64_t sub_23B48FD2C()
{
  result = qword_280B45CB8;
  if (!qword_280B45CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133DF8, &unk_23B51B1B0);
    sub_23B48F844(&qword_280B430F8, type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CB8);
  }

  return result;
}

void sub_23B48FDE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23B48FE44()
{
  result = qword_27E133E30;
  if (!qword_27E133E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133E28, &qword_23B51B1D0);
    sub_23B48F844(&qword_27E133E38, type metadata accessor for HourMarineWeather, &protocol conformance descriptor for HourMarineWeather);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E133E30);
  }

  return result;
}

unint64_t sub_23B48FEF8()
{
  result = qword_27E133E48[0];
  if (!qword_27E133E48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E133E40, &unk_23B51B1D8);
    sub_23B48F9F4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E133E48);
  }

  return result;
}

void sub_23B490060(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23B50D504();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_23B4900B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23B490180(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23B49024C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Precipitation.description.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_8_20();
      goto LABEL_14;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_7_34();
      goto LABEL_14;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_13:
      OUTLINED_FUNCTION_5_0();
LABEL_14:
      OUTLINED_FUNCTION_2_12();
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Precipitation.standaloneDescription.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

LABEL_13:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_5:
      OUTLINED_FUNCTION_2_33();
      goto LABEL_12;
    case 5:
      if (qword_280B43260 != -1)
      {
LABEL_15:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_11:
      OUTLINED_FUNCTION_1_27();
LABEL_12:
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Precipitation.accessibilityDescription.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_8_20();
      goto LABEL_14;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_6_19();
      OUTLINED_FUNCTION_7_34();
      goto LABEL_14;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_11(&qword_280B43260);
LABEL_13:
      OUTLINED_FUNCTION_5_0();
LABEL_14:
      OUTLINED_FUNCTION_2_12();
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::Precipitation_optional __swiftcall Precipitation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String_optional __swiftcall Precipitation.accessibilityDescription(with:)(Swift::Double with)
{
  v3 = sub_23B490DD8(*v1);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132188, &unk_23B510130);
    v5 = swift_allocObject();
    v6 = MEMORY[0x277D839F8];
    *(v5 + 16) = xmmword_23B50ED30;
    v7 = MEMORY[0x277D83A80];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = with * 100.0;
    v3 = sub_23B50D174();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v3;
  v11 = v9;
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}