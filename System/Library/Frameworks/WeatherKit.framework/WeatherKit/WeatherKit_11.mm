uint64_t sub_23B490DD8(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_11;
      }

LABEL_12:
      swift_once();
LABEL_11:
      result = sub_23B50AAD4();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_23B491050()
{
  result = qword_27E134018;
  if (!qword_27E134018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134020, &qword_23B51BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134018);
  }

  return result;
}

unint64_t sub_23B4910B4()
{
  result = qword_280B42578;
  if (!qword_280B42578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42578);
  }

  return result;
}

WeatherKit::WeatherQueryMarineHourlyRelativeRange __swiftcall WeatherQueryMarineHourlyRelativeRange.init(start:end:relativeTo:)(Swift::Int start, Swift::Int end, WeatherKit::WeatherQueryMarineHourlyRelativeRange::RelativeTo relativeTo)
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

uint64_t WeatherQueryMarineHourlyRelativeRange.RelativeTo.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B4911B4()
{
  result = qword_27E134028;
  if (!qword_27E134028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134028);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherQueryMarineHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

int *WeatherChange.init(date:highTemperature:lowTemperature:dayPrecipitationAmount:nightPrecipitationAmount:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v16 + 32))(a6, a1);
  if (v15 == 3)
  {
    v9 = 2;
  }

  result = type metadata accessor for WeatherChange(0);
  *(a6 + result[5]) = v9;
  if (v14 == 3)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3;
  }

  *(a6 + result[6]) = v18;
  if (v13 == 3)
  {
    v19 = 2;
  }

  else
  {
    v19 = a4;
  }

  *(a6 + result[7]) = v19;
  if (v12 == 3)
  {
    v20 = 2;
  }

  else
  {
    v20 = a5;
  }

  *(a6 + result[8]) = v20;
  return result;
}

uint64_t sub_23B4913D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616572636E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616572636564 && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x796461657473 && a2 == 0xE600000000000000)
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

uint64_t sub_23B4914E4(char a1)
{
  if (!a1)
  {
    return 0x6573616572636E69;
  }

  if (a1 == 1)
  {
    return 0x6573616572636564;
  }

  return 0x796461657473;
}

uint64_t sub_23B491534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4913D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49155C(uint64_t a1)
{
  v2 = sub_23B492928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491598(uint64_t a1)
{
  v2 = sub_23B492928();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4915D4(uint64_t a1)
{
  v2 = sub_23B4929D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491610(uint64_t a1)
{
  v2 = sub_23B4929D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B49164C(uint64_t a1)
{
  v2 = sub_23B492A24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491688(uint64_t a1)
{
  v2 = sub_23B492A24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4916C4(uint64_t a1)
{
  v2 = sub_23B49297C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491700(uint64_t a1)
{
  v2 = sub_23B49297C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B491770(uint64_t a1)
{
  v2 = *v1;
  sub_23B50D8C4();
  WeatherChange.Direction.hash(into:)(v4, v2);
  return sub_23B50D914();
}

uint64_t WeatherChange.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t WeatherChange.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t WeatherChange.highTemperature.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t WeatherChange.highTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherChange(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.lowTemperature.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t WeatherChange.lowTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherChange(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.dayPrecipitationAmount.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t WeatherChange.dayPrecipitationAmount.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherChange(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t WeatherChange.nightPrecipitationAmount.setter()
{
  result = OUTLINED_FUNCTION_15_17();
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t WeatherChange.nightPrecipitationAmount.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for WeatherChange(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B491AC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023B5366F0 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x800000023B536710 == a2)
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

unint64_t sub_23B491C7C(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x706D655468676968;
      break;
    case 2:
      result = 0x65706D6554776F6CLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B491D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B491AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B491D64(uint64_t a1)
{
  v2 = sub_23B492094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B491DA0(uint64_t a1)
{
  v2 = sub_23B492094();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static WeatherChange.== infix(_:_:)(uint64_t a1)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WeatherChange(0);
  OUTLINED_FUNCTION_7_35();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35();
  if (!v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_35();
  return v1 != 0;
}

uint64_t WeatherChange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134030, &qword_23B51BCB0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492094();
  sub_23B50D974();
  v26[1] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v11, v12, MEMORY[0x277CC9580]);
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherChange(0);
    v26[0] = *(v3 + v13[5]);
    v25 = 1;
    sub_23B4920E8();
    OUTLINED_FUNCTION_2_34(v26, &v25, v14, &type metadata for WeatherChange.Direction);
    v24 = *(v3 + v13[6]);
    v23 = 2;
    OUTLINED_FUNCTION_2_34(&v24, &v23, v15, &type metadata for WeatherChange.Direction);
    v22 = *(v3 + v13[7]);
    v21 = 3;
    OUTLINED_FUNCTION_2_34(&v22, &v21, v16, &type metadata for WeatherChange.Direction);
    v20 = *(v3 + v13[8]);
    HIBYTE(v19) = 4;
    OUTLINED_FUNCTION_2_34(&v20, &v19 + 7, v17, &type metadata for WeatherChange.Direction);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B492094()
{
  result = qword_280B45CC0;
  if (!qword_280B45CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CC0);
  }

  return result;
}

unint64_t sub_23B4920E8()
{
  result = qword_27E134038;
  if (!qword_27E134038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134038);
  }

  return result;
}

uint64_t WeatherChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v24 = v4;
  MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134040, &qword_23B51BCB8);
  OUTLINED_FUNCTION_5();
  v26 = v8;
  v27 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for WeatherChange(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492094();
  v14 = v28;
  sub_23B50D964();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = a1;
  v15 = v24;
  v32[2] = 0;
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v16, v17, MEMORY[0x277CC95A0]);
  v18 = v25;
  sub_23B50D734();
  (*(v15 + 32))(v13, v18, v3);
  v32[0] = 1;
  sub_23B4924C8();
  OUTLINED_FUNCTION_3_38(&type metadata for WeatherChange.Direction, v32);
  v13[v10[5]] = v32[1];
  v31[0] = 2;
  OUTLINED_FUNCTION_3_38(&type metadata for WeatherChange.Direction, v31);
  v13[v10[6]] = v31[1];
  v30[0] = 3;
  OUTLINED_FUNCTION_3_38(&type metadata for WeatherChange.Direction, v30);
  v13[v10[7]] = v30[1];
  v29[0] = 4;
  OUTLINED_FUNCTION_3_38(&type metadata for WeatherChange.Direction, v29);
  v19 = OUTLINED_FUNCTION_6_20();
  v20(v19);
  v13[v10[8]] = v29[9];
  sub_23B49251C(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_23B492580(v13);
}

unint64_t sub_23B4924C8()
{
  result = qword_27E134048;
  if (!qword_27E134048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134048);
  }

  return result;
}

uint64_t sub_23B49251C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B492580(uint64_t a1)
{
  v2 = type metadata accessor for WeatherChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherChange.Direction.encode(to:)(void *a1, int a2)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134050, &qword_23B51BCC0);
  OUTLINED_FUNCTION_5();
  v31 = v4;
  v32 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v30 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134058, &qword_23B51BCC8);
  OUTLINED_FUNCTION_5();
  v28 = v8;
  v29 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134060, &qword_23B51BCD0);
  OUTLINED_FUNCTION_5();
  v27 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134068, &qword_23B51BCD8);
  OUTLINED_FUNCTION_5();
  v19 = v18;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B492928();
  sub_23B50D974();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_23B4929D0();
      OUTLINED_FUNCTION_13_19(&type metadata for WeatherChange.Direction.DecreaseCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_23B49297C();
      v24 = v30;
      OUTLINED_FUNCTION_13_19(&type metadata for WeatherChange.Direction.SteadyCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_23B492A24();
    OUTLINED_FUNCTION_13_19(&type metadata for WeatherChange.Direction.IncreaseCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

unint64_t sub_23B492928()
{
  result = qword_27E134070;
  if (!qword_27E134070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134070);
  }

  return result;
}

unint64_t sub_23B49297C()
{
  result = qword_27E134078;
  if (!qword_27E134078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134078);
  }

  return result;
}

unint64_t sub_23B4929D0()
{
  result = qword_27E134080;
  if (!qword_27E134080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134080);
  }

  return result;
}

unint64_t sub_23B492A24()
{
  result = qword_27E134088;
  if (!qword_27E134088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134088);
  }

  return result;
}

uint64_t WeatherChange.Direction.init(from:)(void *a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134090, &qword_23B51BCE0);
  OUTLINED_FUNCTION_5();
  v60 = v2;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v58 = &v52 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134098, &qword_23B51BCE8);
  OUTLINED_FUNCTION_5();
  v57 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1340A0, &qword_23B51BCF0);
  OUTLINED_FUNCTION_5();
  v56 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1340A8, &unk_23B51BCF8);
  OUTLINED_FUNCTION_5();
  v61 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_23B492928();
  v18 = v63;
  sub_23B50D964();
  if (v18)
  {
    goto LABEL_12;
  }

  v52 = v9;
  v53 = v13;
  v54 = v8;
  v55 = 0;
  v19 = v62;
  v63 = a1;
  sub_23B50D744();
  result = sub_23B40D8C8();
  v17 = v14;
  if (v22 == v23 >> 1)
  {
    goto LABEL_10;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = v14;
    v25 = *(v21 + v22);
    v26 = sub_23B40D8C4();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = v59;
    v32 = v60;
    if (v28 == v30 >> 1)
    {
      v17 = v25;
      if (v25)
      {
        v56 = v26;
        v33 = v55;
        if (v25 == 1)
        {
          v65 = 1;
          sub_23B4929D0();
          v34 = v54;
          OUTLINED_FUNCTION_11_17();
          sub_23B50D674();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v57 + 8))(v34, v31);
            v35 = OUTLINED_FUNCTION_12_19();
            v36(v35);
LABEL_21:
            __swift_destroy_boxed_opaque_existential_1(v63);
            return v17;
          }
        }

        else
        {
          LODWORD(v59) = v25;
          v66 = 2;
          sub_23B49297C();
          v17 = v58;
          OUTLINED_FUNCTION_11_17();
          sub_23B50D674();
          if (!v33)
          {
            swift_unknownObjectRelease();
            (*(v32 + 8))(v17, v19);
            v50 = OUTLINED_FUNCTION_12_19();
            v51(v50);
            v17 = v59;
            goto LABEL_21;
          }
        }

        v46 = OUTLINED_FUNCTION_12_19();
        v47(v46);
      }

      else
      {
        v64 = 0;
        sub_23B492A24();
        v42 = v53;
        OUTLINED_FUNCTION_11_17();
        v43 = v55;
        sub_23B50D674();
        if (!v43)
        {
          swift_unknownObjectRelease();
          (*(v56 + 8))(v42, v52);
          v48 = OUTLINED_FUNCTION_10_21();
          v49(v48, v24);
          goto LABEL_21;
        }

        v44 = OUTLINED_FUNCTION_10_21();
        v45(v44, v24);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v24;
LABEL_10:
    v37 = sub_23B50D5F4();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v39 = &type metadata for WeatherChange.Direction;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = OUTLINED_FUNCTION_10_21();
    v41(v40, v17);
LABEL_11:
    a1 = v63;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B49300C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = WeatherChange.Direction.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WeatherChange.hash(into:)()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_1_28();
  sub_23B493220(v1, v2, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v3 = type metadata accessor for WeatherChange(0);
  MEMORY[0x23EE9DB40](*(v0 + v3[5]));
  MEMORY[0x23EE9DB40](*(v0 + v3[6]));
  MEMORY[0x23EE9DB40](*(v0 + v3[7]));
  return MEMORY[0x23EE9DB40](*(v0 + v3[8]));
}

uint64_t WeatherChange.hashValue.getter()
{
  sub_23B50D8C4();
  WeatherChange.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B493144(uint64_t a1)
{
  sub_23B50D8C4();
  WeatherChange.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B493184()
{
  result = qword_27E1340B0;
  if (!qword_27E1340B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340B0);
  }

  return result;
}

uint64_t sub_23B493220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_23B4932A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B49348C()
{
  result = qword_27E1340C0;
  if (!qword_27E1340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340C0);
  }

  return result;
}

unint64_t sub_23B4934E4()
{
  result = qword_27E1340C8;
  if (!qword_27E1340C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340C8);
  }

  return result;
}

unint64_t sub_23B49353C()
{
  result = qword_27E1340D0;
  if (!qword_27E1340D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340D0);
  }

  return result;
}

unint64_t sub_23B493594()
{
  result = qword_27E1340D8;
  if (!qword_27E1340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340D8);
  }

  return result;
}

unint64_t sub_23B4935EC()
{
  result = qword_27E1340E0;
  if (!qword_27E1340E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340E0);
  }

  return result;
}

unint64_t sub_23B493644()
{
  result = qword_27E1340E8;
  if (!qword_27E1340E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340E8);
  }

  return result;
}

unint64_t sub_23B49369C()
{
  result = qword_27E1340F0;
  if (!qword_27E1340F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340F0);
  }

  return result;
}

unint64_t sub_23B4936F4()
{
  result = qword_27E1340F8;
  if (!qword_27E1340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1340F8);
  }

  return result;
}

unint64_t sub_23B49374C()
{
  result = qword_27E134100;
  if (!qword_27E134100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134100);
  }

  return result;
}

unint64_t sub_23B4937A4()
{
  result = qword_27E134108;
  if (!qword_27E134108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134108);
  }

  return result;
}

unint64_t sub_23B4937FC()
{
  result = qword_280B45CC8;
  if (!qword_280B45CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B45CC8);
  }

  return result;
}

unint64_t sub_23B493854()
{
  result = qword_280B45CD0[0];
  if (!qword_280B45CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B45CD0);
  }

  return result;
}

uint64_t PressureTrend.description.getter()
{
  if (!*v0)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*v0 != 1)
  {
    if (qword_280B43260 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_11(&qword_280B43260);
    goto LABEL_8;
  }

  if (qword_280B43260 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_280B43260);
  }

LABEL_9:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

uint64_t PressureTrend.accessibilityDescription.getter()
{
  if (!*v0)
  {
    if (qword_280B43260 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*v0 != 1)
  {
    if (qword_280B43260 == -1)
    {
LABEL_8:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_9;
    }

LABEL_11:
    OUTLINED_FUNCTION_0_11(&qword_280B43260);
    goto LABEL_8;
  }

  if (qword_280B43260 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_280B43260);
  }

LABEL_9:
  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::PressureTrend_optional __swiftcall PressureTrend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PressureTrend.rawValue.getter()
{
  v1 = 0x676E696C6C6166;
  if (*v0 != 1)
  {
    v1 = 0x796461657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69736972;
  }
}

uint64_t sub_23B493BB4@<X0>(uint64_t *a1@<X8>)
{
  result = PressureTrend.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B493CC8()
{
  result = qword_27E134110;
  if (!qword_27E134110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134118, &qword_23B51C360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134110);
  }

  return result;
}

unint64_t sub_23B493D30()
{
  result = qword_27E134120;
  if (!qword_27E134120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134120);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PressureTrend(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B493E50()
{
  result = qword_280B42568;
  if (!qword_280B42568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42568);
  }

  return result;
}

uint64_t sub_23B493EA4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134130, &qword_23B51C638);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_23B50B604();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v17 = *(v10 + 16);
  v26 = v2;
  v17(v12, v2, v9, v14);
  v24 = sub_23B4948CC(qword_280B43448, MEMORY[0x277D7ABD0]);
  sub_23B50D564();
  sub_23B4948CC(qword_280B42CA8, MEMORY[0x277D7ABC8]);
  v25 = a2;
  v18 = sub_23B50D134();
  v28 = v4;
  v19 = *(v4 + 48);
  *v8 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v10 + 32))(&v8[v19], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = v25;
    (v17)(&v8[v19], v25, v9);
    (v17)(v12, v20, v9);
    sub_23B50D574();
  }

  v21 = v27;
  sub_23B494910(v8, v27);
  v22 = *v21;
  (*(v10 + 32))(v29, &v21[*(v28 + 48)], v9);
  return v22;
}

uint64_t WeatherServiceCacheFitnessPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t WeatherServiceCacheReadConfig.age.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t WeatherServiceCacheReadConfig.location.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void sub_23B4943BC()
{
  *&xmmword_280B42710 = 1;
  BYTE8(xmmword_280B42710) = 1;
  qword_280B42720 = 0;
  LOBYTE(dword_280B42728) = 1;
  *(&dword_280B42728 + 1) = 0;
  *(&word_280B4272C + 1) = 1;
}

double static WeatherServiceCacheReadConfig.unexpiredExactMatches.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_280B42708 != -1)
  {
    swift_once();
  }

  *a1 = xmmword_280B42710;
  result = *(&xmmword_280B42710 + 15);
  *(a1 + 15) = *(&xmmword_280B42710 + 15);
  return result;
}

void WeatherServiceCacheReadConfig.init(age:location:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  *(v3 + 25) = 0;
  OUTLINED_FUNCTION_0_43(v3);
}

void WeatherServiceCacheReadConfig.init(age:location:fitnessPolicy:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v4 = *(a1 + 8);
  v7 = *(a2 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v7;
  *(a4 + 25) = 0;
  *(a4 + 29) = v6;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  *(v3 + 25) = 0;
  *(v3 + 27) = v4;
  *(v3 + 28) = v5;
  OUTLINED_FUNCTION_0_43(v3);
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_1_29(a1, a2, a3);
  v4[25] = v3;
  v4[26] = 0;
  v4[27] = v5;
  v4[28] = v6;
  OUTLINED_FUNCTION_0_43(v4);
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:)(char a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_3_39(a1, a2, a3, a4);
  *(v4 + 29) = v5;
  *(v4 + 30) = 0;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:interpolateCurrentWeather:)(char a1@<W2>, char a2@<W3>, char a3@<W4>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_3_39(a1, a2, a3, a4);
  *(v4 + 29) = v5;
  *(v4 + 30) = v6;
  OUTLINED_FUNCTION_2_35();
}

void WeatherServiceCacheReadPolicy.cachingOptions.getter(uint64_t *a1@<X8>)
{
  if ((*(v1 + 24) & 0xFF00) == 0x200)
  {
    v3 = 8;
  }

  else
  {
    v2 = *(v1 + 24) | ((*(v1 + 28) | (*(v1 + 30) << 16)) << 32);
    v3 = (v2 >> 14) & 4 | (v2 >> 7) & 2 | *(v1 + 8) & (*v1 == 0);
  }

  *a1 = v3;
}

unint64_t sub_23B4945D0()
{
  result = qword_27E134128;
  if (!qword_27E134128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134128);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WeatherServiceCacheReadPolicy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceCacheReadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 31))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherServiceCacheReadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 23) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_23B494708(uint64_t a1)
{
  v1 = *(a1 + 25);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B494724(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 25) = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceCacheFitnessPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B494824(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 31))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 25);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B494870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23B4948CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B50B604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B494910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134130, &qword_23B51C638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4949A0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DayWeather(0);
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  v13 = 0;
  v14 = *(a2 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v16 = 1;
      v17 = a3;
      return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
    }

    sub_23B4894C0(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v12);
    v15 = a1(v12);
    if (v3)
    {
      return sub_23B494C24(v12);
    }

    if (v15)
    {
      break;
    }

    sub_23B494C24(v12);
    ++v13;
  }

  v17 = a3;
  sub_23B48945C(v12, a3);
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v17, v16, 1, v6);
}

uint64_t Forecast<>.dayWeather(for:timeZone:)()
{
  v2 = OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = *v0;
  sub_23B50ADF4();
  sub_23B4949A0(sub_23B494C04, v9, v1);
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_23B494C24(uint64_t a1)
{
  v2 = type metadata accessor for DayWeather(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B494C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134138, &qword_23B51C640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SnowfallAmount.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() inches];
  v3 = type metadata accessor for SnowfallAmount(0);
  v4 = v3[9];
  sub_23B3E3A54();
  sub_23B50A9B4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  (*(*(v5 - 8) + 16))(v5 - 8, a1, a1 + v4, v5);
  v6 = OUTLINED_FUNCTION_0_44(v3[5]);
  v7(v6);
  v8 = OUTLINED_FUNCTION_0_44(v3[6]);
  v9(v8);
  v10 = OUTLINED_FUNCTION_0_44(v3[7]);
  v11(v10);
  v12 = OUTLINED_FUNCTION_0_44(v3[8]);

  return v13(v12);
}

unint64_t sub_23B494E64()
{
  result = qword_27E134140;
  if (!qword_27E134140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134140);
  }

  return result;
}

unint64_t sub_23B494EBC()
{
  result = qword_27E134148;
  if (!qword_27E134148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134148);
  }

  return result;
}

unint64_t sub_23B494F1C()
{
  result = qword_27E134150;
  if (!qword_27E134150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134150);
  }

  return result;
}

unint64_t sub_23B494F74()
{
  result = qword_27E134158;
  if (!qword_27E134158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134158);
  }

  return result;
}

WeatherKit::WatchDataSets sub_23B494FC8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = WatchDataSets.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B495008@<X0>(uint64_t *a1@<X8>)
{
  result = WatchDataSets.rawValue.getter();
  *a1 = result;
  return result;
}

__n128 AirQualityScale.init(identifier:displayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, __n128 a11, uint64_t a12, uint64_t *a13)
{
  result = a11;
  v14 = *a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 104) = a12;
  *(a9 + 112) = v14;
  return result;
}

__n128 AirQualityScale.init(identifier:displayName:shortDisplayName:longDisplayName:displayLabel:isNumerical:range:categories:gradient:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __n128 a13, uint64_t a14, uint64_t *a15)
{
  result = a13;
  v16 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = v16;
  return result;
}

uint64_t AirQualityScale.identifier.setter()
{
  OUTLINED_FUNCTION_4();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AirQualityScale.displayName.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AirQualityScale.shortDisplayName.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AirQualityScale.longDisplayName.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AirQualityScale.displayLabel.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AirQualityScale.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2;
  return result;
}

uint64_t AirQualityScale.categories.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

double AirQualityScale.gradient.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 112);

  return result;
}

uint64_t AirQualityScale.gradient.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 112) = v2;
  return result;
}

uint64_t sub_23B4954E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000023B536880 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x70736944676E6F6CLL && a2 == 0xEF656D614E79616CLL;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6972656D754E7369 && a2 == 0xEB000000006C6163;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000)
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

uint64_t sub_23B4957CC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x70736944676E6F6CLL;
      break;
    case 4:
      result = 0x4C79616C70736964;
      break;
    case 5:
      v3 = 0x656D754E7369;
      goto LABEL_8;
    case 6:
      result = 0x65676E6172;
      break;
    case 7:
      v3 = 0x6F6765746163;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      break;
    case 8:
      result = 0x746E656964617267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4958F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4954E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49591C(uint64_t a1)
{
  v2 = sub_23B495EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B495958(uint64_t a1)
{
  v2 = sub_23B495EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScale.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v35 = a1[6];
  v6 = a1[7];
  v32 = a1[9];
  v33 = a1[8];
  v29 = *(a1 + 80);
  v26 = a1[11];
  v27 = a1[12];
  v23 = a1[13];
  v21 = a1[14];
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v34 = *(a2 + 48);
  v30 = *(a2 + 72);
  v31 = *(a2 + 64);
  v28 = *(a2 + 80);
  v24 = *(a2 + 88);
  v25 = *(a2 + 96);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  v22 = *(a2 + 104);
  v20 = *(a2 + 112);
  if (!v12 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v8 && v4 == v7;
  if (!v13 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v10 && v5 == v9;
    if (!v14 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = v35 == v34 && v6 == v11;
    if (!v15 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v33 == v31 && v32 == v30)
  {
    v17 = v29 == v28 && v26 == v24;
    goto LABEL_39;
  }

  if ((sub_23B50D834() & 1) == 0 || v29 != v28)
  {
    return 0;
  }

  v17 = v26 == v24;
LABEL_39:
  v18 = v17 && v27 == v25;
  if (!v18 || (sub_23B3E1154(v23, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_23B3DFD4C(v21, v20);
}

uint64_t AirQualityScale.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134160, &qword_23B51C860);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(v1 + 16);
  v28 = *(v1 + 24);
  v29 = v9;
  v10 = *(v1 + 32);
  v26 = *(v1 + 40);
  v27 = v10;
  v11 = *(v1 + 48);
  v24 = *(v1 + 56);
  v25 = v11;
  v12 = *(v1 + 64);
  v22 = *(v1 + 72);
  v23 = v12;
  v33 = *(v1 + 80);
  v13 = *(v1 + 96);
  v20 = *(v1 + 88);
  v21 = v13;
  v14 = *(v1 + 104);
  v18 = *(v1 + 112);
  v19 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B495EF8();
  sub_23B50D974();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_23B50D7A4();
  if (!v15)
  {
    OUTLINED_FUNCTION_8_21(1);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D7A4();
    OUTLINED_FUNCTION_8_21(2);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D774();
    OUTLINED_FUNCTION_8_21(3);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D774();
    OUTLINED_FUNCTION_8_21(4);
    OUTLINED_FUNCTION_6_22();
    sub_23B50D7A4();
    LOBYTE(v31) = 5;
    sub_23B50D7B4();
    v31 = v20;
    v32 = v21;
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_280B41A10, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
    v31 = v19;
    v34 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134168, &qword_23B51C868);
    sub_23B4965A0(&qword_280B41A20, sub_23B495F4C, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
    v31 = v18;
    v34 = 8;
    sub_23B495FA0();

    OUTLINED_FUNCTION_3_40();
    sub_23B50D7F4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B495EF8()
{
  result = qword_280B42550;
  if (!qword_280B42550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42550);
  }

  return result;
}

unint64_t sub_23B495F4C()
{
  result = qword_280B42310;
  if (!qword_280B42310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42310);
  }

  return result;
}

unint64_t sub_23B495FA0()
{
  result = qword_280B422F0;
  if (!qword_280B422F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B422F0);
  }

  return result;
}

uint64_t AirQualityScale.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134170, &qword_23B51C870);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B495EF8();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_2_37();
    v6 = sub_23B50D6E4();
    v31 = v7;
    OUTLINED_FUNCTION_1_30(1);
    v28 = sub_23B50D6E4();
    v8 = v6;
    v30 = v9;
    OUTLINED_FUNCTION_1_30(2);
    v10 = sub_23B50D6B4();
    v12 = v11;
    v27 = v10;
    OUTLINED_FUNCTION_1_30(3);
    v13 = sub_23B50D6B4();
    v15 = v14;
    v26 = v13;
    OUTLINED_FUNCTION_2_37();
    v25 = sub_23B50D6E4();
    v29 = v16;
    LOBYTE(v33) = 5;
    OUTLINED_FUNCTION_2_37();
    v24 = sub_23B50D6F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_27E134178, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v22 = v34;
    v23 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134168, &qword_23B51C868);
    LOBYTE(v32[0]) = 7;
    sub_23B4965A0(&qword_27E134180, sub_23B496618, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v21 = v33;
    v48 = 8;
    sub_23B49666C();
    OUTLINED_FUNCTION_2_37();
    sub_23B50D734();
    v17 = OUTLINED_FUNCTION_0_45();
    v18(v17);
    v32[0] = v8;
    v32[1] = v31;
    v32[2] = v28;
    v32[3] = v30;
    v32[4] = v27;
    v32[5] = v12;
    v32[6] = v26;
    v32[7] = v15;
    v32[8] = v25;
    v32[9] = v29;
    LOBYTE(v32[10]) = v24 & 1;
    v32[11] = v23;
    v32[12] = v22;
    v32[13] = v21;
    v32[14] = v49;
    v19 = v49;
    memcpy(a2, v32, 0x78uLL);
    sub_23B3C8520(v32, &v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = v8;
    v34 = v31;
    v35 = v28;
    v36 = v30;
    v37 = v27;
    v38 = v12;
    v39 = v26;
    v40 = v15;
    v41 = v25;
    v42 = v29;
    v43 = v24 & 1;
    v44 = v23;
    v45 = v22;
    v46 = v21;
    v47 = v19;
    return sub_23B3C8B4C(&v33);
  }
}

uint64_t sub_23B496534(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4965A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134168, &qword_23B51C868);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B496618()
{
  result = qword_27E134188;
  if (!qword_27E134188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134188);
  }

  return result;
}

unint64_t sub_23B49666C()
{
  result = qword_27E134190;
  if (!qword_27E134190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134190);
  }

  return result;
}

void AirQualityScale.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[11];
  v5 = v1[12];
  sub_23B50D1C4();
  sub_23B50D1C4();
  if (v2)
  {
    sub_23B50D8E4();
    sub_23B50D1C4();
    if (v3)
    {
LABEL_3:
      sub_23B50D8E4();
      sub_23B50D1C4();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23B50D8E4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_23B50D8E4();
LABEL_6:
  sub_23B50D1C4();
  sub_23B50D8E4();
  MEMORY[0x23EE9DB40](v4);
  MEMORY[0x23EE9DB40](v5);
  sub_23B409FAC();

  sub_23B40879C();
}

uint64_t AirQualityScale.hashValue.getter()
{
  sub_23B50D8C4();
  AirQualityScale.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B496870(uint64_t a1)
{
  sub_23B50D8C4();
  AirQualityScale.hash(into:)(v2);
  return sub_23B50D914();
}

unint64_t sub_23B4968B0()
{
  result = qword_27E134198;
  if (!qword_27E134198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134198);
  }

  return result;
}

uint64_t sub_23B49690C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23B49694C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B496A98()
{
  result = qword_27E1341A0;
  if (!qword_27E1341A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341A0);
  }

  return result;
}

unint64_t sub_23B496AF0()
{
  result = qword_280B42540;
  if (!qword_280B42540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42540);
  }

  return result;
}

unint64_t sub_23B496B48()
{
  result = qword_280B42548;
  if (!qword_280B42548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42548);
  }

  return result;
}

uint64_t static PrecipitationAmountByType.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = objc_opt_self();
  v7 = [v6 inches];
  sub_23B3E3A54();
  sub_23B50A9B4();
  v8 = *(v3 + 16);
  v8(a1, v5, v2);
  v9 = type metadata accessor for PrecipitationAmountByType(0);
  v10 = OUTLINED_FUNCTION_0_46(v9[5]);
  (v8)(v10);
  v11 = OUTLINED_FUNCTION_0_46(v9[6]);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_0_46(v9[7]);
  (v8)(v12);
  v13 = OUTLINED_FUNCTION_0_46(v9[8]);
  (v8)(v13);
  v14 = [v6 inches];
  v15 = a1 + v9[9];
  v16 = type metadata accessor for SnowfallAmount(0);
  v17 = v16[9];
  sub_23B50A9B4();
  (*(v3 + 8))(v5, v2);
  v8(v15, (v15 + v17), v2);
  v18 = OUTLINED_FUNCTION_1_31(v16[5]);
  (v8)(v18);
  v19 = OUTLINED_FUNCTION_1_31(v16[6]);
  (v8)(v19);
  v20 = OUTLINED_FUNCTION_1_31(v16[7]);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_1_31(v16[8]);
  return (v8)(v21);
}

uint64_t sub_23B496FC8()
{
  v0 = OUTLINED_FUNCTION_5_25();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_24_11(*(v2 + 60));
}

uint64_t sub_23B497150(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B497228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRequirementsFactory.appGeoRequiredProducts(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  ProductRequirementsFactory.appRequiredProducts(for:)();
  sub_23B39E56C(v6, a1, &qword_27E132EC8, &unk_23B51CB00);
  v7 = v3[7];
  v8 = type metadata accessor for ProductRequirementsFactory.AppGeoRequiredProducts(0);
  sub_23B39E56C(v6 + v7, a1 + *(v8 + 20), &qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_41_6(&qword_27E131F10, &unk_23B51CB10, v3[8]);
  OUTLINED_FUNCTION_41_6(&qword_27E131F20, &unk_23B51CB20, v3[10]);
  OUTLINED_FUNCTION_41_6(&qword_27E132EE8, &qword_23B515820, v3[11]);
  OUTLINED_FUNCTION_41_6(&qword_27E132F08, &unk_23B51CB30, v3[12]);
  OUTLINED_FUNCTION_41_6(&qword_27E132ED8, &qword_23B515818, v3[13]);
  OUTLINED_FUNCTION_41_6(&qword_27E132EE0, &unk_23B51CB40, v3[14]);
  OUTLINED_FUNCTION_41_6(&qword_27E132F00, &qword_23B515830, v3[15]);
  OUTLINED_FUNCTION_41_6(&qword_27E132F10, &unk_23B51CB50, v3[16]);
  OUTLINED_FUNCTION_41_6(&qword_27E132EF0, &qword_23B515828, v3[17]);
  sub_23B497524(v6);
  v9 = a1 + *(v8 + 60);
  v10 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v18 = v9 + v14[8];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v19 = v9 + v14[9];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 2;
  v20 = v9 + v14[10];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 2;
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_23B497524(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRequirementsFactory.widgetGeoRequiredProducts(for:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  OUTLINED_FUNCTION_39_8(v6[8]);
  *(v10 + 16) = 1;
  OUTLINED_FUNCTION_39_8(v6[9]);
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_30_9(v1 + v6[10]);
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = type metadata accessor for ProductRequirementsFactory.WidgetGeoRequiredProducts(0);
  v21 = v1 + v20[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v2);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  v29 = (v21 + v25[8]);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_55_3(v29);
  OUTLINED_FUNCTION_30_9(v21 + v25[9]);
  OUTLINED_FUNCTION_30_9(v21 + v25[10]);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_11_18();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_23B3D07FC(v1 + v20[6]);
  OUTLINED_FUNCTION_17_15(v20[7]);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  OUTLINED_FUNCTION_3_41(v38);
  OUTLINED_FUNCTION_0_47(v39);
  OUTLINED_FUNCTION_17_15(v20[8]);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_3_41(v40);
  OUTLINED_FUNCTION_0_47(v41);
  OUTLINED_FUNCTION_17_15(v20[9]);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132F08, &unk_23B51CB30);
  OUTLINED_FUNCTION_3_41(v42);
  OUTLINED_FUNCTION_0_47(v43);
  OUTLINED_FUNCTION_17_15(v20[10]);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  OUTLINED_FUNCTION_3_41(v44);
  OUTLINED_FUNCTION_0_47(v45);
  OUTLINED_FUNCTION_17_15(v20[11]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EF8, &unk_23B51CB60);
  v47 = OUTLINED_FUNCTION_8_22(v46[7]);
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v2);
  OUTLINED_FUNCTION_21_14(v46[8]);
  OUTLINED_FUNCTION_14_24(v46[9]);
  OUTLINED_FUNCTION_14_24(v46[10]);
  v50 = OUTLINED_FUNCTION_7_36(v46[11]);
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_8_22(v46[12]);
  OUTLINED_FUNCTION_20();

  return __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

uint64_t ProductRequirementsFactory.menuRequiredProducts()()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = sub_23B50AA24();
  OUTLINED_FUNCTION_22_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EC8, &unk_23B51CB00);
  v5 = OUTLINED_FUNCTION_8_22(v4[7]);
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_21_14(v4[8]);
  OUTLINED_FUNCTION_29_10(v4[9]);
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_29_10(v4[10]);
  *(v9 + 16) = 2;
  Options = type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, Options);
  type metadata accessor for WeatherQueryPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = type metadata accessor for ProductRequirementsFactory.MenuRequiredProducts(0);
  v19 = v2 + v18[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED0, &qword_23B515810);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_22(v19 + v23);
  v25 = v19 + v24;
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v26 = OUTLINED_FUNCTION_16_12(*(v0 + 44));
  __swift_storeEnumTagSinglePayload(v26, v27, v28, Options);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = v2 + v18[6];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F10, &unk_23B51CB10);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_22(v33 + v37);
  v39 = v33 + v38;
  *v39 = 0;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v40 = OUTLINED_FUNCTION_16_12(*(v0 + 44));
  __swift_storeEnumTagSinglePayload(v40, v41, v42, Options);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v2 + v18[7];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F20, &unk_23B51CB20);
  OUTLINED_FUNCTION_31_8();
  v52 = OUTLINED_FUNCTION_16_12(v51);
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v3);
  v55 = OUTLINED_FUNCTION_16_12(*(v0 + 44));
  __swift_storeEnumTagSinglePayload(v55, v56, v57, Options);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  v62 = v47 + *(v0 + 32);
  *v62 = xmmword_23B51CAF0;
  *(v62 + 16) = 0;
  OUTLINED_FUNCTION_13_20();
  v63 = v2 + v18[8];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132EE8, &qword_23B515820);
  OUTLINED_FUNCTION_31_8();
  OUTLINED_FUNCTION_10_22(v63 + v67);
  v69 = v63 + v68;
  *v69 = 0;
  *(v69 + 8) = 0;
  *(v69 + 16) = 1;
  OUTLINED_FUNCTION_13_20();
  v70 = OUTLINED_FUNCTION_16_12(*(v0 + 44));
  __swift_storeEnumTagSinglePayload(v70, v71, v72, Options);
  OUTLINED_FUNCTION_12_20();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
  OUTLINED_FUNCTION_22_12();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132ED8, &qword_23B515818);
  v78 = OUTLINED_FUNCTION_8_22(v77[7]);
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v3);
  OUTLINED_FUNCTION_21_14(v77[8]);
  OUTLINED_FUNCTION_29_10(v77[9]);
  *(v81 + 16) = 2;
  OUTLINED_FUNCTION_29_10(v77[10]);
  *(v82 + 16) = 2;
  v83 = OUTLINED_FUNCTION_8_22(v77[11]);
  __swift_storeEnumTagSinglePayload(v83, v84, v85, Options);
  OUTLINED_FUNCTION_7_36(v77[12]);
  OUTLINED_FUNCTION_20();

  return __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
}

void sub_23B497C6C(uint64_t a1)
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v2 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v4 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v5 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
            if (v6 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
              if (v7 <= 0x3F)
              {
                sub_23B39B0D4(319, v7, v8, v9);
                if (v10 <= 0x3F)
                {
                  sub_23B39A134(319, &qword_280B426D0, &qword_27E131ED8, &qword_23B50F208);
                  if (v11 <= 0x3F)
                  {
                    sub_23B39A134(319, &qword_280B426D8, &qword_27E131E88, &unk_23B519360);
                    if (v12 <= 0x3F)
                    {
                      sub_23B39A134(319, &qword_280B426E8, &qword_27E131EF8, &unk_23B50F230);
                      if (v13 <= 0x3F)
                      {
                        sub_23B399C6C(319, &qword_280B42EE8, type metadata accessor for LocationInfo);
                        if (v14 <= 0x3F)
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
      }
    }
  }
}

void sub_23B497F40(uint64_t a1)
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v2 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v4 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v5 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EF8, &qword_27E131EF0, &unk_23B50F220);
            if (v6 <= 0x3F)
            {
              sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
              if (v7 <= 0x3F)
              {
                sub_23B399C6C(319, &qword_280B42EE8, type metadata accessor for LocationInfo);
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

void sub_23B498144(uint64_t a1)
{
  sub_23B399C6C(319, &qword_280B42F00, type metadata accessor for CurrentWeather);
  if (v1 <= 0x3F)
  {
    sub_23B39A134(319, &qword_280B42ED0, &qword_27E131C90, &unk_23B514EC0);
    if (v2 <= 0x3F)
    {
      sub_23B39A134(319, &qword_280B42ED8, &qword_27E131CA8, &unk_23B50ED70);
      if (v3 <= 0x3F)
      {
        sub_23B39A134(319, &qword_280B42EE0, &qword_27E131CB0, &qword_23B516B60);
        if (v4 <= 0x3F)
        {
          sub_23B39A134(319, &qword_280B42EF0, &qword_27E131C78, &qword_23B50ED40);
          if (v5 <= 0x3F)
          {
            sub_23B39A134(319, &qword_280B42EC8, &qword_27E131EC8, &unk_23B50F1F0);
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

uint64_t Wind.init(compassDirection:direction:speed:gust:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = type metadata accessor for Wind(0);
  v11 = v10[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  __swift_storeEnumTagSinglePayload(&a5[v11], 1, 1, v12);
  *a5 = a1;
  v13 = v10[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  (*(v14 + 32))(&a5[v13], a2);
  (*(*(v12 - 8) + 32))(&a5[v10[6]], a3, v12);

  return sub_23B4983E4(a4, &a5[v11]);
}

uint64_t sub_23B4983E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Wind.direction.setter()
{
  v2 = *(OUTLINED_FUNCTION_32_8() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Wind.speed.setter()
{
  v2 = *(OUTLINED_FUNCTION_32_8() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t Wind.gust.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_32_8() + 28);

  return sub_23B4983E4(v0, v2);
}

uint64_t Wind.CompassDirection.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_36;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_26;
      }

LABEL_45:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_26:
      OUTLINED_FUNCTION_2_39();
      goto LABEL_35;
    case 6:
      if (qword_280B43260 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    case 7:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 8:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

LABEL_48:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_34:
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_33_7();
      goto LABEL_35;
    case 10:
      if (qword_280B43260 != -1)
      {
LABEL_47:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_32:
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_33_7();
      goto LABEL_35;
    case 11:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    case 12:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      goto LABEL_35;
    case 13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

LABEL_46:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_28:
      OUTLINED_FUNCTION_27_13();
      goto LABEL_35;
    case 14:
      if (qword_280B43260 != -1)
      {
LABEL_36:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_5:
      OUTLINED_FUNCTION_5_0();
      goto LABEL_35;
    case 15:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    default:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

LABEL_44:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_24:
      OUTLINED_FUNCTION_2_39();
      OUTLINED_FUNCTION_17_16();
LABEL_35:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t Wind.CompassDirection.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    case 2:
      if (qword_280B43260 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
    case 3:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_20_16();
      return sub_23B50AAD4();
    case 5:
      if (qword_280B43260 == -1)
      {
        goto LABEL_28;
      }

LABEL_48:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_28:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_35_10();
      break;
    case 6:
      if (qword_280B43260 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    case 7:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    case 8:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_21();
      OUTLINED_FUNCTION_37_8();
      break;
    case 9:
      if (qword_280B43260 == -1)
      {
        goto LABEL_24;
      }

LABEL_46:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_24:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_37_8();
      break;
    case 10:
      if (qword_280B43260 != -1)
      {
LABEL_50:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_34:
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_15_19();
      OUTLINED_FUNCTION_37_8();
      break;
    case 11:
      if (qword_280B43260 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_49;
    case 12:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_20_16();
      return sub_23B50AAD4();
    case 13:
      if (qword_280B43260 == -1)
      {
        goto LABEL_30;
      }

LABEL_49:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_30:
      OUTLINED_FUNCTION_30_10();
      OUTLINED_FUNCTION_35_10();
      break;
    case 14:
      if (qword_280B43260 != -1)
      {
LABEL_40:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_6:
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_16_13();
      break;
    case 15:
      if (qword_280B43260 != -1)
      {
LABEL_44:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_20:
      OUTLINED_FUNCTION_5_26();
      OUTLINED_FUNCTION_26_14();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_12_21();
      break;
  }

  OUTLINED_FUNCTION_20_16();
  return sub_23B50AAD4();
}

Swift::String __swiftcall Wind.CompassDirection.windDirectionDescription(isLeading:)(Swift::Bool isLeading)
{
  if (isLeading)
  {

    v2 = Wind.CompassDirection.description.getter(v1);
  }

  else
  {
    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 2:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 3:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_41;
      case 4:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_20_16();
        goto LABEL_55;
      case 5:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_41:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_35_10();
        goto LABEL_54;
      case 6:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 7:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 8:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 9:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_53;
      case 10:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_53:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_25_10();
        goto LABEL_54;
      case 11:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_44;
      case 12:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_20_16();
        goto LABEL_55;
      case 13:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_44:
        OUTLINED_FUNCTION_31_9();
        OUTLINED_FUNCTION_35_10();
        goto LABEL_54;
      case 14:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      case 15:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        goto LABEL_38;
      default:
        OUTLINED_FUNCTION_14_25();
        if (!v4)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

LABEL_38:
        OUTLINED_FUNCTION_1_33();
        OUTLINED_FUNCTION_18_18();
LABEL_54:
        OUTLINED_FUNCTION_20_16();
LABEL_55:
        v2 = sub_23B50AAD4();
        break;
    }
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

WeatherKit::Wind::CompassDirection_optional __swiftcall Wind.CompassDirection.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v1;
  }
}

uint64_t Wind.CompassDirection.rawValue.getter(char a1)
{
  result = 0x6874726F6ELL;
  switch(a1)
  {
    case 1:
      return 0x726F4E6874726F6ELL;
    case 2:
      v5 = 1953656686;
      return v5 | 0x7361656800000000;
    case 3:
      return 0x74726F4E74736165;
    case 4:
      return 1953718629;
    case 5:
      return 0x74756F5374736165;
    case 6:
      v5 = 1953853299;
      return v5 | 0x7361656800000000;
    case 7:
      return 0x756F536874756F73;
    case 8:
      return 0x6874756F73;
    case 9:
      return 0x756F536874756F73;
    case 10:
      v3 = 1953853299;
      goto LABEL_21;
    case 11:
      v4 = 0x74756F5374736165;
      goto LABEL_17;
    case 12:
      return 1953719671;
    case 13:
      v4 = 0x74726F4E74736165;
LABEL_17:
      result = v4 | 0x412;
      break;
    case 14:
      v3 = 1953656686;
LABEL_21:
      result = v3 | 0x7365776800000000;
      break;
    case 15:
      result = 0x726F4E6874726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B499A54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000023B537CD0 == a2;
  if (v3 || (sub_23B50D834() & 1) != 0)
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

    else
    {
      v7 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953723751 && a2 == 0xE400000000000000)
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

unint64_t sub_23B499BB8(char a1)
{
  result = 0x6F69746365726964;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6465657073;
      break;
    case 3:
      result = 1953723751;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

WeatherKit::Wind::CompassDirection_optional sub_23B499C5C@<W0>(Swift::String *a1@<X0>, WeatherKit::Wind::CompassDirection_optional *a2@<X8>)
{
  result.value = Wind.CompassDirection.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B499C8C@<X0>(uint64_t *a1@<X8>)
{
  result = Wind.CompassDirection.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B499D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B499A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B499DB0(uint64_t a1)
{
  v2 = sub_23B49AC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B499DEC(uint64_t a1)
{
  v2 = sub_23B49AC68();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Wind.== infix(_:_:)(char *a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132060, &qword_23B50F998);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_127();
  v15 = *a2;
  v16 = Wind.CompassDirection.rawValue.getter(*a1);
  v18 = v17;
  v20 = v16 == Wind.CompassDirection.rawValue.getter(v15) && v18 == v19;
  if (v20)
  {
  }

  else
  {
    v21 = sub_23B50D834();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = v10;
  v40 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  v22 = type metadata accessor for Wind(0);
  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v23, &qword_27E132170, &qword_23B510118, v24);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_1();
  sub_23B3F1C50(v25, v26, v27, v28);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v29 = *(v22 + 28);
  v30 = *(v13 + 48);
  sub_23B3C8E28(&a1[v29], v2);
  sub_23B3C8E28(&a2[v29], v2 + v30);
  OUTLINED_FUNCTION_4_0(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_4_0(v2 + v30);
    if (v20)
    {
      sub_23B398890(v2, &qword_27E132048, &qword_23B510110);
      return 1;
    }
  }

  else
  {
    v31 = v41;
    sub_23B3C8E28(v2, v41);
    OUTLINED_FUNCTION_4_0(v2 + v30);
    if (!v32)
    {
      v35 = v39;
      v34 = v40;
      (*(v40 + 32))(v39, v2 + v30, v5);
      v36 = sub_23B50D134();
      v37 = *(v34 + 8);
      v37(v35, v5);
      v37(v31, v5);
      sub_23B398890(v2, &qword_27E132048, &qword_23B510110);
      return (v36 & 1) != 0;
    }

    (*(v40 + 8))(v31, v5);
  }

  sub_23B398890(v2, &qword_27E132060, &qword_23B50F998);
  return 0;
}

uint64_t Wind.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341B8, &qword_23B51CDF0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_127();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B49AC68();
  sub_23B50D974();
  sub_23B49ACBC();
  sub_23B50D7F4();
  if (!v1)
  {
    type metadata accessor for Wind(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v8, v9, &qword_23B510118, v10);
    sub_23B50D7F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_2_31();
    sub_23B3F1C50(v11, v12, &unk_23B5100F0, v13);
    OUTLINED_FUNCTION_29_0();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_29_0();
    sub_23B50D794();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Wind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v33 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  OUTLINED_FUNCTION_5();
  v37 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341C0, &qword_23B51CDF8);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  type metadata accessor for Wind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v20;
  v41 = *(v20 + 28);
  v36 = v5;
  __swift_storeEnumTagSinglePayload(&v19[v41], 1, 1, v5);
  v21 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_23B49AC68();
  v22 = v39;
  sub_23B50D964();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_23B398890(&v19[v41], &qword_27E132048, &qword_23B510110);
  }

  else
  {
    v23 = v13;
    v39 = v15;
    v24 = v34;
    v46 = 0;
    sub_23B49AD10();
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    *v19 = v47;
    v45 = 1;
    OUTLINED_FUNCTION_3_8(&qword_27E133B98, &qword_27E132170, &qword_23B510118);
    v25 = v23;
    v26 = v42;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    (*(v37 + 32))(&v19[*(v38 + 20)], v25, v26);
    v44 = 2;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    v27 = v36;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D734();
    (*(v33 + 32))(&v19[*(v38 + 24)], v9, v27);
    v43 = 3;
    OUTLINED_FUNCTION_36_8();
    sub_23B50D6D4();
    v28 = OUTLINED_FUNCTION_19_15();
    v29(v28, v35);
    sub_23B4983E4(v24, &v19[v41]);
    sub_23B49AD64(v19, v32);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_23B49ADC8(v19);
  }
}

uint64_t Wind.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v15 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v14 = &v14 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  Wind.CompassDirection.rawValue.getter(*v1);
  sub_23B50D1C4();

  v9 = type metadata accessor for Wind(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132170, &qword_23B510118);
  v10 = MEMORY[0x277CC87E0];
  sub_23B3F1C50(&qword_280B42BF0, &qword_27E132170, &qword_23B510118, MEMORY[0x277CC87E0]);
  sub_23B50D0E4();
  sub_23B3F1C50(&qword_280B42BE0, &qword_27E131E10, &unk_23B5100F0, v10);
  sub_23B50D0E4();
  sub_23B3C8E28(&v1[*(v9 + 28)], v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    return sub_23B50D8E4();
  }

  v13 = v14;
  v12 = v15;
  (*(v15 + 32))(v14, v8, v2);
  sub_23B50D8E4();
  sub_23B50D0E4();
  return (*(v12 + 8))(v13, v2);
}

uint64_t Wind.hashValue.getter()
{
  sub_23B50D8C4();
  Wind.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B49AC2C(uint64_t a1)
{
  sub_23B50D8C4();
  Wind.hash(into:)(v2);
  return sub_23B50D914();
}

unint64_t sub_23B49AC68()
{
  result = qword_280B41C18;
  if (!qword_280B41C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C18);
  }

  return result;
}

unint64_t sub_23B49ACBC()
{
  result = qword_280B41C00;
  if (!qword_280B41C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C00);
  }

  return result;
}

unint64_t sub_23B49AD10()
{
  result = qword_27E1341C8;
  if (!qword_27E1341C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341C8);
  }

  return result;
}

uint64_t sub_23B49AD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Wind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B49ADC8(uint64_t a1)
{
  v2 = type metadata accessor for Wind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B49AE28()
{
  result = qword_27E1341D0;
  if (!qword_27E1341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341D0);
  }

  return result;
}

unint64_t sub_23B49AEC4()
{
  result = qword_27E1341E8;
  if (!qword_27E1341E8)
  {
    type metadata accessor for Wind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Wind.CompassDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Wind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B49B100()
{
  result = qword_27E1341F0;
  if (!qword_27E1341F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1341F0);
  }

  return result;
}

unint64_t sub_23B49B158()
{
  result = qword_280B41C08;
  if (!qword_280B41C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C08);
  }

  return result;
}

unint64_t sub_23B49B1B0()
{
  result = qword_280B41C10;
  if (!qword_280B41C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C10);
  }

  return result;
}

unint64_t sub_23B49B204()
{
  result = qword_280B41BF8;
  if (!qword_280B41BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41BF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherClock(_BYTE *result, int a2, int a3)
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

uint64_t AirQuality.init(scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, char *a13, uint64_t a14)
{
  v45 = *a12;
  v48 = *a13;
  v46 = *(a13 + 2);
  v47 = *(a13 + 1);
  v20 = type metadata accessor for AirQuality(0);
  v21 = v20[11];
  type metadata accessor for ProviderAttribution(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v20[14];
  type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = (a9 + v20[6]);
  *v31 = a1;
  v31[1] = a2;
  memcpy((a9 + v20[7]), a3, 0x78uLL);
  *(a9 + v20[8]) = a4;
  memcpy((a9 + v20[9]), a5, 0x58uLL);
  *(a9 + v20[10]) = a6;
  sub_23B3C2510(a7, a9 + v21, &qword_27E131FC8, &qword_23B510180);
  v32 = v20[12];
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  (*(v33 + 32))(a9 + v32, a8);
  *(a9 + v20[13]) = a10;
  sub_23B3C2510(a11, a9 + v26, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v20[15]) = v45;
  v34 = a9 + v20[16];
  *v34 = v48;
  *(v34 + 8) = v47;
  *(v34 + 16) = v46;
  OUTLINED_FUNCTION_18_19();
  v35 = OUTLINED_FUNCTION_57();
  sub_23B4A0AD0(v35, v36);
  v37 = sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v39 = *(v38 + 16);
  v39(a9, a14, v37);
  v40 = type metadata accessor for WeatherMetadata(0);
  v39(a9 + v20[5], a14 + *(v40 + 20), v37);
  return sub_23B4A0B28();
}

uint64_t AirQuality.isExpired.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for AirQuality(0);
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v7, v8, MEMORY[0x277CC9590]);
  v9 = sub_23B50D114();
  (*(v2 + 8))(v6, v0);
  return v9 & 1;
}

uint64_t AirQuality.measurementDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t AirQuality.measurementDate.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t AirQuality.expirationDate.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = *(type metadata accessor for AirQuality(v2) + 20);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AirQuality.expirationDate.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t AirQuality.expirationDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.scaleIdentifier.getter()
{
  type metadata accessor for AirQuality(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t AirQuality.scaleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AirQuality(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AirQuality.scaleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.scale.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = *(type metadata accessor for AirQuality(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x78uLL);
  return sub_23B3C8520(__dst, &v5);
}

void *AirQuality.scale.setter()
{
  v1 = OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for AirQuality(v1);
  memcpy(__dst, (v0 + *(v2 + 28)), sizeof(__dst));
  sub_23B3C8B4C(__dst);
  v3 = OUTLINED_FUNCTION_64();
  return memcpy(v3, v4, 0x78uLL);
}

uint64_t AirQuality.scale.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.index.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  result = type metadata accessor for AirQuality(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t AirQuality.index.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.currentScaleCategory.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = *(type metadata accessor for AirQuality(v2) + 36);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x58uLL);
  return sub_23B3C8AD4(__dst, &v5);
}

void *AirQuality.currentScaleCategory.setter()
{
  v1 = OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for AirQuality(v1);
  memcpy(__dst, (v0 + *(v2 + 36)), sizeof(__dst));
  sub_23B3FD324(__dst);
  v3 = OUTLINED_FUNCTION_64();
  return memcpy(v3, v4, 0x58uLL);
}

uint64_t AirQuality.currentScaleCategory.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.isSignificant.setter(char a1)
{
  result = type metadata accessor for AirQuality(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AirQuality.isSignificant.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.providerAttribution.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3C2510(v1, v2, v3, v4);
}

uint64_t AirQuality.providerAttribution.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.learnMoreURL.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = *(type metadata accessor for AirQuality(v2) + 48);
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t AirQuality.learnMoreURL.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t AirQuality.learnMoreURL.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

double AirQuality.pollutants.getter()
{
  type metadata accessor for AirQuality(0);

  return result;
}

uint64_t AirQuality.pollutants.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for AirQuality(v2) + 52);

  *(v1 + v3) = v0;
  return result;
}

uint64_t AirQuality.pollutants.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.primaryPollutant.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = type metadata accessor for AirQuality(v2);
  return sub_23B3CE510(v1 + *(v3 + 56), v0, &qword_27E131FB8, &qword_23B50F6D0);
}

uint64_t AirQuality.primaryPollutant.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  v1 = OUTLINED_FUNCTION_57();
  return sub_23B3C2510(v1, v2, v3, v4);
}

uint64_t AirQuality.primaryPollutant.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.previousDayComparison.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for AirQuality(v2);
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t AirQuality.previousDayComparison.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AirQuality(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t AirQuality.previousDayComparison.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

double AirQuality.source.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for AirQuality(v2) + 64);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v4;

  return result;
}

uint64_t AirQuality.source.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for AirQuality(0) + 64);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t AirQuality.source.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.metadata.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for AirQuality(v2);
  OUTLINED_FUNCTION_18_19();
  return sub_23B4A0AD0(v1 + v3, v0);
}

uint64_t AirQuality.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  v1 = OUTLINED_FUNCTION_57();

  return sub_23B407020(v1, v2);
}

uint64_t AirQuality.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirQuality(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t AirQuality.init(measurementDate:expirationDate:scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16)
{
  v45 = *a14;
  v48 = *a15;
  v46 = *(a15 + 2);
  v47 = *(a15 + 1);
  v20 = type metadata accessor for AirQuality(0);
  v21 = v20[11];
  type metadata accessor for ProviderAttribution(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v20[14];
  type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v33 = *(v32 + 32);
  v33(a9, a1, v31);
  v33(a9 + v20[5], a2, v31);
  v34 = (a9 + v20[6]);
  *v34 = a3;
  v34[1] = a4;
  memcpy((a9 + v20[7]), a5, 0x78uLL);
  *(a9 + v20[8]) = a6;
  memcpy((a9 + v20[9]), a7, 0x58uLL);
  *(a9 + v20[10]) = a8;
  sub_23B3C2510(a10, a9 + v21, &qword_27E131FC8, &qword_23B510180);
  v35 = v20[12];
  sub_23B50AB34();
  OUTLINED_FUNCTION_6();
  (*(v36 + 32))(a9 + v35, a11);
  *(a9 + v20[13]) = a12;
  sub_23B3C2510(a13, a9 + v26, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v20[15]) = v45;
  v37 = a9 + v20[16];
  *v37 = v48;
  *(v37 + 8) = v47;
  *(v37 + 16) = v46;
  OUTLINED_FUNCTION_16_14();
  return sub_23B49FC88(a16, a9 + v38);
}

uint64_t AirQuality.init(measurementDate:expirationDate:scaleIdentifier:scale:index:currentScaleCategory:isSignificant:providerAttribution:learnMoreURL:pollutants:primaryPollutant:previousDayComparison:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, unsigned __int8 *a15)
{
  LODWORD(v92) = a8;
  v90 = a6;
  v91 = a7;
  v88 = a4;
  v89 = a5;
  v87 = a3;
  v101 = a2;
  v102 = a1;
  v99 = a11;
  v100 = a10;
  v98 = a13;
  v93 = a12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  v17 = OUTLINED_FUNCTION_3(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  v82 = v20;
  MEMORY[0x28223BE20](v21);
  v94 = &v76 - v22;
  v23 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v97 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_1();
  v95 = v28;
  MEMORY[0x28223BE20](v29);
  v96 = &v76 - v30;
  v31 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v76 - v39;
  v83 = *a14;
  v86 = *a15;
  v41 = *(a15 + 1);
  v84 = *(a15 + 2);
  v85 = v41;
  v42 = type metadata accessor for AirQuality(0);
  v43 = v42[11];
  type metadata accessor for ProviderAttribution(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = v42[14];
  type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  v77 = v33;
  v53 = *(v33 + 16);
  v53(a9, v102, v31);
  v53(a9 + v42[5], v101, v31);
  v54 = (a9 + v42[6]);
  v55 = v88;
  *v54 = v87;
  v54[1] = v55;
  memcpy((a9 + v42[7]), v89, 0x78uLL);
  v56 = v91;
  *(a9 + v42[8]) = v90;
  memcpy((a9 + v42[9]), v56, 0x58uLL);
  *(a9 + v42[10]) = v92;
  v57 = a9 + v43;
  v58 = v97;
  sub_23B49CBB0(v100, v57, &qword_27E131FC8, &qword_23B510180);
  (*(v58 + 16))(a9 + v42[12], v99, v23);
  *(a9 + v42[13]) = v93;
  sub_23B49CBB0(v98, a9 + v48, &qword_27E131FB8, &qword_23B50F6D0);
  *(a9 + v42[15]) = v83;
  v59 = a9 + v42[16];
  *v59 = v86;
  v60 = v84;
  *(v59 + 8) = v85;
  *(v59 + 16) = v60;
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50B994();
  v61 = a9 + v42[17];
  v62 = type metadata accessor for WeatherMetadata(0);
  v91 = v62[8];
  v92 = v40;
  *(v91 + v61) = 0;
  v53(v61, v40, v31);
  v63 = v61 + v62[5];
  v93 = v37;
  v64 = v37;
  v65 = v94;
  v53(v63, v64, v31);
  *(v61 + v62[6]) = 0;
  *(v61 + v62[7]) = 0;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v65, 1, v23);
  if (v67)
  {
    __break(1u);
    goto LABEL_7;
  }

  v68 = *(v58 + 32);
  v68(v96, v65, v23);
  v69 = v82;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v69, 1, v23);
  if (v67)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v68(v95, v69, v23);
  v70 = v79;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v70, 1, v23);
  v71 = v81;
  if (v67)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v68(v80, v70, v23);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_51(v71, 1, v23);
  if (!v67)
  {
    sub_23B398890(v98, &qword_27E131FB8, &qword_23B50F6D0);
    (*(v97 + 8))(v99, v23);
    sub_23B398890(v100, &qword_27E131FC8, &qword_23B510180);
    v72 = *(v77 + 8);
    v72(v101, v31);
    v72(v102, v31);
    v72(v93, v31);
    v72(v92, v31);
    v68(v78, v71, v23);
    type metadata accessor for WeatherAttribution.Storage(0);
    swift_allocObject();
    sub_23B42E3E8();
    v74 = v73;
    v75 = v91;

    *&v75[v61] = v74;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_23B49CBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return v4;
}

uint64_t sub_23B49CBFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6572757361656DLL && a2 == 0xEF65746144746E65;
  if (v4 || (sub_23B50D834() & 1) != 0)
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
      v7 = a1 == 0x656449656C616373 && a2 == 0xEF7265696669746ELL;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023B537CF0 == a2;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x66696E6769537369 && a2 == 0xED0000746E616369;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000023B537D10 == a2;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E6174756C6C6F70 && a2 == 0xEA00000000007374;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x800000023B537D30 == a2;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x800000023B537D50 == a2;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_23B50D834();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
  }
}

unint64_t sub_23B49D054(char a1)
{
  result = 0x6D6572757361656DLL;
  switch(a1)
  {
    case 1:
      result = 0x6974617269707865;
      break;
    case 2:
      result = 0x656449656C616373;
      break;
    case 3:
      result = 0x656C616373;
      break;
    case 4:
      result = 0x7865646E69;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x66696E6769537369;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x726F4D6E7261656CLL;
      break;
    case 9:
      result = 0x6E6174756C6C6F70;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x656372756F73;
      break;
    case 13:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B49D220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B49CBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B49D248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B49D04C();
  *a1 = result;
  return result;
}

uint64_t sub_23B49D270(uint64_t a1)
{
  v2 = sub_23B49FCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B49D2AC(uint64_t a1)
{
  v2 = sub_23B49FCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static AirQuality.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v78 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v79 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1341F8, &qword_23B51D178);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_5_17();
  v14 = type metadata accessor for ProviderAttribution(v13);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v18 = (v17 - v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v19);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  v22 = (&v75 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134200, &qword_23B51D180);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v75 - v25;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v77 = v11;
  v27 = type metadata accessor for AirQuality(0);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v76 = v27;
  v28 = *(v27 + 24);
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v29 == *v31 && v30 == v31[1];
  if (!v32 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v75 = v2;
  v33 = v76;
  v34 = v76[7];
  memcpy(v88, (a1 + v34), sizeof(v88));
  memcpy(v87, (a1 + v34), sizeof(v87));
  v35 = v76[7];
  memcpy(v89, (a2 + v35), sizeof(v89));
  memcpy(v86, (a2 + v35), sizeof(v86));
  LOBYTE(v35) = static AirQualityScale.== infix(_:_:)(v87, v86);
  memcpy(v90, v86, sizeof(v90));
  sub_23B3C8520(v88, v85);
  sub_23B3C8520(v89, v85);
  sub_23B3C8B4C(v90);
  memcpy(__dst, v87, 0x78uLL);
  sub_23B3C8B4C(__dst);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v33[8]) != *(a2 + v33[8]))
  {
    return 0;
  }

  v36 = v33[9];
  memcpy(v84, (a1 + v36), sizeof(v84));
  memcpy(v83, (a1 + v36), sizeof(v83));
  v37 = v33[9];
  memcpy(v85, (a2 + v37), 0x58uLL);
  memcpy(v82, (a2 + v37), sizeof(v82));
  LOBYTE(v37) = static AirQualityScaleCategory.== infix(_:_:)(v83, v82);
  memcpy(v86, v82, 0x58uLL);
  sub_23B3C8AD4(v84, v81);
  sub_23B3C8AD4(v85, v81);
  sub_23B3FD324(v86);
  memcpy(v87, v83, 0x58uLL);
  sub_23B3FD324(v87);
  if ((v37 & 1) == 0 || *(a1 + v33[10]) != *(a2 + v33[10]))
  {
    return 0;
  }

  v38 = v33[11];
  v39 = *(v23 + 48);
  sub_23B3CE510(a1 + v38, v26, &qword_27E131FC8, &qword_23B510180);
  sub_23B3CE510(a2 + v38, &v26[v39], &qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_51(v26, 1, v14);
  if (v32)
  {
    OUTLINED_FUNCTION_51(&v26[v39], 1, v14);
    v40 = v77;
    if (v32)
    {
      sub_23B398890(v26, &qword_27E131FC8, &qword_23B510180);
      goto LABEL_23;
    }

LABEL_20:
    v43 = &qword_27E134200;
    v44 = &qword_23B51D180;
    v45 = v26;
LABEL_21:
    sub_23B398890(v45, v43, v44);
    return 0;
  }

  sub_23B3CE510(v26, v22, &qword_27E131FC8, &qword_23B510180);
  v41 = v39;
  OUTLINED_FUNCTION_51(&v26[v39], 1, v14);
  v40 = v77;
  if (v42)
  {
    OUTLINED_FUNCTION_17_17();
    sub_23B4A0B28();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_15_20();
  sub_23B49FC88(&v26[v41], v18);
  v46 = static ProviderAttribution.== infix(_:_:)(v22, v18);
  sub_23B4A0B28();
  sub_23B4A0B28();
  sub_23B398890(v26, &qword_27E131FC8, &qword_23B510180);
  if (!v46)
  {
    return 0;
  }

LABEL_23:
  v47 = v76;
  if ((sub_23B50AAF4() & 1) == 0)
  {
    return 0;
  }

  sub_23B49DAA4(*(a1 + v47[13]), *(a2 + v47[13]));
  if ((v48 & 1) == 0)
  {
    return 0;
  }

  v49 = v47[14];
  v50 = *(v40 + 48);
  v51 = v75;
  sub_23B3CE510(a1 + v49, v75, &qword_27E131FB8, &qword_23B50F6D0);
  v52 = a2 + v49;
  v53 = v51;
  sub_23B3CE510(v52, v51 + v50, &qword_27E131FB8, &qword_23B50F6D0);
  v54 = v80;
  OUTLINED_FUNCTION_51(v51, 1, v80);
  if (v32)
  {
    OUTLINED_FUNCTION_51(v51 + v50, 1, v54);
    if (v32)
    {
      sub_23B398890(v51, &qword_27E131FB8, &qword_23B50F6D0);
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v66 = v79;
  sub_23B3CE510(v51, v79, &qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_51(v51 + v50, 1, v54);
  if (v67)
  {
    OUTLINED_FUNCTION_23_14();
    sub_23B4A0B28();
LABEL_41:
    v43 = &qword_27E1341F8;
    v44 = &qword_23B51D178;
LABEL_47:
    v45 = v53;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_13();
  v68 = v51 + v50;
  v69 = v78;
  sub_23B49FC88(v68, v78);
  if (*v66 != *v69 || (static AirPollutantMeasurement.== infix(_:_:)(&v66[*(v54 + 20)], &v69[*(v54 + 20)]) & 1) == 0)
  {
    sub_23B4A0B28();
    sub_23B4A0B28();
    v43 = &qword_27E131FB8;
    v44 = &qword_23B50F6D0;
    goto LABEL_47;
  }

  v70 = *(v54 + 24);
  v71 = v66[v70];
  v72 = v69[v70];
  sub_23B4A0B28();
  sub_23B4A0B28();
  sub_23B398890(v53, &qword_27E131FB8, &qword_23B50F6D0);
  if (v71 != v72)
  {
    return 0;
  }

LABEL_30:
  if (*(a1 + v76[15]) == *(a2 + v76[15]))
  {
    v55 = v76[16];
    v56 = (a1 + v55);
    v58 = *(a1 + v55 + 8);
    v57 = *(a1 + v55 + 16);
    v59 = a2 + v55;
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
    v62 = *v59;
    v63 = *v56;

    if (sub_23B3E59D8(v63, v62))
    {
      if (v58 == v61 && v57 == v60)
      {

        return static WeatherMetadata.== infix(_:_:)(a1 + v76[17], a2 + v76[17]);
      }

      v65 = sub_23B50D834();

      if (v65)
      {
        return static WeatherMetadata.== infix(_:_:)(a1 + v76[17], a2 + v76[17]);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_23B49DAA4(uint64_t a1, uint64_t a2)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  v4 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v77 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v77 - v7;
  v95 = type metadata accessor for AirPollutantMeasurement(0);
  MEMORY[0x28223BE20](v95);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v77 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320F0, &qword_23B50FCE0);
  MEMORY[0x28223BE20](v94);
  v14 = &v77 - v13;
  v15 = type metadata accessor for AirPollutant(0);
  v16 = *(v15 - 8);
  v99 = v15;
  v100 = v16;
  MEMORY[0x28223BE20](v15);
  v101 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v77 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v96 = (&v77 - v26);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v83 = v12;
    v84 = v9;
    v91 = a2;
    v27 = 0;
    v85 = a1;
    v28 = a1 + 64;
    v29 = 1 << *(a1 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(a1 + 64);
    v78 = (v29 + 63) >> 6;
    v80 = (v6 + 32);
    v82 = (v6 + 8);
    v79 = (v4 + 32);
    v81 = (v4 + 8);
    v32 = v92;
    v90 = v24;
    while (v31)
    {
      v33 = v32;
      v98 = (v31 - 1) & v31;
      v34 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_13:
      v38 = (*(v85 + 48) + 16 * v34);
      v40 = *v38;
      v39 = v38[1];
      v41 = v93;
      sub_23B4A0AD0(*(v85 + 56) + *(v100 + 72) * v34, v93);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      v43 = *(v42 + 48);
      *v24 = v40;
      v24[1] = v39;
      sub_23B49FC88(v41, v24 + v43);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v42);

      v35 = v96;
      v32 = v33;
LABEL_14:
      sub_23B4A0A60(v24, v35);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v44);
      v46 = EnumTagSinglePayload == 1;
      if (EnumTagSinglePayload == 1)
      {
        return;
      }

      v47 = *(v44 + 48);
      v48 = *v35;
      v49 = v35[1];
      sub_23B49FC88(v35 + v47, v32);
      v50 = v48;
      v51 = v91;
      v52 = sub_23B3A7084(v50, v49);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_32;
      }

      v55 = *(v51 + 56) + *(v100 + 72) * v52;
      v56 = v101;
      sub_23B4A0AD0(v55, v101);
      if (*v56 != *v32)
      {
        goto LABEL_31;
      }

      v57 = v99;
      v58 = *(v99 + 20);
      v59 = *(v94 + 48);
      sub_23B4A0AD0(&v56[v58], v14);
      sub_23B4A0AD0(&v32[v58], &v14[v59]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v97 = v46;
      if (EnumCaseMultiPayload == 1)
      {
        v61 = v84;
        sub_23B4A0AD0(v14, v84);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v81)(v61, v89);
          goto LABEL_30;
        }

        v62 = v87;
        v63 = v89;
        (*v79)(v87, &v14[v59], v89);
        sub_23B3F1C50(&qword_27E1320F8, &qword_27E1320E0, &qword_23B50FCD0, MEMORY[0x277CC87F0]);
        v64 = sub_23B50D134();
        v65 = *v81;
        (*v81)(v62, v63);
        v65(v61, v63);
        v32 = v92;
        if ((v64 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v66 = v14;
        v67 = v14;
        v68 = v83;
        sub_23B4A0AD0(v66, v83);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v82)(v68, v88);
          v14 = v67;
LABEL_30:
          sub_23B398890(v14, &qword_27E1320F0, &qword_23B50FCE0);
          goto LABEL_31;
        }

        v69 = v86;
        v70 = v88;
        (*v80)(v86, &v67[v59], v88);
        sub_23B3F1C50(&qword_280B42B90, &qword_27E1320E8, &qword_23B50FCD8, MEMORY[0x277CC87F0]);
        v71 = sub_23B50D134();
        v72 = *v82;
        (*v82)(v69, v70);
        v72(v68, v70);
        v14 = v67;
        v57 = v99;
        if ((v71 & 1) == 0)
        {
LABEL_27:
          sub_23B4A0B28();
LABEL_31:
          sub_23B4A0B28();
LABEL_32:
          sub_23B4A0B28();
          return;
        }
      }

      sub_23B4A0B28();
      v73 = v101[*(v57 + 24)];
      sub_23B4A0B28();
      v74 = v32[*(v57 + 24)];
      sub_23B4A0B28();
      v75 = v73 == v74;
      v24 = v90;
      v31 = v98;
      if (!v75)
      {
        return;
      }
    }

    v35 = v96;
    while (1)
    {
      v36 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v36 >= v78)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v76);
        v98 = 0;
        goto LABEL_14;
      }

      v37 = *(v28 + 8 * v36);
      ++v27;
      if (v37)
      {
        v33 = v32;
        v98 = (v37 - 1) & v37;
        v34 = __clz(__rbit64(v37)) | (v36 << 6);
        v27 = v36;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t AirQuality.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134208, &qword_23B51D188);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B49FCE0();
  sub_23B50D974();
  __dst[0] = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v10, v11, MEMORY[0x277CC9580]);
  v32 = v2;
  v12 = v4;
  v13 = v33;
  sub_23B50D7F4();
  if (v13)
  {
    return (*(v6 + 8))(v9, v4);
  }

  v33 = v6;
  v15 = type metadata accessor for AirQuality(0);
  __dst[0] = 1;
  sub_23B50D7F4();
  v47 = 2;
  sub_23B50D7A4();
  v16 = v15[7];
  memcpy(__dst, (v32 + v16), 0x78uLL);
  memcpy(v41, (v32 + v16), sizeof(v41));
  v46 = 3;
  sub_23B3C8520(__dst, v40);
  sub_23B49FD34();
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7F4();
  memcpy(v40, v41, sizeof(v40));
  sub_23B3C8B4C(v40);
  v45 = 4;
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7E4();
  v17 = v15[9];
  memcpy(v39, (v32 + v17), sizeof(v39));
  memcpy(v38, (v32 + v17), sizeof(v38));
  v44 = 5;
  sub_23B3C8AD4(v39, v37);
  sub_23B495F4C();
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7F4();
  memcpy(v37, v38, sizeof(v37));
  sub_23B3FD324(v37);
  LOBYTE(v34) = 6;
  OUTLINED_FUNCTION_40_6();
  sub_23B50D7B4();
  v18 = OUTLINED_FUNCTION_48_4(7);
  type metadata accessor for ProviderAttribution(v18);
  OUTLINED_FUNCTION_24_12();
  sub_23B4A07AC(v19, v20, &protocol conformance descriptor for ProviderAttribution);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D794();
  OUTLINED_FUNCTION_48_4(8);
  sub_23B50AB34();
  OUTLINED_FUNCTION_3_42();
  sub_23B4A07AC(v21, v22, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D7F4();
  v34 = *(v32 + v15[13]);
  v43 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134210, &qword_23B51D190);
  sub_23B49FD88();
  sub_23B50D7F4();
  v23 = OUTLINED_FUNCTION_48_4(10);
  type metadata accessor for AirPollutant(v23);
  OUTLINED_FUNCTION_20_17();
  sub_23B4A07AC(v24, v25, &protocol conformance descriptor for AirPollutant);
  OUTLINED_FUNCTION_9_26();
  sub_23B50D794();
  LOBYTE(v34) = *(v32 + v15[15]);
  v43 = 11;
  sub_23B49FE44();
  sub_23B50D7F4();
  v26 = v32 + v15[16];
  v27 = *(v26 + 8);
  v28 = *(v26 + 16);
  LOBYTE(v34) = *v26;
  v35 = v27;
  v36 = v28;
  v43 = 12;
  sub_23B49FE98();

  sub_23B50D7F4();

  v29 = OUTLINED_FUNCTION_48_4(13);
  type metadata accessor for WeatherMetadata(v29);
  OUTLINED_FUNCTION_19_16();
  sub_23B4A07AC(v30, v31, &protocol conformance descriptor for WeatherMetadata);
  sub_23B50D7F4();
  return (*(v33 + 8))(v9, v12);
}

uint64_t AirQuality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v10);
  v85 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v84 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_55(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v15);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v17);
  v18 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v87 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_55(v76 - v25);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134218, &qword_23B51D198);
  OUTLINED_FUNCTION_5();
  v83 = v26;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_5_17();
  v29 = type metadata accessor for AirQuality(v28);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27();
  v33 = v32 - v31;
  v35 = *(v34 + 44);
  v36 = type metadata accessor for ProviderAttribution(0);
  v94 = v35;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  v96 = v29;
  v40 = *(v29 + 56);
  v41 = type metadata accessor for AirPollutant(0);
  v91 = v40;
  v93 = v33;
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = a1[3];
  v90 = a1;
  v46 = __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_23B49FCE0();
  v88 = v3;
  OUTLINED_FUNCTION_36_9();
  sub_23B50D964();
  v92 = v18;
  if (!v2)
  {
    v47 = v23;
    v95 = v36;
    v48 = v82;
    v76[1] = v41;
    __dst[0] = 0;
    OUTLINED_FUNCTION_2_40();
    sub_23B4A07AC(v49, v50, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_32_9();
    sub_23B50D734();
    v53 = v93;
    v54 = *(v87 + 32);
    v54(v93, v86, v18);
    __dst[0] = 1;
    OUTLINED_FUNCTION_32_9();
    sub_23B50D734();
    v55 = v96;
    v54(v53 + v96[5], v47, v18);
    __dst[0] = 2;
    OUTLINED_FUNCTION_13_21();
    v56 = sub_23B50D6E4();
    v57 = (v53 + v55[6]);
    *v57 = v56;
    v57[1] = v58;
    v104 = 3;
    sub_23B49FEEC();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    memcpy((v53 + v55[7]), __dst, 0x78uLL);
    __src[0] = 4;
    OUTLINED_FUNCTION_13_21();
    *(v53 + v55[8]) = sub_23B50D724();
    v103 = 5;
    sub_23B496618();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    memcpy((v53 + v55[9]), __src, 0x58uLL);
    OUTLINED_FUNCTION_38_7(6);
    OUTLINED_FUNCTION_13_21();
    *(v53 + v55[10]) = sub_23B50D6F4() & 1;
    OUTLINED_FUNCTION_38_7(7);
    OUTLINED_FUNCTION_24_12();
    sub_23B4A07AC(v59, v60, &protocol conformance descriptor for ProviderAttribution);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    sub_23B50D6D4();
    sub_23B3C2510(v48, v53 + v94, &qword_27E131FC8, &qword_23B510180);
    OUTLINED_FUNCTION_38_7(8);
    OUTLINED_FUNCTION_3_42();
    sub_23B4A07AC(v61, v62, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_42_8();
    v63 = v81;
    OUTLINED_FUNCTION_1_34();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    (*(v84 + 32))(v53 + v96[12], v63, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134210, &qword_23B51D190);
    v102 = 9;
    sub_23B49FF40();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    *(v93 + v96[13]) = v97;
    OUTLINED_FUNCTION_38_7(10);
    OUTLINED_FUNCTION_20_17();
    sub_23B4A07AC(v64, v65, &protocol conformance descriptor for AirPollutant);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D6D4();
    OUTLINED_FUNCTION_35_11();
    sub_23B3C2510(v80, v93 + v91, &qword_27E131FB8, &qword_23B50F6D0);
    v102 = 11;
    sub_23B49FFFC();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    *(v93 + v96[15]) = v97;
    v102 = 12;
    sub_23B4A0050();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    v66 = v98;
    v67 = v99;
    v68 = v93 + v96[16];
    *v68 = v97;
    *(v68 + 8) = v66;
    *(v68 + 16) = v67;
    OUTLINED_FUNCTION_38_7(13);
    OUTLINED_FUNCTION_19_16();
    sub_23B4A07AC(v69, v70, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_36_9();
    sub_23B50D734();
    OUTLINED_FUNCTION_35_11();
    v71 = OUTLINED_FUNCTION_0_48();
    v72(v71);
    OUTLINED_FUNCTION_16_14();
    v73 = v93;
    sub_23B49FC88(v79, v93 + v74);
    sub_23B4A0AD0(v73, v77);
    OUTLINED_FUNCTION_49_4();
    return sub_23B4A0B28();
  }

  v95 = v2;
  OUTLINED_FUNCTION_12_22();
  v51 = v93;
  OUTLINED_FUNCTION_49_4();
  v52 = v96;
  if (v3)
  {
    memcpy(__dst, (v51 + v96[7]), sizeof(__dst));
    sub_23B3C8B4C(__dst);
    if ((v46 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v46)
  {
LABEL_8:
    memcpy(__dst, (v51 + v52[9]), 0x58uLL);
    sub_23B3FD324(__dst);
  }

LABEL_9:
  sub_23B398890(v51 + v94, &qword_27E131FC8, &qword_23B510180);
  if (v89)
  {
    (*(v84 + 8))(v51 + v52[12], v85);
  }

  return sub_23B398890(v51 + v91, &qword_27E131FB8, &qword_23B50F6D0);
}

void AirQuality.hash(into:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_19();
  v46 = type metadata accessor for AirPollutant(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v43 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_3(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v45 = v9;
  v44 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v42 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v41 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for ProviderAttribution(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_27();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  sub_23B50AD24();
  OUTLINED_FUNCTION_2_40();
  sub_23B4A07AC(v27, v28, MEMORY[0x277CC9588]);
  sub_23B50D0E4();
  v29 = type metadata accessor for AirQuality(0);
  sub_23B50D0E4();
  sub_23B50D1C4();
  memcpy(__dst, (v1 + v29[7]), sizeof(__dst));
  AirQualityScale.hash(into:)(v0);
  MEMORY[0x23EE9DB40](*(v1 + v29[8]));
  memcpy(__dst, (v1 + v29[9]), 0x58uLL);
  AirQualityScaleCategory.hash(into:)(v0);
  sub_23B50D8E4();
  sub_23B3CE510(v1 + v29[11], v26, &qword_27E131FC8, &qword_23B510180);
  OUTLINED_FUNCTION_51(v26, 1, v18);
  if (v32)
  {
    sub_23B50D8E4();
    v30 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_15_20();
    sub_23B49FC88(v26, v22);
    sub_23B50D8E4();
    sub_23B50D1C4();
    sub_23B3CE510(v22 + *(v18 + 20), v17, &qword_27E131FC0, &qword_23B515170);
    v31 = v44;
    OUTLINED_FUNCTION_51(v17, 1, v44);
    if (v32)
    {
      sub_23B50D8E4();
    }

    else
    {
      v34 = v41;
      v33 = v42;
      (*(v42 + 32))(v41, v17, v31);
      sub_23B50D8E4();
      OUTLINED_FUNCTION_3_42();
      sub_23B4A07AC(v35, v36, MEMORY[0x277CC9270]);
      sub_23B50D0E4();
      (*(v33 + 8))(v34, v31);
    }

    v30 = v46;
    OUTLINED_FUNCTION_17_17();
    sub_23B4A0B28();
  }

  OUTLINED_FUNCTION_3_42();
  sub_23B4A07AC(v37, v38, MEMORY[0x277CC9270]);
  sub_23B50D0E4();
  sub_23B4A00A4(v0, *(v1 + v29[13]));
  v39 = v45;
  sub_23B3CE510(v2 + v29[14], v45, &qword_27E131FB8, &qword_23B50F6D0);
  OUTLINED_FUNCTION_51(v39, 1, v30);
  if (v32)
  {
    sub_23B50D8E4();
  }

  else
  {
    OUTLINED_FUNCTION_22_13();
    v40 = v43;
    sub_23B49FC88(v39, v43);
    sub_23B50D8E4();
    MEMORY[0x23EE9DB40](*v40);
    AirPollutantMeasurement.hash(into:)(v0);
    MEMORY[0x23EE9DB40](v40[*(v30 + 24)]);
    OUTLINED_FUNCTION_23_14();
    sub_23B4A0B28();
  }

  MEMORY[0x23EE9DB40](*(v2 + v29[15]));
  sub_23B50D1C4();

  OUTLINED_FUNCTION_65();
  sub_23B50D1C4();
  WeatherMetadata.hash(into:)();
}

uint64_t AirQuality.hashValue.getter()
{
  sub_23B50D8C4();
  AirQuality.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B49FC4C(uint64_t a1)
{
  sub_23B50D8C4();
  AirQuality.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B49FC88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

unint64_t sub_23B49FCE0()
{
  result = qword_280B42670;
  if (!qword_280B42670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42670);
  }

  return result;
}

unint64_t sub_23B49FD34()
{
  result = qword_280B42538;
  if (!qword_280B42538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42538);
  }

  return result;
}

unint64_t sub_23B49FD88()
{
  result = qword_280B41A48;
  if (!qword_280B41A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134210, &qword_23B51D190);
    sub_23B4A07AC(&qword_280B42590, type metadata accessor for AirPollutant, &protocol conformance descriptor for AirPollutant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41A48);
  }

  return result;
}

unint64_t sub_23B49FE44()
{
  result = qword_280B41C20;
  if (!qword_280B41C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41C20);
  }

  return result;
}

unint64_t sub_23B49FE98()
{
  result = qword_280B423D0;
  if (!qword_280B423D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423D0);
  }

  return result;
}

unint64_t sub_23B49FEEC()
{
  result = qword_27E134220;
  if (!qword_27E134220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134220);
  }

  return result;
}

unint64_t sub_23B49FF40()
{
  result = qword_27E134230;
  if (!qword_27E134230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E134210, &qword_23B51D190);
    sub_23B4A07AC(&qword_27E134238, type metadata accessor for AirPollutant, &protocol conformance descriptor for AirPollutant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134230);
  }

  return result;
}

unint64_t sub_23B49FFFC()
{
  result = qword_27E134240;
  if (!qword_27E134240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134240);
  }

  return result;
}

unint64_t sub_23B4A0050()
{
  result = qword_27E134248;
  if (!qword_27E134248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134248);
  }

  return result;
}

void sub_23B4A00A4(const void *a1, uint64_t a2)
{
  v58 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E0, &qword_23B50FCD0);
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1320E8, &qword_23B50FCD8);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - v6;
  v56 = type metadata accessor for AirPollutantMeasurement(0);
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for AirPollutant(0);
  v53 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v57 = &v43 - v15;
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v46 = (v5 + 32);
  v45 = v5 + 8;
  v44 = (v3 + 32);
  v43 = v3 + 8;
  v54 = a2;

  v21 = 0;
  v22 = 0;
  v51 = v9;
  if (v19)
  {
    while (1)
    {
      v23 = v21;
      v24 = v22;
LABEL_10:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v24 << 6);
      v28 = (*(v54 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = v52;
      sub_23B4A0AD0(*(v54 + 56) + *(v53 + 72) * v27, v52);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      v33 = *(v32 + 48);
      v34 = v59;
      *v59 = v30;
      v34[1] = v29;
      v25 = v34;
      sub_23B49FC88(v31, v34 + v33);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v32);

      v21 = v23;
      v9 = v51;
LABEL_11:
      v35 = v25;
      v36 = v57;
      sub_23B4A0A60(v35, v57);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
      if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
      {
        break;
      }

      sub_23B49FC88(v36 + *(v37 + 48), v9);
      memcpy(__dst, v58, sizeof(__dst));
      sub_23B50D1C4();

      MEMORY[0x23EE9DB40](*v9);
      v38 = v55;
      sub_23B4A0AD0(&v9[*(v60 + 20)], v55);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v40 = v49;
        v39 = v50;
        (*v44)(v49, v38, v50);
        MEMORY[0x23EE9DB40](1);
        sub_23B3F1C50(&qword_27E132130, &qword_27E1320E0, &qword_23B50FCD0, MEMORY[0x277CC87E0]);
        sub_23B50D0E4();
        v41 = &v62;
      }

      else
      {
        v40 = v47;
        v39 = v48;
        (*v46)(v47, v38, v48);
        MEMORY[0x23EE9DB40](0);
        sub_23B3F1C50(&qword_280B42B98, &qword_27E1320E8, &qword_23B50FCD8, MEMORY[0x277CC87E0]);
        sub_23B50D0E4();
        v41 = &v63;
      }

      (**(v41 - 32))(v40, v39);
      MEMORY[0x23EE9DB40](v9[*(v60 + 24)]);
      sub_23B4A0B28();
      v21 ^= sub_23B50D914();
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x23EE9DB40](v21);
  }

  else
  {
LABEL_5:
    v25 = v59;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134268, &qword_23B51D3F8);
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v42);
        v19 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v24);
      ++v22;
      if (v19)
      {
        v23 = v21;
        v22 = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23B4A07AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for AirQuality.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirQuality.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4A095C()
{
  result = qword_27E134258;
  if (!qword_27E134258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134258);
  }

  return result;
}

unint64_t sub_23B4A09B4()
{
  result = qword_280B42660;
  if (!qword_280B42660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42660);
  }

  return result;
}

unint64_t sub_23B4A0A0C()
{
  result = qword_280B42668;
  if (!qword_280B42668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42668);
  }

  return result;
}

uint64_t sub_23B4A0A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134260, &qword_23B51D3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4A0AD0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_34_0();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_65();
  v6(v5);
  return a2;
}

uint64_t sub_23B4A0B28()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t HourTemperatureStatistics.init(hour:percentiles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for HourTemperatureStatistics(0) + 20);

  return sub_23B4A0BC8(a2, v4);
}

uint64_t sub_23B4A0BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HourTemperatureStatistics.percentiles.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HourTemperatureStatistics(0) + 20);

  return sub_23B4A0CAC(v3, a1);
}

uint64_t sub_23B4A0CAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HourTemperatureStatistics.percentiles.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HourTemperatureStatistics(0) + 20);

  return sub_23B4A0D60(a1, v3);
}

uint64_t sub_23B4A0D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static HourTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for HourTemperatureStatistics(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B78, &qword_27E131E30, &qword_23B511AC0, MEMORY[0x277CC87F0]);
  result = 0;
  if (sub_23B50D134())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
    if (OUTLINED_FUNCTION_1_35() & 1) != 0 && (OUTLINED_FUNCTION_1_35())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_23B4A0F1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E6563726570 && a2 == 0xEB0000000073656CLL)
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

uint64_t sub_23B4A0FE8(char a1)
{
  if (a1)
  {
    return 0x69746E6563726570;
  }

  else
  {
    return 1920298856;
  }
}

uint64_t sub_23B4A1028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A0F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A1050(uint64_t a1)
{
  v2 = sub_23B4A1280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A108C(uint64_t a1)
{
  v2 = sub_23B4A1280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HourTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134270, &qword_23B51D420);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A1280();
  sub_23B50D974();
  v12 = 0;
  sub_23B50D7E4();
  if (!v1)
  {
    type metadata accessor for HourTemperatureStatistics(0);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
    sub_23B3F1C50(&qword_27E134280, &qword_27E131E38, &unk_23B510240, &protocol conformance descriptor for Percentiles<A>);
    sub_23B50D7F4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B4A1280()
{
  result = qword_27E134278;
  if (!qword_27E134278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134278);
  }

  return result;
}

uint64_t HourTemperatureStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E38, &unk_23B510240);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134288, &qword_23B51D428);
  OUTLINED_FUNCTION_5();
  v19 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for HourTemperatureStatistics(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A1280();
  sub_23B50D964();
  if (!v2)
  {
    v17 = v10;
    v13 = v19;
    v23 = 0;
    v14 = v21;
    *v12 = sub_23B50D724();
    v22 = 1;
    sub_23B3F1C50(&qword_27E134290, &qword_27E131E38, &unk_23B510240, &protocol conformance descriptor for Percentiles<A>);
    sub_23B50D734();
    (*(v13 + 8))(v9, v14);
    sub_23B4A0BC8(v5, v12 + *(v17 + 20));
    sub_23B4A1570(v12, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B4A1570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourTemperatureStatistics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HourTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A1710()
{
  result = qword_27E134298;
  if (!qword_27E134298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134298);
  }

  return result;
}

unint64_t sub_23B4A1768()
{
  result = qword_27E1342A0;
  if (!qword_27E1342A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342A0);
  }

  return result;
}

unint64_t sub_23B4A17C0()
{
  result = qword_27E1342A8;
  if (!qword_27E1342A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342A8);
  }

  return result;
}

__n128 AirQualityScaleCategory.init(description:number:color:recommendation:range:glyph:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t AirQualityScaleCategory.description.setter()
{
  OUTLINED_FUNCTION_4();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AirQualityScaleCategory.color.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t AirQualityScaleCategory.recommendation.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AirQualityScaleCategory.range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t AirQualityScaleCategory.glyph.setter()
{
  OUTLINED_FUNCTION_4();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_23B4A1A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656D6D6F636572 && a2 == 0xEE006E6F69746164;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6870796C67 && a2 == 0xE500000000000000)
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

uint64_t sub_23B4A1C84(char a1)
{
  result = 0x7470697263736564;
  switch(a1)
  {
    case 1:
      result = 0x7265626D756ELL;
      break;
    case 2:
      result = 0x726F6C6F63;
      break;
    case 3:
      result = 0x6E656D6D6F636572;
      break;
    case 4:
      result = 0x65676E6172;
      break;
    case 5:
      result = 0x6870796C67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A1A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A1D6C(uint64_t a1)
{
  v2 = sub_23B4A21FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A1DA8(uint64_t a1)
{
  v2 = sub_23B4A21FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirQualityScaleCategory.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v27 = a1[7];
  v28 = a1[8];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v24 = a1[10];
  v25 = a2[7];
  v26 = a2[8];
  v21 = a2[9];
  v22 = a1[9];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v23 = a2[10];
  if (v12)
  {
    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_23B50D834();
    result = 0;
    if ((v13 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  v15 = v3 == v7 && v4 == v9;
  if (!v15 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v5 == v10 && v6 == v11)
    {
      if (v27 != v25 || v28 != v26)
      {
        return 0;
      }

      goto LABEL_33;
    }

    v17 = sub_23B50D834();
    result = 0;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11)
    {
      return result;
    }
  }

  if (v27 == v25 && v28 == v26)
  {
LABEL_33:
    if (v24)
    {
      if (v23)
      {
        v20 = v22 == v21 && v24 == v23;
        if (v20 || (sub_23B50D834() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v23)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AirQualityScaleCategory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342B0, &unk_23B51D5F0);
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[9];
  v18 = v1[8];
  v19 = v11;
  v16[0] = v13;
  v16[1] = v1[10];
  v17 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A21FC();
  sub_23B50D974();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_23B50D7A4();
  if (!v14)
  {
    LOBYTE(v25) = 1;
    sub_23B50D7E4();
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D7A4();
    LOBYTE(v25) = 3;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D774();
    v25 = v17;
    v26 = v18;
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    sub_23B496534(&qword_280B41A10, MEMORY[0x277D83B90], MEMORY[0x277D83D08]);
    sub_23B50D7F4();
    LOBYTE(v25) = 5;
    OUTLINED_FUNCTION_2_41();
    sub_23B50D774();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_23B4A21FC()
{
  result = qword_280B42328;
  if (!qword_280B42328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42328);
  }

  return result;
}

uint64_t AirQualityScaleCategory.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342B8, &qword_23B51D600);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A21FC();
  sub_23B50D964();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v36) = 0;
    OUTLINED_FUNCTION_0_49();
    v11 = sub_23B50D6E4();
    v34 = v12;
    LOBYTE(v36) = 1;
    OUTLINED_FUNCTION_0_49();
    v32 = sub_23B50D724();
    v33 = v11;
    LOBYTE(v36) = 2;
    OUTLINED_FUNCTION_0_49();
    v13 = sub_23B50D6E4();
    v15 = v14;
    v30 = v13;
    v31 = a2;
    LOBYTE(v36) = 3;
    OUTLINED_FUNCTION_0_49();
    v16 = sub_23B50D6B4();
    v18 = v17;
    v29 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132568, &qword_23B511720);
    LOBYTE(__src[0]) = 4;
    sub_23B496534(&qword_27E134178, MEMORY[0x277D83BB8], MEMORY[0x277D83D38]);
    sub_23B50D734();
    v28 = v36;
    v27 = v37;
    v47 = 5;
    v19 = sub_23B50D6B4();
    v21 = v20;
    (*(v7 + 8))(v10, v5);
    v22 = v33;
    __src[0] = v33;
    v23 = v32;
    __src[1] = v34;
    __src[2] = v32;
    v24 = v30;
    __src[3] = v30;
    __src[4] = v15;
    __src[5] = v29;
    __src[6] = v18;
    __src[7] = v28;
    __src[8] = v27;
    __src[9] = v19;
    __src[10] = v21;
    memcpy(v31, __src, 0x58uLL);
    sub_23B3C8AD4(__src, &v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = v22;
    v37 = v34;
    v38 = v23;
    v39 = v24;
    v40 = v15;
    v41 = v29;
    v42 = v18;
    v43 = v28;
    v44 = v27;
    v45 = v19;
    v46 = v21;
    return sub_23B3FD324(&v36);
  }
}

uint64_t AirQualityScaleCategory.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  v6 = v1[10];
  sub_23B50D1C4();
  MEMORY[0x23EE9DB40](v2);
  sub_23B50D1C4();
  sub_23B50D8E4();
  if (v4)
  {
    sub_23B50D1C4();
  }

  MEMORY[0x23EE9DB40](v3);
  MEMORY[0x23EE9DB40](v5);
  if (!v6)
  {
    return sub_23B50D8E4();
  }

  sub_23B50D8E4();

  return sub_23B50D1C4();
}

uint64_t AirQualityScaleCategory.hashValue.getter()
{
  sub_23B50D8C4();
  AirQualityScaleCategory.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B4A279C(uint64_t a1)
{
  sub_23B50D8C4();
  AirQualityScaleCategory.hash(into:)(v2);
  return sub_23B50D914();
}

unint64_t sub_23B4A27DC()
{
  result = qword_27E1342C0;
  if (!qword_27E1342C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342C0);
  }

  return result;
}

uint64_t sub_23B4A2838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23B4A2878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleCategory.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A29AC()
{
  result = qword_27E1342C8;
  if (!qword_27E1342C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342C8);
  }

  return result;
}

unint64_t sub_23B4A2A04()
{
  result = qword_280B42318;
  if (!qword_280B42318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42318);
  }

  return result;
}

unint64_t sub_23B4A2A5C()
{
  result = qword_280B42320;
  if (!qword_280B42320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42320);
  }

  return result;
}

void static DayPartForecast.mock()(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Wind(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v33 - v7;
  v8 = objc_opt_self();
  v9 = [v8 celsius];
  v10 = type metadata accessor for DayPartForecast(0);
  v11 = sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
  OUTLINED_FUNCTION_1_37(v11, v12);
  v13 = [v8 celsius];
  sub_23B50A9B4();
  static PrecipitationAmountByType.mock()(a1 + v10[12]);
  v14 = objc_opt_self();
  v15 = [v14 miles];
  v16 = sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
  OUTLINED_FUNCTION_1_37(v16, v17);
  v18 = [v14 miles];
  sub_23B50A9B4();
  v36 = objc_opt_self();
  v19 = [v36 degrees];
  v20 = (a1 + v10[23]);
  v35 = sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  v21 = objc_opt_self();
  v22 = [v21 kilometersPerHour];
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v23 = [v21 kilometersPerHour];
  v24 = v34;
  sub_23B50A9B4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2_43();
  v26 = *(v3 + 36);
  __swift_storeEnumTagSinglePayload(&v20[v26], 1, 1, v25);
  *v20 = 4;
  sub_23B4983E4(v24, &v20[v26]);
  v27 = [v36 degrees];
  sub_23B50A9B4();
  v28 = [v21 kilometersPerHour];
  v29 = *(v3 + 32);
  sub_23B50A9B4();
  v30 = [v21 kilometersPerHour];
  sub_23B50A9B4();
  OUTLINED_FUNCTION_2_43();
  v31 = *(v3 + 36);
  __swift_storeEnumTagSinglePayload(&v5[v31], 1, 1, v25);
  *v5 = 4;
  sub_23B4983E4(v24, &v5[v31]);
  (*(*(v25 - 8) + 16))(a1 + v10[24], &v5[v29], v25);
  sub_23B49ADC8(v5);
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50B994();
  *(a1 + v10[6]) = 0;
  v32 = (a1 + v10[7]);
  *v32 = 0;
  v32[1] = 0;
  v32[2] = 0;
  *(a1 + v10[8]) = 4;
  *(a1 + v10[11]) = 0;
  *(a1 + v10[13]) = 0;
  OUTLINED_FUNCTION_0_50(v10[14]);
  OUTLINED_FUNCTION_0_50(v10[15]);
  *(a1 + v10[16]) = 1;
  OUTLINED_FUNCTION_0_50(v10[17]);
  OUTLINED_FUNCTION_0_50(v10[18]);
  *(a1 + v10[19]) = 0;
  *(a1 + v10[20]) = 0;
  *(a1 + v10[25]) = 0;
}

uint64_t AQIScaleStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t static AQIScaleStore.locationPath.getter()
{
  if (qword_280B43210 != -1)
  {
    swift_once();
  }

  v0 = sub_23B50D014();
  __swift_project_value_buffer(v0, qword_280B4E9B8);
  return sub_23B50D004();
}

uint64_t WeatherServiceFetchOptionsProvider.__allocating_init(geocodeManager:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7_37();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.__allocating_init(geocodeManager:updateCacheAsynchronously:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_7_37();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.init(geocodeManager:updateCacheAsynchronously:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t WeatherServiceFetchOptionsProvider.provideFetchOptions(for:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_23(v1);

  return WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)();
}

uint64_t WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)()
{
  OUTLINED_FUNCTION_71();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 136) = v3;
  *(v1 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  OUTLINED_FUNCTION_3(v5);
  *(v1 + 88) = OUTLINED_FUNCTION_13_22();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  OUTLINED_FUNCTION_3(v6);
  *(v1 + 96) = OUTLINED_FUNCTION_13_22();
  v7 = type metadata accessor for ReverseGeocodeResult(0);
  *(v1 + 104) = v7;
  OUTLINED_FUNCTION_3(v7);
  *(v1 + 112) = OUTLINED_FUNCTION_13_22();

  return MEMORY[0x2822009F8](sub_23B4A3208, 0, 0);
}

uint64_t sub_23B4A3208()
{
  OUTLINED_FUNCTION_71();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_23B4A32A8;
  v2 = v0[14];
  v3 = v0[9];

  return GeocodeManager.reverseGeocode(location:)(v2, v3);
}

uint64_t sub_23B4A32A8()
{
  OUTLINED_FUNCTION_71();
  v2 = *v1;
  OUTLINED_FUNCTION_19_0();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_23B4A3614;
  }

  else
  {
    v5 = sub_23B4A33B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23B4A33B0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v1 + 20);
  v6 = (v2 + *(v1 + 24));
  v7 = v6[1];
  v44 = *v6;
  v8 = sub_23B50AEF4();
  (*(*(v8 - 8) + 16))(v3, v2 + v5, v8);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  v9 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v45 = *(v4 + 24);
  v13 = qword_280B42708;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_0_52(&qword_280B42708);
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 96);
  v16 = *(v0 + 64);
  v17 = OUTLINED_FUNCTION_4_34();
  v18 = v17[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  v22 = v16 + v17[6];
  *v22 = 0;
  *(v22 + 4) = 768;
  v23 = v17[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v9);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = v17[14];
  sub_23B437A6C(v14);
  v32 = MEMORY[0x277D84F90];
  *(v16 + v31) = MEMORY[0x277D84F90];
  *v16 = v44;
  v16[1] = v7;
  sub_23B3C24A8(v15, v16 + v18, &qword_27E131F68, &unk_23B50F2A0);
  *v22 = 3;
  *(v22 + 4) = 512;
  *(v16 + v17[7]) = 0;
  *(v16 + v17[8]) = v32;
  sub_23B3C24A8(v37, v16 + v23, &qword_27E1338B0, &unk_23B519390);
  v33 = *(v0 + 64);
  *(v33 + v17[10]) = *(v0 + 136);
  *(v33 + v17[11]) = 0;
  OUTLINED_FUNCTION_2_44(v17[13], v37, v38, v39, v40, v41, v42, v43);
  *(v34 + v17[15]) = v45;

  OUTLINED_FUNCTION_67_1();

  return v35();
}

uint64_t sub_23B4A3614()
{
  v59 = v0;
  if (qword_280B45378 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v3 = sub_23B50CDF4();
  __swift_project_value_buffer(v3, qword_280B4E9F0);
  v4 = v2;
  v5 = v1;
  v6 = sub_23B50CDD4();
  v7 = sub_23B50D4B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58 = v10;
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    [v8 coordinate];
    *(v0 + 40) = v11;
    *(v0 + 48) = v12;
    type metadata accessor for CLLocationCoordinate2D();
    v13 = sub_23B50D184();
    v15 = sub_23B391F1C(v13, v14, &v58);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v16 = *(*(v0 + 24) - 8);
    OUTLINED_FUNCTION_13_22();
    (*(v16 + 16))();
    v17 = sub_23B50D184();
    v19 = v18;

    v20 = sub_23B391F1C(v17, v19, &v58);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_23B38D000, v6, v7, "failed to reverse geocode. location=%{private,mask.hash}s, error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v10, -1, -1);
    MEMORY[0x23EE9E260](v9, -1, -1);
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 80);
  sub_23B50AEE4();
  v23 = sub_23B50AEF4();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  v24 = type metadata accessor for WeatherNetworkActivity(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  v57 = *(v22 + 24);
  if (qword_280B42708 != -1)
  {
    OUTLINED_FUNCTION_0_52(&qword_280B42708);
  }

  v28 = *(v0 + 128);
  v29 = *(v0 + 96);
  v30 = *(v0 + 64);
  v31 = OUTLINED_FUNCTION_4_34();
  v32 = v31[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v23);
  v36 = v30 + v31[6];
  *v36 = 0;
  *(v36 + 4) = 768;
  v37 = v31[9];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
  sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);

  v45 = MEMORY[0x277D84F90];
  *(v30 + v31[14]) = MEMORY[0x277D84F90];
  *v30 = 0;
  v30[1] = 0;
  sub_23B3C24A8(v29, v30 + v32, &qword_27E131F68, &unk_23B50F2A0);
  *v36 = 0;
  *(v36 + 4) = 768;
  *(v30 + v31[7]) = 0;
  *(v30 + v31[8]) = v45;
  sub_23B3C24A8(v50, v30 + v37, &qword_27E1338B0, &unk_23B519390);
  v46 = *(v0 + 64);
  *(v46 + v31[10]) = *(v0 + 136);
  *(v46 + v31[11]) = 0;
  OUTLINED_FUNCTION_2_44(v31[13], v50, v51, v52, v53, v54, v55, v56);
  *(v47 + v31[15]) = v57;

  OUTLINED_FUNCTION_67_1();

  return v48();
}

uint64_t WeatherServiceFetchOptionsProvider.provideMarineFetchOptions(for:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_12_23(v1);

  return WeatherServiceFetchOptionsProvider.fetchOptions(for:needsMarineData:)();
}

uint64_t sub_23B4A3AF4()
{
  OUTLINED_FUNCTION_71();
  v1 = *v0;
  OUTLINED_FUNCTION_19_0();
  *v2 = v1;

  OUTLINED_FUNCTION_67_1();

  return v3();
}

id WeatherServiceFetchOptionsProvider.provideFetchOptionsWithouReverseGeocoding(for:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1338B0, &unk_23B519390);
  v4 = OUTLINED_FUNCTION_3(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    v12 = sub_23B391C9C(result);
    v42 = v13;
    v43 = v12;
    sub_23B50AEE4();
    v14 = sub_23B50AEF4();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
    v15 = type metadata accessor for WeatherNetworkActivity(0);
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v44 = *(v1 + 24);
    if (qword_280B42708 != -1)
    {
      OUTLINED_FUNCTION_0_52(&qword_280B42708);
    }

    v40 = xmmword_280B42710;
    v19 = qword_280B42720;
    v41 = dword_280B42728;
    v39 = word_280B4272C;
    v20 = byte_280B4272E;
    Options = type metadata accessor for WeatherServiceFetchOptions(0);
    v22 = Options[5];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v14);
    v26 = a1 + Options[6];
    *v26 = 0;
    *(v26 + 4) = 768;
    v27 = Options[9];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v15);
    sub_23B50AD24();
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    v35 = MEMORY[0x277D84F90];
    *(a1 + Options[14]) = MEMORY[0x277D84F90];
    v36 = v42;
    *a1 = v43;
    a1[1] = v36;
    sub_23B3C24A8(v10, a1 + v22, &qword_27E131F68, &unk_23B50F2A0);
    *v26 = 3;
    *(v26 + 4) = 512;
    *(a1 + Options[7]) = 0;
    *(a1 + Options[8]) = v35;
    result = sub_23B3C24A8(v6, a1 + v27, &qword_27E1338B0, &unk_23B519390);
    *(a1 + Options[10]) = 0;
    *(a1 + Options[11]) = 0;
    v37 = a1 + Options[13];
    *v37 = v40;
    *(v37 + 2) = v19;
    v37[30] = v20;
    *(v37 + 14) = v39;
    *(v37 + 6) = v41;
    *(a1 + Options[15]) = v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WeatherServiceFetchOptionsProvider.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_7_37();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B4A3EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B4A42B4;

  return WeatherServiceFetchOptionsProvider.provideFetchOptions(for:)();
}

uint64_t sub_23B4A3FAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B4A42B4;

  return WeatherServiceFetchOptionsProvider.provideMarineFetchOptions(for:)();
}

uint64_t dispatch thunk of WeatherServiceFetchOptionsProviderType.provideFetchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_27(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_43(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_27(v5);

  return v8(v7);
}

uint64_t dispatch thunk of WeatherServiceFetchOptionsProviderType.provideMarineFetchOptions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_27(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_43(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_27(v5);

  return v8(v7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23B4A42C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23B4A4304(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23B4A4354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v66 = a4;
  v67 = a5;
  v65 = a3;
  v62 = a1;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_3(v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v68 = &v60 - v8;
  v64 = type metadata accessor for ReverseGeocodeResult(0);
  MEMORY[0x28223BE20](v64);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322A8, &unk_23B51DBB0);
  OUTLINED_FUNCTION_3(v10);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v61 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v14 = OUTLINED_FUNCTION_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v17 = OUTLINED_FUNCTION_3(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v29 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v22);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v22);
  swift_allocObject();

  OUTLINED_FUNCTION_4_35();
  sub_23B50CF44();
  v70 = v62;
  v71 = v63;

  sub_23B50CF64();

  v52 = v65;
  sub_23B3FE9CC(v65, v60);
  sub_23B4A5B9C(&qword_280B43008, &protocol conformance descriptor for ReverseGeocodeResult);
  sub_23B4A5B9C(qword_280B43010, &protocol conformance descriptor for ReverseGeocodeResult);
  v53 = v61;
  sub_23B50CEB4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322D0, &qword_23B510460);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
  sub_23B50CF64();

  v70 = v66;
  v71 = v67;
  sub_23B50CF64();

  v55 = sub_23B50AD24();
  v56 = *(v55 - 8);
  v57 = v68;
  v58 = v69;
  (*(v56 + 16))(v68, v69, v55);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
  sub_23B50CF64();

  (*(v56 + 8))(v58, v55);
  sub_23B437A6C(v52);
  return v29;
}

uint64_t sub_23B4A48E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v1 = OUTLINED_FUNCTION_3(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v4 = OUTLINED_FUNCTION_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v7 = OUTLINED_FUNCTION_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v16 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v9);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v9);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  sub_23B50CF44();
  return v16;
}

uint64_t sub_23B4A4BCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73657269707865 && a2 == 0xE700000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000023B537E10 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000023B529AB0 == a2)
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

unint64_t sub_23B4A4D28(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x73657269707865;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A4DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134308, &unk_23B51DBA0);
  OUTLINED_FUNCTION_5();
  v11 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4A5B48();
  sub_23B50D974();
  v26 = a2;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_2_45(&qword_27E133530);
  v15 = OUTLINED_FUNCTION_8_25();
  OUTLINED_FUNCTION_16_15(v15, v16, v17);
  if (!v5)
  {
    v22 = a4;
    v26 = v24;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_2_45(&qword_27E133538);
    OUTLINED_FUNCTION_8_25();
    sub_23B50D7F4();
    v26 = v22;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
    OUTLINED_FUNCTION_2_45(&qword_27E134310);
    OUTLINED_FUNCTION_8_25();
    sub_23B50D7F4();
    v26 = v23;
    v25 = 3;
    v18 = OUTLINED_FUNCTION_8_25();
    OUTLINED_FUNCTION_16_15(v18, v19, v20);
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_23B4A4FE8(void *a1)
{
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342F0, &qword_23B51DB98);
  OUTLINED_FUNCTION_5();
  v53 = v2;
  v54 = v1;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v59 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E0, &unk_23B51DB50);
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v56 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C0, &qword_23B517A90);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334C8, &unk_23B51DB60);
  v14 = OUTLINED_FUNCTION_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D0, &qword_23B517A98);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334D8, &unk_23B51DB70);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_9_28();
  v55 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E0, &qword_23B517AA0);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1334E8, &qword_23B51DB80);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v57 = sub_23B50CF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1342E8, &qword_23B51DB88);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_0_53();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1322C0, &qword_23B51DB90);
  OUTLINED_FUNCTION_7_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v40 = sub_23B50CF44();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v16);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v16);
  swift_allocObject();
  OUTLINED_FUNCTION_1_22();
  v47 = sub_23B50CF44();
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  sub_23B4A5B48();
  v48 = v58;
  sub_23B50D964();
  if (v48)
  {
  }

  else
  {
    v56 = v47;
    v58 = v40;
    v61 = 0;
    OUTLINED_FUNCTION_3_30(&qword_27E133510, &qword_27E1334D8, &unk_23B51DB70);
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_15_21(v23, v49, v54);

    v40 = v62;
    v61 = 1;
    OUTLINED_FUNCTION_3_30(&qword_27E133518, &qword_27E1334E8, &qword_23B51DB80);
    OUTLINED_FUNCTION_12_24();
    sub_23B50D734();

    v61 = 2;
    OUTLINED_FUNCTION_3_30(&qword_27E134300, &qword_27E1322C0, &qword_23B51DB90);
    OUTLINED_FUNCTION_12_24();
    sub_23B50D734();

    v61 = 3;
    OUTLINED_FUNCTION_12_24();
    OUTLINED_FUNCTION_15_21(v23, v50, v54);
    (*(v53 + 8))(v59, v54);
  }

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v40;
}

uint64_t sub_23B4A55F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A4BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A561C(uint64_t a1)
{
  v2 = sub_23B4A5B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A5658(uint64_t a1)
{
  v2 = sub_23B4A5B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A56C4(uint64_t a1)
{
  v2 = sub_23B3FFFF0();

  return MEMORY[0x2821D1398](a1, v2);
}

uint64_t sub_23B4A5710(uint64_t a1)
{
  v2 = sub_23B3FFFF0();

  return MEMORY[0x2821D13A8](a1, v2);
}

uint64_t sub_23B4A575C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3FFFF0();

  return MEMORY[0x2821D13A0](a1, a2, a3, v6);
}

uint64_t sub_23B4A57C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B4A48E4();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_23B4A57EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B4A4FE8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_23B4A583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B3FFFF0();

  return MEMORY[0x2821D13C0](a1, a2, v4);
}

uint64_t sub_23B4A5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B3FFFF0();

  return MEMORY[0x2821D13B8](a1, a2, a3, v6);
}

uint64_t sub_23B4A58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B3FFFF0();

  return MEMORY[0x2821D13B0](a1, a2, a3, a4, v8);
}

unint64_t sub_23B4A5940()
{
  result = qword_280B43120;
  if (!qword_280B43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43120);
  }

  return result;
}

unint64_t sub_23B4A5994()
{
  result = qword_280B43128;
  if (!qword_280B43128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43128);
  }

  return result;
}

unint64_t sub_23B4A59EC()
{
  result = qword_280B43138;
  if (!qword_280B43138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43138);
  }

  return result;
}

unint64_t sub_23B4A5A44()
{
  result = qword_280B42FD0;
  if (!qword_280B42FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42FD0);
  }

  return result;
}

unint64_t sub_23B4A5A9C()
{
  result = qword_280B43130;
  if (!qword_280B43130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43130);
  }

  return result;
}

unint64_t sub_23B4A5AF4()
{
  result = qword_280B43140;
  if (!qword_280B43140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B43140);
  }

  return result;
}

unint64_t sub_23B4A5B48()
{
  result = qword_27E1342F8;
  if (!qword_27E1342F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1342F8);
  }

  return result;
}

uint64_t sub_23B4A5B9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReverseGeocodeResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodeResultEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4A5CC0()
{
  result = qword_27E134318;
  if (!qword_27E134318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134318);
  }

  return result;
}

unint64_t sub_23B4A5D18()
{
  result = qword_27E134320;
  if (!qword_27E134320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134320);
  }

  return result;
}

unint64_t sub_23B4A5D70()
{
  result = qword_27E134328;
  if (!qword_27E134328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134328);
  }

  return result;
}

uint64_t PrecipitationShift.init(date:nextDate:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for PrecipitationShift(0);
  v13 = *(v12 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  sub_23B3CF890(a1, a4);
  result = sub_23B3CF890(a2, a4 + v13);
  *(a4 + *(v12 + 24)) = v7;
  return result;
}

uint64_t PrecipitationShift.nextDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PrecipitationShift(0) + 20);

  return sub_23B3C7DF4(v3, a1);
}

uint64_t PrecipitationShift.nextDate.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for PrecipitationShift(v2) + 20);

  return sub_23B3CF890(v0, v3);
}

void (*PrecipitationShift.nextDate.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for PrecipitationShift(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t PrecipitationShift.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrecipitationShift(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t PrecipitationShift.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PrecipitationShift(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*PrecipitationShift.kind.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for PrecipitationShift(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t sub_23B4A6024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656C626973736F70 && a2 == 0xEF656C7A7A697244;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000023B537E30 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B537E50 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000023B537E70 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x800000023B537E90 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C7A7A697264 && a2 == 0xE700000000000000;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x53656C7A7A697264 && a2 == 0xEC00000074726174;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x53656C7A7A697264 && a2 == 0xEB00000000706F74;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000023B537EB0 == a2;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000023B537ED0 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1852399986 && a2 == 0xE400000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x726174536E696172 && a2 == 0xE900000000000074;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x706F74536E696172 && a2 == 0xE800000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x726174536E696172 && a2 == 0xED0000706F745374;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x706F74536E696172 && a2 == 0xED00007472617453;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6961527976616568 && a2 == 0xE90000000000006ELL;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6961527976616568 && a2 == 0xEE0074726174536ELL;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6961527976616568 && a2 == 0xED0000706F74536ELL;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000012 && 0x800000023B537EF0 == a2;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x800000023B537F10 == a2;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x800000023B537F30 == a2;
                                          if (v25 || (sub_23B50D834() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000012 && 0x800000023B537F50 == a2;
                                            if (v26 || (sub_23B50D834() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x65486F546E696172 && a2 == 0xEF6E696152797661;
                                              if (v27 || (sub_23B50D834() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6961527976616568 && a2 == 0xEF6E6961526F546ELL;
                                                if (v28 || (sub_23B50D834() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000017 && 0x800000023B537F70 == a2;
                                                  if (v29 || (sub_23B50D834() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000017 && 0x800000023B537F90 == a2;
                                                    if (v30 || (sub_23B50D834() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x800000023B537FB0 == a2;
                                                      if (v31 || (sub_23B50D834() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x800000023B537FD0 == a2;
                                                        if (v32 || (sub_23B50D834() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000016 && 0x800000023B537FF0 == a2;
                                                          if (v33 || (sub_23B50D834() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000016 && 0x800000023B538010 == a2;
                                                            if (v34 || (sub_23B50D834() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000013 && 0x800000023B538030 == a2;
                                                              if (v35 || (sub_23B50D834() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000013 && 0x800000023B538050 == a2;
                                                                if (v36 || (sub_23B50D834() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD00000000000001BLL && 0x800000023B538070 == a2;
                                                                  if (v37 || (sub_23B50D834() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD00000000000001BLL && 0x800000023B538090 == a2;
                                                                    if (v38 || (sub_23B50D834() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000018 && 0x800000023B5380B0 == a2;
                                                                      if (v39 || (sub_23B50D834() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x800000023B5380D0 == a2;
                                                                        if (v40 || (sub_23B50D834() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0xD00000000000001BLL && 0x800000023B5380F0 == a2;
                                                                          if (v41 || (sub_23B50D834() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD00000000000001BLL && 0x800000023B538110 == a2;
                                                                            if (v42 || (sub_23B50D834() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000018 && 0x800000023B538130 == a2;
                                                                              if (v43 || (sub_23B50D834() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000018 && 0x800000023B538150 == a2;
                                                                                if (v44 || (sub_23B50D834() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000010 && 0x800000023B538170 == a2;
                                                                                  if (v45 || (sub_23B50D834() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000015 && 0x800000023B538190 == a2;
                                                                                    if (v46 || (sub_23B50D834() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000014 && 0x800000023B5381B0 == a2;
                                                                                      if (v47 || (sub_23B50D834() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000019 && 0x800000023B5381D0 == a2;
                                                                                        if (v48 || (sub_23B50D834() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0xD000000000000019 && 0x800000023B5381F0 == a2;
                                                                                          if (v49 || (sub_23B50D834() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x7365697272756C66 && a2 == 0xE800000000000000;
                                                                                            if (v50 || (sub_23B50D834() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0x7365697272756C66 && a2 == 0xED00007472617453;
                                                                                              if (v51 || (sub_23B50D834() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v52 = a1 == 0x7365697272756C66 && a2 == 0xEC000000706F7453;
                                                                                                if (v52 || (sub_23B50D834() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v53 = a1 == 0xD000000000000011 && 0x800000023B538210 == a2;
                                                                                                  if (v53 || (sub_23B50D834() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v54 = a1 == 0xD000000000000011 && 0x800000023B538230 == a2;
                                                                                                    if (v54 || (sub_23B50D834() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v55 = a1 == 2003791475 && a2 == 0xE400000000000000;
                                                                                                      if (v55 || (sub_23B50D834() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v56 = a1 == 0x72617453776F6E73 && a2 == 0xE900000000000074;
                                                                                                        if (v56 || (sub_23B50D834() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v57 = a1 == 0x706F7453776F6E73 && a2 == 0xE800000000000000;
                                                                                                          if (v57 || (sub_23B50D834() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v58 = a1 == 0x72617453776F6E73 && a2 == 0xED0000706F745374;
                                                                                                            if (v58 || (sub_23B50D834() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v59 = a1 == 0x706F7453776F6E73 && a2 == 0xED00007472617453;
                                                                                                              if (v59 || (sub_23B50D834() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v60 = a1 == 0x6F6E537976616568 && a2 == 0xE900000000000077;
                                                                                                                if (v60 || (sub_23B50D834() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v61 = a1 == 0x6F6E537976616568 && a2 == 0xEE00747261745377;
                                                                                                                  if (v61 || (sub_23B50D834() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v62 = a1 == 0x6F6E537976616568 && a2 == 0xED0000706F745377;
                                                                                                                    if (v62 || (sub_23B50D834() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v63 = a1 == 0xD000000000000012 && 0x800000023B538250 == a2;
                                                                                                                      if (v63 || (sub_23B50D834() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v64 = a1 == 0xD000000000000012 && 0x800000023B538270 == a2;
                                                                                                                        if (v64 || (sub_23B50D834() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v65 = a1 == 0xD000000000000013 && 0x800000023B538290 == a2;
                                                                                                                          if (v65 || (sub_23B50D834() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v66 = a1 == 0xD000000000000013 && 0x800000023B5382B0 == a2;
                                                                                                                            if (v66 || (sub_23B50D834() & 1) != 0)
                                                                                                                            {

                                                                                                                              return 61;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v67 = a1 == 0x65486F54776F6E73 && a2 == 0xEF776F6E53797661;
                                                                                                                              if (v67 || (sub_23B50D834() & 1) != 0)
                                                                                                                              {

                                                                                                                                return 62;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v68 = a1 == 0x6F6E537976616568 && a2 == 0xEF776F6E536F5477;
                                                                                                                                if (v68 || (sub_23B50D834() & 1) != 0)
                                                                                                                                {

                                                                                                                                  return 63;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v69 = a1 == 0xD000000000000018 && 0x800000023B5382D0 == a2;
                                                                                                                                  if (v69 || (sub_23B50D834() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    return 64;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v70 = a1 == 0xD000000000000018 && 0x800000023B5382F0 == a2;
                                                                                                                                    if (v70 || (sub_23B50D834() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      return 65;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v71 = a1 == 0xD000000000000014 && 0x800000023B538310 == a2;
                                                                                                                                      if (v71 || (sub_23B50D834() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        return 66;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v72 = a1 == 0xD000000000000014 && 0x800000023B538330 == a2;
                                                                                                                                        if (v72 || (sub_23B50D834() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          return 67;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v73 = a1 == 0xD000000000000017 && 0x800000023B538350 == a2;
                                                                                                                                          if (v73 || (sub_23B50D834() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            return 68;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v74 = a1 == 0xD000000000000017 && 0x800000023B538370 == a2;
                                                                                                                                            if (v74 || (sub_23B50D834() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              return 69;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v75 = a1 == 0xD000000000000013 && 0x800000023B538390 == a2;
                                                                                                                                              if (v75 || (sub_23B50D834() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                return 70;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v76 = a1 == 0xD000000000000013 && 0x800000023B5383B0 == a2;
                                                                                                                                                if (v76 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  return 71;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v77 = a1 == 0xD00000000000001CLL && 0x800000023B5383D0 == a2;
                                                                                                                                                  if (v77 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    return 72;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v78 = a1 == 0xD00000000000001CLL && 0x800000023B5383F0 == a2;
                                                                                                                                                    if (v78 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      return 73;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v79 = a1 == 0xD000000000000018 && 0x800000023B538410 == a2;
                                                                                                                                                      if (v79 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        return 74;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v80 = a1 == 0xD000000000000018 && 0x800000023B538430 == a2;
                                                                                                                                                        if (v80 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          return 75;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v81 = a1 == 0xD00000000000001CLL && 0x800000023B538450 == a2;
                                                                                                                                                          if (v81 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            return 76;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v82 = a1 == 0xD00000000000001CLL && 0x800000023B538470 == a2;
                                                                                                                                                            if (v82 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                            {

                                                                                                                                                              return 77;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v83 = a1 == 0xD000000000000018 && 0x800000023B538490 == a2;
                                                                                                                                                              if (v83 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                              {

                                                                                                                                                                return 78;
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v84 = a1 == 0xD000000000000018 && 0x800000023B5384B0 == a2;
                                                                                                                                                                if (v84 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                {

                                                                                                                                                                  return 79;
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v85 = a1 == 0x656C626973736F70 && a2 == 0xED00007465656C53;
                                                                                                                                                                  if (v85 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                  {

                                                                                                                                                                    return 80;
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v86 = a1 == 0xD000000000000012 && 0x800000023B5384D0 == a2;
                                                                                                                                                                    if (v86 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                    {

                                                                                                                                                                      return 81;
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v87 = a1 == 0xD000000000000011 && 0x800000023B5384F0 == a2;
                                                                                                                                                                      if (v87 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                      {

                                                                                                                                                                        return 82;
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v88 = a1 == 0xD000000000000016 && 0x800000023B538510 == a2;
                                                                                                                                                                        if (v88 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                        {

                                                                                                                                                                          return 83;
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v89 = a1 == 0xD000000000000016 && 0x800000023B538530 == a2;
                                                                                                                                                                          if (v89 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                          {

                                                                                                                                                                            return 84;
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v90 = a1 == 0x7465656C73 && a2 == 0xE500000000000000;
                                                                                                                                                                            if (v90 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                            {

                                                                                                                                                                              return 85;
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v91 = a1 == 0x6174537465656C73 && a2 == 0xEA00000000007472;
                                                                                                                                                                              if (v91 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                              {

                                                                                                                                                                                return 86;
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v92 = a1 == 0x6F74537465656C73 && a2 == 0xE900000000000070;
                                                                                                                                                                                if (v92 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                {

                                                                                                                                                                                  return 87;
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v93 = a1 == 0x6174537465656C73 && a2 == 0xEE00706F74537472;
                                                                                                                                                                                  if (v93 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                  {

                                                                                                                                                                                    return 88;
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v94 = a1 == 0x6F74537465656C73 && a2 == 0xEE00747261745370;
                                                                                                                                                                                    if (v94 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                    {

                                                                                                                                                                                      return 89;
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v95 = a1 == 0x656C626973736F70 && a2 == 0xEC0000006C696148;
                                                                                                                                                                                      if (v95 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                      {

                                                                                                                                                                                        return 90;
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v96 = a1 == 0xD000000000000011 && 0x800000023B538550 == a2;
                                                                                                                                                                                        if (v96 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                        {

                                                                                                                                                                                          return 91;
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v97 = a1 == 0xD000000000000010 && 0x800000023B538570 == a2;
                                                                                                                                                                                          if (v97 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                          {

                                                                                                                                                                                            return 92;
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v98 = a1 == 0xD000000000000015 && 0x800000023B538590 == a2;
                                                                                                                                                                                            if (v98 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                            {

                                                                                                                                                                                              return 93;
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v99 = a1 == 0xD000000000000015 && 0x800000023B5385B0 == a2;
                                                                                                                                                                                              if (v99 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                              {

                                                                                                                                                                                                return 94;
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v100 = a1 == 1818845544 && a2 == 0xE400000000000000;
                                                                                                                                                                                                if (v100 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                {

                                                                                                                                                                                                  return 95;
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v101 = a1 == 0x726174536C696168 && a2 == 0xE900000000000074;
                                                                                                                                                                                                  if (v101 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                  {

                                                                                                                                                                                                    return 96;
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v102 = a1 == 0x706F74536C696168 && a2 == 0xE800000000000000;
                                                                                                                                                                                                    if (v102 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                    {

                                                                                                                                                                                                      return 97;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v103 = a1 == 0x726174536C696168 && a2 == 0xED0000706F745374;
                                                                                                                                                                                                      if (v103 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                      {

                                                                                                                                                                                                        return 98;
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v104 = a1 == 0x706F74536C696168 && a2 == 0xED00007472617453;
                                                                                                                                                                                                        if (v104 || (sub_23B50D834() & 1) != 0)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 99;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000)
                                                                                                                                                                                                        {

                                                                                                                                                                                                          return 100;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v106 = sub_23B50D834();

                                                                                                                                                                                                          if (v106)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            return 100;
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            return 101;
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