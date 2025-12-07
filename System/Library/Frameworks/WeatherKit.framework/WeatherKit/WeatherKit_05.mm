uint64_t NextHourMinute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v33 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v34 = v8;
  MEMORY[0x28223BE20](v9);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132388, &qword_23B510B68);
  OUTLINED_FUNCTION_5();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  HourMinute = type metadata accessor for NextHourMinute(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B402D00();
  v38 = v14;
  v19 = v40;
  sub_23B50D964();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v18;
  v22 = v34;
  v21 = v35;
  v46 = 0;
  sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
  sub_23B50D734();
  v23 = *(v22 + 32);
  v40 = v7;
  v23(v20, v37);
  v45 = 1;
  sub_23B50D704();
  *(v20 + *(HourMinute + 20)) = v24;
  v44 = 2;
  sub_23B3E9FE0(&qword_27E132018, MEMORY[0x277CC87F8]);
  sub_23B50D734();
  v25 = *(HourMinute + 24);
  v37 = HourMinute;
  (*(v33 + 32))(v20 + v25, v6, v21);
  v43 = 3;
  sub_23B402DEC();
  sub_23B50D734();
  v26 = OUTLINED_FUNCTION_3_6();
  v27(v26);
  v28 = v42;
  v29 = v20 + *(v37 + 7);
  *v29 = v41;
  *(v29 + 8) = v28;
  sub_23B402E40(v20, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B402EA4(v20);
}

unint64_t sub_23B402D00()
{
  result = qword_27E132378;
  if (!qword_27E132378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132378);
  }

  return result;
}

unint64_t sub_23B402D54()
{
  result = qword_27E132380;
  if (!qword_27E132380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132380);
  }

  return result;
}

uint64_t sub_23B402DA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B50AD24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B402DEC()
{
  result = qword_27E132390;
  if (!qword_27E132390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132390);
  }

  return result;
}

uint64_t sub_23B402E40(uint64_t a1, uint64_t a2)
{
  HourMinute = type metadata accessor for NextHourMinute(0);
  (*(*(HourMinute - 8) + 16))(a2, a1, HourMinute);
  return a2;
}

uint64_t sub_23B402EA4(uint64_t a1)
{
  HourMinute = type metadata accessor for NextHourMinute(0);
  (*(*(HourMinute - 8) + 8))(a1, HourMinute);
  return a1;
}

void sub_23B402F28(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B39A5F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NextHourMinute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40309C()
{
  result = qword_27E1323A8;
  if (!qword_27E1323A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323A8);
  }

  return result;
}

unint64_t sub_23B4030F4()
{
  result = qword_27E1323B0;
  if (!qword_27E1323B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323B0);
  }

  return result;
}

unint64_t sub_23B40314C()
{
  result = qword_27E1323B8;
  if (!qword_27E1323B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323B8);
  }

  return result;
}

uint64_t PrecipitationAmountByType.init(hail:mixed:rainfall:sleet:precipitation:snowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v16 = *(v15 + 32);
  v16(a7, a1, v14);
  v17 = type metadata accessor for PrecipitationAmountByType(0);
  v16(a7 + v17[5], a2, v14);
  v16(a7 + v17[6], a3, v14);
  v16(a7 + v17[7], a4, v14);
  v16(a7 + v17[8], a5, v14);
  v18 = a7 + v17[9];

  return sub_23B4032D4(a6, v18);
}

uint64_t sub_23B4032D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnowfallAmount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PrecipitationAmountByType.hail.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t PrecipitationAmountByType.hail.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t PrecipitationAmountByType.mixed.getter()
{
  OUTLINED_FUNCTION_12_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.mixed.setter()
{
  OUTLINED_FUNCTION_9_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.rainfall.getter()
{
  OUTLINED_FUNCTION_12_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.rainfall.setter()
{
  OUTLINED_FUNCTION_9_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.sleet.getter()
{
  OUTLINED_FUNCTION_12_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_24();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.sleet.setter()
{
  OUTLINED_FUNCTION_9_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.precipitation.setter()
{
  OUTLINED_FUNCTION_9_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_64();

  return v1(v0);
}

uint64_t PrecipitationAmountByType.snowfallAmount.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_6() + 36);

  return sub_23B40387C(v0, v2);
}

uint64_t sub_23B40387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnowfallAmount(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static PrecipitationAmountByType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PrecipitationAmountByType(0);
  if ((OUTLINED_FUNCTION_4_2() & 1) == 0 || (OUTLINED_FUNCTION_4_2() & 1) == 0 || (OUTLINED_FUNCTION_4_2() & 1) == 0 || (OUTLINED_FUNCTION_4_2() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 36);

  return static SnowfallAmount.== infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t sub_23B403A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845544 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646578696DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C61666E696172 && a2 == 0xE800000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7465656C73 && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
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

uint64_t sub_23B403C04(char a1)
{
  result = 1818845544;
  switch(a1)
  {
    case 1:
      result = 0x646578696DLL;
      break;
    case 2:
      result = 0x6C6C61666E696172;
      break;
    case 3:
      result = 0x7465656C73;
      break;
    case 4:
      result = 0x7469706963657270;
      break;
    case 5:
      result = 0x6C6C6166776F6E73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B403CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B403A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B403CF0(uint64_t a1)
{
  v2 = sub_23B4047F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B403D2C(uint64_t a1)
{
  v2 = sub_23B4047F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationAmountByType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1323C0, &qword_23B510D38);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4047F4();
  sub_23B50D974();
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
  OUTLINED_FUNCTION_2_13(v3, &v25);
  if (!v2)
  {
    v11 = type metadata accessor for PrecipitationAmountByType(0);
    v12 = v11[5];
    v24 = 1;
    OUTLINED_FUNCTION_2_13(v3 + v12, &v24);
    v13 = v11[6];
    v23 = 2;
    OUTLINED_FUNCTION_2_13(v3 + v13, &v23);
    v14 = v11[7];
    v22 = 3;
    OUTLINED_FUNCTION_2_13(v3 + v14, &v22);
    v15 = v11[8];
    v21 = 4;
    OUTLINED_FUNCTION_2_13(v3 + v15, &v21);
    v20 = 5;
    type metadata accessor for SnowfallAmount(0);
    OUTLINED_FUNCTION_3_11();
    sub_23B4048EC(v16, v17, &protocol conformance descriptor for SnowfallAmount);
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t PrecipitationAmountByType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = type metadata accessor for SnowfallAmount(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v38 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v46 = v6;
  MEMORY[0x28223BE20](v7);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v42 = v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1323D8, &qword_23B510D40);
  OUTLINED_FUNCTION_5();
  v40 = v17;
  v41 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = v35 - v18;
  v43 = type metadata accessor for PrecipitationAmountByType(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v47 = v21;
  v22 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_23B4047F4();
  v23 = v44;
  sub_23B50D964();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v11;
  v53 = 0;
  v24 = sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v25 = v42;
  v42 = *(v46 + 32);
  (v42)(v47, v25, v5);
  v52 = 1;
  OUTLINED_FUNCTION_8_4();
  v35[1] = v24;
  sub_23B50D734();
  OUTLINED_FUNCTION_10_6();
  v26();
  v51 = 2;
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v35[0] = v5;
  OUTLINED_FUNCTION_10_6();
  v27();
  v50 = 3;
  OUTLINED_FUNCTION_8_4();
  sub_23B50D734();
  v28 = v47;
  OUTLINED_FUNCTION_10_6();
  v29();
  v49 = 4;
  v30 = v39;
  sub_23B50D734();
  (v42)(v28 + *(v43 + 32), v30, v5);
  v48 = 5;
  OUTLINED_FUNCTION_3_11();
  sub_23B4048EC(v31, v32, &protocol conformance descriptor for SnowfallAmount);
  v33 = v38;
  sub_23B50D734();
  (*(v40 + 8))(v19, v41);
  sub_23B4032D4(v33, v28 + *(v43 + 36));
  sub_23B3CA480(v28, v36, type metadata accessor for PrecipitationAmountByType);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_23B404848(v28);
}

uint64_t PrecipitationAmountByType.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  sub_23B3E38E8(&qword_280B42BC8, MEMORY[0x277CC87E0]);
  sub_23B50D0E4();
  type metadata accessor for PrecipitationAmountByType(0);
  sub_23B50D0E4();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_7();
  sub_23B50D0E4();
  type metadata accessor for SnowfallAmount(0);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_7();
  return OUTLINED_FUNCTION_1_7();
}

uint64_t PrecipitationAmountByType.hashValue.getter()
{
  sub_23B50D8C4();
  PrecipitationAmountByType.hash(into:)(v1);
  return sub_23B50D914();
}

uint64_t sub_23B4047B8(uint64_t a1)
{
  sub_23B50D8C4();
  PrecipitationAmountByType.hash(into:)(v2);
  return sub_23B50D914();
}

unint64_t sub_23B4047F4()
{
  result = qword_27E1323C8;
  if (!qword_27E1323C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323C8);
  }

  return result;
}

uint64_t sub_23B404848(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAmountByType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4048EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for PrecipitationAmountByType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B404A3C()
{
  result = qword_27E1323F0;
  if (!qword_27E1323F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323F0);
  }

  return result;
}

unint64_t sub_23B404A94()
{
  result = qword_27E1323F8;
  if (!qword_27E1323F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1323F8);
  }

  return result;
}

unint64_t sub_23B404AEC()
{
  result = qword_27E132400;
  if (!qword_27E132400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132400);
  }

  return result;
}

uint64_t WeatherServiceDailyRelativeRange.RelativeTo.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_23B50D664();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_23B404BB4()
{
  result = qword_27E132408;
  if (!qword_27E132408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132408);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceDailyRelativeRange.RelativeTo(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for WeatherServiceDailyRelativeRange.RelativeTo(_BYTE *result, int a2, int a3)
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

unint64_t sub_23B404E00()
{
  result = qword_27E132410;
  if (!qword_27E132410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132410);
  }

  return result;
}

WeatherKit::ApparentPrecipitationIntensity __swiftcall ApparentPrecipitationIntensity.init(value:category:)(Swift::Double value, WeatherKit::ApparentPrecipitationIntensityCategory category)
{
  v3 = *category;
  *v2 = value;
  *(v2 + 8) = v3;
  result.value = value;
  result.category = category;
  return result;
}

uint64_t sub_23B404ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
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

uint64_t sub_23B404F90(char a1)
{
  if (a1)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_23B404FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B404ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B404FF4(uint64_t a1)
{
  v2 = sub_23B405404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B405030(uint64_t a1)
{
  v2 = sub_23B405404();

  return MEMORY[0x2821FE720](a1, v2);
}

WeatherKit::ApparentPrecipitationIntensityCategory_optional __swiftcall ApparentPrecipitationIntensityCategory.init(rawValue:)(Swift::String rawValue)
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

uint64_t ApparentPrecipitationIntensityCategory.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_23B405174@<X0>(uint64_t *a1@<X8>)
{
  result = ApparentPrecipitationIntensityCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ApparentPrecipitationIntensity.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_23B3E71A0();
  }

  else
  {
    return 0;
  }
}

uint64_t ApparentPrecipitationIntensity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132418, &qword_23B5110B0);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B405404();
  sub_23B50D974();
  v12[15] = 0;
  sub_23B50D7C4();
  if (!v2)
  {
    v12[14] = v10;
    v12[13] = 1;
    sub_23B405458();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B405404()
{
  result = qword_27E132420;
  if (!qword_27E132420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132420);
  }

  return result;
}

unint64_t sub_23B405458()
{
  result = qword_27E132428;
  if (!qword_27E132428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132428);
  }

  return result;
}

uint64_t ApparentPrecipitationIntensity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132430, &qword_23B5110B8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B405404();
  sub_23B50D964();
  if (!v2)
  {
    v15[15] = 0;
    sub_23B50D704();
    v12 = v11;
    v15[13] = 1;
    sub_23B405668();
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    v13 = v15[14];
    *a2 = v12;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B405668()
{
  result = qword_27E132438;
  if (!qword_27E132438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132438);
  }

  return result;
}

uint64_t ApparentPrecipitationIntensity.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x23EE9DB70](*&v2);
  OUTLINED_FUNCTION_0_12();
  sub_23B50D1C4();
}

uint64_t ApparentPrecipitationIntensity.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x23EE9DB70](*&v2);
  OUTLINED_FUNCTION_0_12();
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B405838(uint64_t a1)
{
  v2 = *v1;
  sub_23B50D8C4();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x23EE9DB70](*&v3);
  sub_23B50D1C4();

  return sub_23B50D914();
}

unint64_t sub_23B4058F4()
{
  result = qword_27E132440;
  if (!qword_27E132440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132440);
  }

  return result;
}

unint64_t sub_23B40594C()
{
  result = qword_27E132448;
  if (!qword_27E132448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132450, &qword_23B5111B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132448);
  }

  return result;
}

unint64_t sub_23B4059B4()
{
  result = qword_27E132458;
  if (!qword_27E132458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132458);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ApparentPrecipitationIntensity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t storeEnumTagSinglePayload for ApparentPrecipitationIntensity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ApparentPrecipitationIntensityCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ApparentPrecipitationIntensity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B405C58()
{
  result = qword_27E132460;
  if (!qword_27E132460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132460);
  }

  return result;
}

unint64_t sub_23B405CB0()
{
  result = qword_27E132468;
  if (!qword_27E132468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132468);
  }

  return result;
}

unint64_t sub_23B405D08()
{
  result = qword_27E132470;
  if (!qword_27E132470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132470);
  }

  return result;
}

unint64_t sub_23B405D5C()
{
  result = qword_27E132478;
  if (!qword_27E132478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132478);
  }

  return result;
}

uint64_t Trend.init(baseline:currentValue:deviation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  type metadata accessor for TrendBaseline(0, a4, a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v10 + 32))(a5, a1);
  v13 = type metadata accessor for Trend(0, a4, v11, v12);
  v14 = *(v13 + 28);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  result = (*(v15 + 32))(a5 + v14, a2);
  *(a5 + *(v13 + 32)) = v9;
  return result;
}

uint64_t Trend.baseline.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for TrendBaseline(0, *(a1 + 16), a2, a3);
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 16);

  return v8(a4, v4, v6);
}

uint64_t Trend.baseline.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TrendBaseline(0, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_6();
  v8 = *(v7 + 40);

  return v8(v4, a1, v6);
}

uint64_t Trend.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t Trend.currentValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_23B50A9E4();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

BOOL static Trend.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static TrendBaseline.== infix(_:_:)(a1, a2, a3) & 1) != 0 && (OUTLINED_FUNCTION_6_3(), sub_23B50A9E4(), v5 = OUTLINED_FUNCTION_6_3(), v9 = type metadata accessor for Trend(v5, v6, v7, v8), swift_getWitnessTable(), (sub_23B50D134()))
  {
    return *(a1 + *(v9 + 32)) == *(a2 + *(v9 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B40614C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56746E6572727563 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F69746169766564 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_23B406268(char a1)
{
  if (!a1)
  {
    return 0x656E696C65736162;
  }

  if (a1 == 1)
  {
    return 0x56746E6572727563;
  }

  return 0x6F69746169766564;
}

uint64_t sub_23B4062F4(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B3DE0C0(v3, *v1);
  return sub_23B50D914();
}

uint64_t sub_23B406348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40614C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B406398@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E64C0();
  *a1 = result;
  return result;
}

uint64_t sub_23B4063C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B406418(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Trend.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v5 = *(a2 + 16);
  type metadata accessor for Trend.CodingKeys(255, v5, a3, a4);
  OUTLINED_FUNCTION_2_14();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v20;
  sub_23B50D974();
  v25 = 0;
  type metadata accessor for TrendBaseline(0, v5, v13, v14);
  swift_getWitnessTable();
  v15 = v21;
  sub_23B50D7F4();
  if (!v15)
  {
    v16 = v19;
    v24 = 1;
    sub_23B50A9E4();
    swift_getWitnessTable();
    sub_23B50D7F4();
    v23 = *(v12 + *(v16 + 32));
    v22 = 2;
    sub_23B406CBC();
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t Trend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  sub_23B50A9E4();
  OUTLINED_FUNCTION_5();
  v49 = v6;
  v50 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v48 = &v42 - v8;
  v9 = OUTLINED_FUNCTION_6_3();
  v51 = type metadata accessor for TrendBaseline(v9, v10, v11, v12);
  OUTLINED_FUNCTION_5();
  v46 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v52 = &v42 - v15;
  type metadata accessor for Trend.CodingKeys(255, a2, v16, v17);
  OUTLINED_FUNCTION_2_14();
  swift_getWitnessTable();
  v53 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v47 = v18;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v22 = OUTLINED_FUNCTION_6_3();
  v26 = type metadata accessor for Trend(v22, v23, v24, v25);
  OUTLINED_FUNCTION_5();
  v44 = v27;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v42 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v21;
  v31 = v55;
  sub_23B50D964();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v47;
  v32 = v48;
  v43 = v30;
  v55 = a1;
  v35 = v49;
  v34 = v50;
  v59 = 0;
  v36 = v51;
  swift_getWitnessTable();
  sub_23B50D734();
  (*(v46 + 32))(v43, v52, v36);
  v58 = 1;
  swift_getWitnessTable();
  sub_23B50D734();
  v52 = v26;
  v37 = *(v26 + 28);
  v38 = v43;
  (*(v35 + 32))(&v43[v37], v32, v34);
  v56 = 2;
  sub_23B406D10();
  sub_23B50D734();
  (*(v33 + 8))(v54, v53);
  v39 = v52;
  v38[*(v52 + 8)] = v57;
  v40 = v44;
  (*(v44 + 16))(v45, v38, v39);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v40 + 8))(v38, v39);
}

uint64_t Trend.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_7_11();
  v9 = type metadata accessor for TrendBaseline(v5, v6, v7, v8);
  TrendBaseline.hash(into:)(a1, v9);
  OUTLINED_FUNCTION_7_11();
  sub_23B50A9E4();
  swift_getWitnessTable();
  sub_23B50D0E4();
  return MEMORY[0x23EE9DB40](*(v2 + *(a2 + 32)));
}

uint64_t Trend.hashValue.getter(uint64_t a1)
{
  sub_23B50D8C4();
  Trend.hash(into:)(v3, a1);
  return sub_23B50D914();
}

uint64_t sub_23B406C60(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  Trend.hash(into:)(v4, a2);
  return sub_23B50D914();
}

unint64_t sub_23B406CBC()
{
  result = qword_27E132480;
  if (!qword_27E132480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132480);
  }

  return result;
}

unint64_t sub_23B406D10()
{
  result = qword_27E132488[0];
  if (!qword_27E132488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E132488);
  }

  return result;
}

_BYTE *sub_23B406DA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t HistoricalComparisons.init(comparisons:metadata:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for HistoricalComparisons(0);
  OUTLINED_FUNCTION_10_7();
  return sub_23B40939C();
}

uint64_t HistoricalComparisons.comparisons.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t HistoricalComparisons.metadata.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for HistoricalComparisons(v2) + 20);

  return sub_23B407020(v0, v3);
}

uint64_t sub_23B407020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*HistoricalComparisons.metadata.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HistoricalComparisons(v0);
  return GEOLocationCoordinate2DMake;
}

unint64_t HistoricalComparisons.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = type metadata accessor for HistoricalComparison(0);
    OUTLINED_FUNCTION_28_0(v3);
    OUTLINED_FUNCTION_5_7();
    return sub_23B40A6B8();
  }

  __break(1u);
  return result;
}

BOOL static HistoricalComparisons.== infix(_:_:)()
{
  OUTLINED_FUNCTION_220();
  sub_23B3DFDE8(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for HistoricalComparisons(0) + 20);

  return static WeatherMetadata.== infix(_:_:)(v1 + v5, v0 + v5);
}

uint64_t sub_23B4071E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B4072B4(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x73697261706D6F63;
  }
}

uint64_t sub_23B4072FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4071E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B407324(uint64_t a1)
{
  v2 = sub_23B407F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B407360(uint64_t a1)
{
  v2 = sub_23B407F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalComparisons.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132510, &qword_23B511690);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B407F04();
  sub_23B50D974();
  v15 = *v3;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132520, &qword_23B511698);
  sub_23B407F58(&unk_27E132528);
  OUTLINED_FUNCTION_40(&v15, &v14 + 7);
  if (!v2)
  {
    v11 = *(type metadata accessor for HistoricalComparisons(0) + 20);
    BYTE6(v14) = 1;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_11_4();
    sub_23B40A0F0(v12);
    OUTLINED_FUNCTION_40(v3 + v11, &v14 + 6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HistoricalComparisons.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132538, &qword_23B5116A0);
  OUTLINED_FUNCTION_5();
  v21 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  type metadata accessor for HistoricalComparisons(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = (v11 - v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B407F04();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v13 = v12;
  v14 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132520, &qword_23B511698);
  v25 = 0;
  sub_23B407F58(&unk_27E132540);
  v15 = v23;
  sub_23B50D734();
  v18[0] = v13;
  v18[1] = v26;
  *v13 = v26;
  v24 = 1;
  OUTLINED_FUNCTION_11_4();
  sub_23B40A0F0(v16);
  sub_23B50D734();
  (*(v14 + 8))(v8, v15);
  OUTLINED_FUNCTION_10_7();
  sub_23B40939C();
  sub_23B40A6B8();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_23B40A714();
}

uint64_t sub_23B4078D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23B410C20(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_23B4078FC(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_23B3D2640(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B407950@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalComparisons.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_23B407978(void **a1, unint64_t *a2))(void **a1)
{
  v4 = type metadata accessor for HistoricalComparison(0);
  *a1 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  HistoricalComparisons.subscript.getter(*a2);
  return sub_23B4079F8;
}

void sub_23B4079F8(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_3_12();
  sub_23B40A714();

  free(v1);
}

uint64_t sub_23B407A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B412A68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B407AA8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B412A5C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B407AD4(uint64_t *a1)
{
  v3 = *a1;
  result = sub_23B3D2640(*v1);
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t sub_23B407B20@<X0>(uint64_t a1@<X8>)
{
  sub_23B40939C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

BOOL HistoricalComparisons.hasDeviationsFromTrend.getter()
{
  v1 = type metadata accessor for HistoricalComparison(0);
  v2 = OUTLINED_FUNCTION_28_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  HistoricalComparisons.hasValidData.getter();
  if ((v3 & 1) != 0 && *(*v0 + 16))
  {
    OUTLINED_FUNCTION_5_7();
    sub_23B40A6B8();
    v4 = HistoricalComparison.isDeviatingFromTrend.getter();
    OUTLINED_FUNCTION_3_12();
    sub_23B40A714();
  }

  else
  {
    return 0;
  }

  return v4;
}

void HistoricalComparisons.hasValidData.getter()
{
  OUTLINED_FUNCTION_21();
  type metadata accessor for HistoricalComparison(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v4 = 0;
LABEL_3:
    v5 = v4;
    while (2)
    {
      if (v5 < *(v2 + 16))
      {
        v6 = v5 + 1;
        OUTLINED_FUNCTION_5_7();
        sub_23B40A6B8();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            OUTLINED_FUNCTION_3_12();
            sub_23B40A714();
            ++v5;
            if (v3 == v6)
            {
              goto LABEL_9;
            }

            continue;
          default:
            sub_23B40A714();
            v4 = v5 + 1;
            if (v3 - 1 == v5)
            {
              goto LABEL_9;
            }

            goto LABEL_3;
        }
      }

      break;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_20();
  }
}

void HistoricalComparisons.hash(into:)(uint64_t a1)
{
  sub_23B408824();
  type metadata accessor for HistoricalComparisons(0);
  WeatherMetadata.hash(into:)();
}

uint64_t HistoricalComparisons.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B408824();
  type metadata accessor for HistoricalComparisons(0);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B407EB0(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B408824();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B407F04()
{
  result = qword_27E132518;
  if (!qword_27E132518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132518);
  }

  return result;
}

unint64_t sub_23B407F58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132520, &qword_23B511698);
    sub_23B40A0F0(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B407FE0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_23B408004()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v39[2] = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v39 - v9;
  v11 = type metadata accessor for MinuteSummary(0);
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v18);
  if (v18)
  {
    v19 = v11[5];
    v43 = v11[6];
    v44 = v19;
    v20 = v11[7];
    v41 = v11[8];
    v42 = v20;
    v21 = (v17 + v11[9]);
    OUTLINED_FUNCTION_52_0();
    v23 = v1 + v22;
    v40 = *(v13 + 72);
    v39[0] = v4 + 8;
    v39[1] = v4 + 32;
    do
    {
      sub_23B40A6B8();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      sub_23B3C7DF4(v17 + v44, v10);
      OUTLINED_FUNCTION_22_3(v10);
      if (v24)
      {
        v29 = OUTLINED_FUNCTION_83();
      }

      else
      {
        v25 = OUTLINED_FUNCTION_20_5();
        v26(v25, v10, v2);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v27 = OUTLINED_FUNCTION_20_5();
        v29 = v28(v27, v2);
      }

      v30 = 1701736302;
      switch(*(v17 + v43))
      {
        case 1:
          v30 = 1818845544;
          break;
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 3:
          v30 = 1852399986;
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        case 5:
          v30 = 2003791475;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4(v29, v30);

      v32 = 1701736302;
      switch(*(v17 + v42))
      {
        case 1:
          v32 = 1818845544;
          break;
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 3:
          v32 = 1852399986;
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        case 5:
          v32 = 2003791475;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4(v31, v32);

      v33 = OUTLINED_FUNCTION_7_12(*(v17 + v41));
      MEMORY[0x23EE9DB70](v33);
      v34 = *(v21 + 8);
      if (v34 == 3)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v35 = *v21;
        OUTLINED_FUNCTION_84();
        if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v37 = MEMORY[0x23EE9DB70](v36);
        if (v34)
        {
          if (v34 == 1)
          {
            v38 = 0x6D756964656DLL;
          }

          else
          {
            v38 = 0x7976616568;
          }
        }

        else
        {
          OUTLINED_FUNCTION_39_3();
        }

        OUTLINED_FUNCTION_29_4(v37, v38);
      }

      sub_23B40A714();
      v23 += v40;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B4083F0()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_12_0();
  v49 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v41 - v7;
  MEMORY[0x28223BE20](v8);
  v47 = &v41 - v9;
  v10 = OUTLINED_FUNCTION_24_0();
  v11 = type metadata accessor for MinuteCondition(v10);
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = v16 - v15;
  v18 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v18);
  if (v18)
  {
    v19 = v11[5];
    v45 = v17 + v11[6];
    v46 = v19;
    v20 = v11[8];
    v44 = v17 + v11[7];
    v50 = v17 + v20;
    v21 = type metadata accessor for PrecipitationShift(0);
    v22 = *(v21 + 20);
    v42 = *(v21 + 24);
    v43 = v22;
    OUTLINED_FUNCTION_52_0();
    v24 = v1 + v23;
    v41 = *(v13 + 72);
    do
    {
      sub_23B40A6B8();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      v25 = v47;
      sub_23B3C7DF4(v17 + v46, v47);
      OUTLINED_FUNCTION_22_3(v25);
      if (v26)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v27 = OUTLINED_FUNCTION_14_6();
        v28(v27);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v29 = OUTLINED_FUNCTION_24_3();
        v30(v29);
      }

      sub_23B50D1C4();
      sub_23B50D1C4();
      v31 = v48;
      sub_23B3C7DF4(v50, v48);
      OUTLINED_FUNCTION_22_3(v31);
      if (v26)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v32 = OUTLINED_FUNCTION_14_6();
        v33(v32);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v34 = OUTLINED_FUNCTION_24_3();
        v35(v34);
      }

      v36 = v49;
      sub_23B3C7DF4(v50 + v43, v49);
      OUTLINED_FUNCTION_22_3(v36);
      if (v26)
      {
        OUTLINED_FUNCTION_83();
      }

      else
      {
        v37 = OUTLINED_FUNCTION_14_6();
        v38(v37);
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_16_3();
        sub_23B50D0E4();
        v39 = OUTLINED_FUNCTION_24_3();
        v40(v39);
      }

      MEMORY[0x23EE9DB40](*(v50 + v42));
      sub_23B40A714();
      v24 += v41;
      --v18;
    }

    while (v18);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B40879C()
{
  OUTLINED_FUNCTION_42_3();
  if (v0)
  {
    v2 = v1 + 48;
    do
    {
      sub_23B50D8F4();

      sub_23B50D1C4();

      v2 += 24;
      --v0;
    }

    while (v0);
  }
}

void sub_23B408824()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132230, &qword_23B510210);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v24 = v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132220, &unk_23B510200);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v22 = v7;
  v8 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for HistoricalComparison(v8);
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_0();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v14, v13);
  if (v14)
  {
    OUTLINED_FUNCTION_52_0();
    v16 = v1 + v15;
    v26 = *(v10 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B40A6B8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_23B40A768();
          MEMORY[0x23EE9DB40](1);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          OUTLINED_FUNCTION_43_3(v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          OUTLINED_FUNCTION_43_3(v3);
          MEMORY[0x23EE9DB40](*(v22 + *(v23 + 32)));
          v17 = v22;
          goto LABEL_9;
        case 2u:
          v18 = v24;
          sub_23B40A768();
          v19 = 2;
          goto LABEL_7;
        case 3u:
          v18 = v24;
          sub_23B40A768();
          v19 = 3;
LABEL_7:
          MEMORY[0x23EE9DB40](v19);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42BC8);
          OUTLINED_FUNCTION_43_3(v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132228, &unk_23B511AB0);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          OUTLINED_FUNCTION_43_3(v3);
          MEMORY[0x23EE9DB40](*(v18 + *(v25 + 32)));
          v17 = v18;
          v20 = &qword_27E132230;
          v21 = &qword_23B510210;
          break;
        default:
          sub_23B40A768();
          MEMORY[0x23EE9DB40](0);
          MEMORY[0x23EE9DB40](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          sub_23B50D0E4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132218, &qword_23B515890);
          sub_23B50AD24();
          OUTLINED_FUNCTION_0_13();
          sub_23B40A0F0(&qword_280B42B48);
          sub_23B50D0E4();
          sub_23B50D0E4();
          MEMORY[0x23EE9DB40](*(v22 + *(v23 + 32)));
          v17 = v22;
LABEL_9:
          v20 = &qword_27E132220;
          v21 = &unk_23B510200;
          break;
      }

      sub_23B398890(v17, v20, v21);
      OUTLINED_FUNCTION_3_12();
      sub_23B40A714();
      v16 += v26;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_20();
}

unint64_t sub_23B408E00()
{
  result = qword_27E132570;
  if (!qword_27E132570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132570);
  }

  return result;
}

unint64_t sub_23B408F70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132580, &qword_23B511728);
    sub_23B40A0F0(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B409074(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132568, &qword_23B511720);
    sub_23B408E00();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalComparisons.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B409298()
{
  result = qword_27E1325D0;
  if (!qword_27E1325D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325D0);
  }

  return result;
}

unint64_t sub_23B4092F0()
{
  result = qword_27E1325D8;
  if (!qword_27E1325D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325D8);
  }

  return result;
}

unint64_t sub_23B409348()
{
  result = qword_27E1325E0;
  if (!qword_27E1325E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325E0);
  }

  return result;
}

uint64_t sub_23B40939C()
{
  OUTLINED_FUNCTION_220();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void sub_23B4093F8()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for DayPartForecast(v3);
  v5 = OUTLINED_FUNCTION_28_0(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_27_3();
  v8 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v9 = 0;
    v16 = v2 + 32;
    do
    {
      v10 = (v16 + 16 * v9);
      v11 = v10[1];
      MEMORY[0x23EE9DB40](*v10);
      MEMORY[0x23EE9DB40](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {
        OUTLINED_FUNCTION_52_0();
        v14 = v11 + v13;

        v15 = *(v7 + 72);
        do
        {
          sub_23B40A6B8();
          DayPartForecast.hash(into:)(v0);
          sub_23B40A714();
          v14 += v15;
          --v12;
        }

        while (v12);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  OUTLINED_FUNCTION_20();
}

void sub_23B40957C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_3();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v6 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for HistoricalFact.Argument(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_0();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for HistoricalFact(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v14);
  v47 = v14;
  if (v14)
  {
    v45 = v0 + *(v12 + 40);
    type metadata accessor for WeatherMetadata(0);
    v15 = 0;
    OUTLINED_FUNCTION_52_0();
    v44 = v16[6];
    v42 = v16[8];
    v43 = v16[7];
    v46 = v0;
    do
    {
      v48 = v15;
      v17 = sub_23B40A6B8();
      if (*v0)
      {
        v18 = 0x7469706963657270;
      }

      else
      {
        v18 = 0x74617265706D6574;
      }

      OUTLINED_FUNCTION_29_4(v17, v18);

      if (*(v0 + 1))
      {
        if (*(v0 + 1) == 1)
        {
          v20 = 0x68746E6F6DLL;
        }

        else
        {
          v20 = 0x6B6165727473;
        }
      }

      else
      {
        v20 = 0x7961646F74;
      }

      OUTLINED_FUNCTION_29_4(v19, v20);

      sub_23B50D1C4();
      sub_23B50D1C4();
      sub_23B50D1C4();
      v21 = *(v0 + 56);
      MEMORY[0x23EE9DB40](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        OUTLINED_FUNCTION_52_0();
        v24 = v21 + v23;
        v26 = *(v25 + 72);
        v50 = v26;
        do
        {
          OUTLINED_FUNCTION_9_7();
          sub_23B40A6B8();
          sub_23B40A6B8();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v38 = OUTLINED_FUNCTION_34_4();
              v39(v38, v10, v49);
              MEMORY[0x23EE9DB40](1);
              OUTLINED_FUNCTION_6_2();
              sub_23B40A674(&qword_280B42B80);
              OUTLINED_FUNCTION_23_4();
              sub_23B50D0E4();
              v35 = OUTLINED_FUNCTION_34_4();
              v37 = v49;
              v26 = v50;
              goto LABEL_23;
            case 2u:
              v30 = OUTLINED_FUNCTION_20_5();
              v31(v30, v10, v3);
              v32 = 2;
              goto LABEL_21;
            case 3u:
              v33 = OUTLINED_FUNCTION_20_5();
              v34(v33, v10, v3);
              v32 = 3;
LABEL_21:
              MEMORY[0x23EE9DB40](v32);
              OUTLINED_FUNCTION_6_2();
              sub_23B40A674(&qword_280B42BC8);
              OUTLINED_FUNCTION_23_4();
              sub_23B50D0E4();
              v35 = OUTLINED_FUNCTION_20_5();
              v37 = v3;
LABEL_23:
              v36(v35, v37);
              break;
            case 4u:
              v28 = *v10;
              MEMORY[0x23EE9DB40](4);
              if (v28 == 0.0)
              {
                v29 = 0.0;
              }

              else
              {
                v29 = v28;
              }

              MEMORY[0x23EE9DB70](*&v29);
              sub_23B50D1C4();
              v26 = v50;

              break;
            default:
              v27 = *v10;
              MEMORY[0x23EE9DB40](0);
              MEMORY[0x23EE9DB40](*&v27);
              break;
          }

          OUTLINED_FUNCTION_8_5();
          sub_23B40A714();
          v24 += v26;
          --v22;
        }

        while (v22);
      }

      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      sub_23B50D0E4();
      sub_23B50D0E4();
      v40 = OUTLINED_FUNCTION_7_12(*(v45 + v44));
      MEMORY[0x23EE9DB70](v40);
      v41 = OUTLINED_FUNCTION_7_12(*(v45 + v43));
      MEMORY[0x23EE9DB70](v41);
      if (*(v45 + v42))
      {
        OUTLINED_FUNCTION_84();
        sub_23B42E190();
      }

      else
      {
        OUTLINED_FUNCTION_83();
      }

      v0 = v46;
      ++v15;
      sub_23B40A714();
    }

    while (v48 + 1 != v47);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B409BE4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v5 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for HistoricalFact.Argument(v5);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = *(v1 + 16);
  MEMORY[0x23EE9DB40](v14, v13);
  if (v14)
  {
    OUTLINED_FUNCTION_52_0();
    v16 = v1 + v15;
    v31 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_9_7();
      sub_23B40A6B8();
      sub_23B40A6B8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v28 = OUTLINED_FUNCTION_34_4();
          v29(v28, v11, v30);
          MEMORY[0x23EE9DB40](1);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42B80);
          OUTLINED_FUNCTION_23_4();
          sub_23B50D0E4();
          v25 = OUTLINED_FUNCTION_34_4();
          v27 = v30;
          goto LABEL_13;
        case 2u:
          v20 = OUTLINED_FUNCTION_20_5();
          v21(v20, v11, v2);
          v22 = 2;
          goto LABEL_11;
        case 3u:
          v23 = OUTLINED_FUNCTION_20_5();
          v24(v23, v11, v2);
          v22 = 3;
LABEL_11:
          MEMORY[0x23EE9DB40](v22);
          OUTLINED_FUNCTION_6_2();
          sub_23B40A674(&qword_280B42BC8);
          OUTLINED_FUNCTION_23_4();
          sub_23B50D0E4();
          v25 = OUTLINED_FUNCTION_20_5();
          v27 = v2;
LABEL_13:
          v26(v25, v27);
          break;
        case 4u:
          v18 = *v11;
          MEMORY[0x23EE9DB40](4);
          if (v18 == 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = v18;
          }

          MEMORY[0x23EE9DB70](*&v19);
          sub_23B50D1C4();

          break;
        default:
          v17 = *v11;
          MEMORY[0x23EE9DB40](0);
          MEMORY[0x23EE9DB40](*&v17);
          break;
      }

      OUTLINED_FUNCTION_8_5();
      sub_23B40A714();
      v16 += v31;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_26_3();
}

void sub_23B409FAC()
{
  OUTLINED_FUNCTION_42_3();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *(v2 - 1);
      v4 = v2[3];
      v6 = v2[4];
      v7 = v2[5];
      v5 = v2[7];

      sub_23B50D1C4();
      MEMORY[0x23EE9DB40](v3);
      sub_23B50D1C4();
      sub_23B50D8E4();
      if (v4)
      {
        sub_23B50D1C4();
      }

      MEMORY[0x23EE9DB40](v6);
      MEMORY[0x23EE9DB40](v7);
      sub_23B50D8E4();
      if (v5)
      {
        sub_23B50D1C4();
      }

      v2 += 11;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_23B40A0F0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_23B40A160()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for WeatherChange(v3);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v8 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v9 = v4[6];
    v15 = v4[5];
    v11 = v4[7];
    v10 = v4[8];
    OUTLINED_FUNCTION_52_0();
    v13 = v2 + v12;
    v14 = *(v6 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      OUTLINED_FUNCTION_23_4();
      sub_23B50D0E4();
      MEMORY[0x23EE9DB40](*(v0 + v15));
      MEMORY[0x23EE9DB40](*(v0 + v9));
      MEMORY[0x23EE9DB40](*(v0 + v11));
      MEMORY[0x23EE9DB40](*(v0 + v10));
      sub_23B40A714();
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_23B40A330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v8 = *(a2 + 16);
  result = MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v10 = a3(0);
    OUTLINED_FUNCTION_28_0(v10);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      result = a4(a1);
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_23B40A3EC()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MinuteWeather(v3);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_35_3();
  v8 = *(v2 + 16);
  MEMORY[0x23EE9DB40](v8);
  if (v8)
  {
    v9 = v0 + v4[8];
    OUTLINED_FUNCTION_52_0();
    v20 = v4[6];
    v21 = v4[5];
    v11 = v2 + v10;
    v12 = *(v6 + 72);
    do
    {
      sub_23B40A6B8();
      sub_23B50AD24();
      OUTLINED_FUNCTION_0_13();
      sub_23B40A0F0(&qword_280B42B48);
      OUTLINED_FUNCTION_23_4();
      v13 = sub_23B50D0E4();
      v14 = 1701736302;
      switch(*(v0 + v21))
      {
        case 1:
          v14 = 1818845544;
          break;
        case 2:
          OUTLINED_FUNCTION_17_3();
          break;
        case 3:
          v14 = 1852399986;
          break;
        case 4:
          OUTLINED_FUNCTION_18_5();
          break;
        case 5:
          v14 = 2003791475;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_29_4(v13, v14);

      v15 = OUTLINED_FUNCTION_7_12(*(v0 + v20));
      MEMORY[0x23EE9DB70](v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
      OUTLINED_FUNCTION_6_2();
      sub_23B40A674(&qword_280B42BE0);
      sub_23B50D0E4();
      v16 = *(v9 + 8);
      v17 = OUTLINED_FUNCTION_7_12(*v9);
      v18 = MEMORY[0x23EE9DB70](v17);
      if (v16)
      {
        if (v16 == 1)
        {
          v19 = 0x6D756964656DLL;
        }

        else
        {
          v19 = 0x7976616568;
        }
      }

      else
      {
        OUTLINED_FUNCTION_39_3();
      }

      OUTLINED_FUNCTION_29_4(v18, v19);

      sub_23B40A714();
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_26_3();
}

unint64_t sub_23B40A674(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B40A6B8()
{
  OUTLINED_FUNCTION_220();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B40A714()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_23B40A768()
{
  OUTLINED_FUNCTION_220();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t DayTemperatureStatistics.init(day:averageLowTemperature:averageHighTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DayTemperatureStatistics(0);
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 24)];

  return (v13)(v11, a3, v9);
}

uint64_t type metadata accessor for DayTemperatureStatistics(uint64_t a1)
{
  result = qword_27E132600;
  if (!qword_27E132600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DayTemperatureStatistics.averageLowTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureStatistics(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayTemperatureStatistics.averageLowTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t DayTemperatureStatistics.averageHighTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayTemperatureStatistics(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayTemperatureStatistics.averageHighTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_13() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t static DayTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0), type metadata accessor for DayTemperatureStatistics(0), sub_23B40B418(&qword_280B42B78, MEMORY[0x277CC87F0]), (sub_23B50D134() & 1) != 0))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B40AC5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000023B529C40 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000023B529C60 == a2)
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

uint64_t sub_23B40AD78(char a1)
{
  if (!a1)
  {
    return 7954788;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B40ADD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40AC5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40ADF8(uint64_t a1)
{
  v2 = sub_23B40B02C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40AE34(uint64_t a1)
{
  v2 = sub_23B40B02C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325E8, &qword_23B511AC8);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40B02C();
  sub_23B50D974();
  v17[1] = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v11 = type metadata accessor for DayTemperatureStatistics(0);
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

unint64_t sub_23B40B02C()
{
  result = qword_27E1325F0;
  if (!qword_27E1325F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1325F0);
  }

  return result;
}

uint64_t DayTemperatureStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325F8, &qword_23B511AD0);
  OUTLINED_FUNCTION_5();
  v36 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for DayTemperatureStatistics(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40B02C();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v18 = v17;
  v19 = v36;
  v20 = v37;
  v41 = 0;
  v21 = v38;
  v22 = sub_23B50D724();
  v31 = v18;
  *v18 = v22;
  v40 = 1;
  sub_23B40B418(&qword_27E132090, MEMORY[0x277CC87F8]);
  sub_23B50D734();
  v23 = *(v35 + 32);
  v30 = *(v14 + 20);
  v28 = v14;
  v29 = v23;
  v23(v31 + v30, v9, v20);
  v39 = 2;
  v24 = v34;
  sub_23B50D734();
  (*(v19 + 8))(v13, v21);
  v25 = v31;
  v29(v31 + *(v28 + 24), v24, v20);
  sub_23B40B468(v25, v33);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_23B40B4CC(v25);
}

uint64_t sub_23B40B418(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E131E30, &qword_23B511AC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B40B468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayTemperatureStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B40B4CC(uint64_t a1)
{
  v2 = type metadata accessor for DayTemperatureStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40B664()
{
  result = qword_27E132610;
  if (!qword_27E132610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132610);
  }

  return result;
}

unint64_t sub_23B40B6BC()
{
  result = qword_27E132618;
  if (!qword_27E132618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132618);
  }

  return result;
}

unint64_t sub_23B40B714()
{
  result = qword_27E132620;
  if (!qword_27E132620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132620);
  }

  return result;
}

uint64_t AirPollutant.init(kind:amount:displayUnit:)@<X0>(_BYTE *a1@<X0>, char *a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  v5 = type metadata accessor for AirPollutant(0);
  v6 = OUTLINED_FUNCTION_3_14();
  result = sub_23B3F1200(v6, v7);
  a3[*(v5 + 24)] = v4;
  return result;
}

uint64_t AirPollutant.amount.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirPollutant(v0);
  v1 = OUTLINED_FUNCTION_3_14();

  return sub_23B40B878(v1, v2);
}

uint64_t sub_23B40B878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPollutantMeasurement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*AirPollutant.amount.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirPollutant(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t AirPollutant.displayUnit.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AirPollutant(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AirPollutant.displayUnit.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AirPollutant(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*AirPollutant.displayUnit.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for AirPollutant(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t AirPollutant.init(name:amount:)@<X0>(_BYTE *a2@<X8>)
{
  sub_23B3B672C(&v7);
  *a2 = v7;
  v3 = type metadata accessor for AirPollutant(0);
  v4 = OUTLINED_FUNCTION_3_14();
  result = sub_23B3F1200(v4, v5);
  a2[*(v3 + 24)] = 0;
  return result;
}

uint64_t AirPollutant.init(kind:amount:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  v3 = type metadata accessor for AirPollutant(0);
  v4 = OUTLINED_FUNCTION_3_14();
  result = sub_23B3F1200(v4, v5);
  a2[*(v3 + 24)] = 0;
  return result;
}

uint64_t sub_23B40BA78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5579616C70736964 && a2 == 0xEB0000000074696ELL)
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

uint64_t sub_23B40BB88(char a1)
{
  if (!a1)
  {
    return 1684957547;
  }

  if (a1 == 1)
  {
    return 0x746E756F6D61;
  }

  return 0x5579616C70736964;
}

uint64_t sub_23B40BBDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6451312 && a2 == 0xE300000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172676F7263696DLL && a2 == 0xEF334D726550736DLL)
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

uint64_t sub_23B40BCAC(char a1)
{
  if (a1)
  {
    return 0x6172676F7263696DLL;
  }

  else
  {
    return 6451312;
  }
}

uint64_t sub_23B40BCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40BA78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40BD24(uint64_t a1)
{
  v2 = sub_23B40CE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BD60(uint64_t a1)
{
  v2 = sub_23B40CE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40BBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40BDCC(uint64_t a1)
{
  v2 = sub_23B40D0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BE08(uint64_t a1)
{
  v2 = sub_23B40D0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BE64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3E5F40();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23B40BE90(uint64_t a1)
{
  v2 = sub_23B40D120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BECC(uint64_t a1)
{
  v2 = sub_23B40D120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B40BF08(uint64_t a1)
{
  v2 = sub_23B40D174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40BF44(uint64_t a1)
{
  v2 = sub_23B40D174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AirPollutant.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v4 = type metadata accessor for AirPollutant(0);
    if (static AirPollutantMeasurement.== infix(_:_:)(&a1[*(v4 + 20)], &a2[*(v4 + 20)]))
    {
      v5 = a1[*(v4 + 24)] ^ a2[*(v4 + 24)] ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AirPollutant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132628, &qword_23B511CA0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40CE74();
  sub_23B50D974();
  v15[15] = *v3;
  v15[14] = 0;
  sub_23B40CEC8();
  sub_23B50D7F4();
  if (!v2)
  {
    v11 = type metadata accessor for AirPollutant(0);
    v15[13] = 1;
    type metadata accessor for AirPollutantMeasurement(0);
    OUTLINED_FUNCTION_1_8();
    sub_23B40D248(v12, v13, &protocol conformance descriptor for AirPollutantMeasurement);
    sub_23B50D7F4();
    v15[12] = v3[*(v11 + 24)];
    v15[11] = 2;
    sub_23B40CF1C();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AirPollutant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for AirPollutantMeasurement(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132638, &qword_23B511CA8);
  OUTLINED_FUNCTION_5();
  v23 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AirPollutant(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40CE74();
  v14 = v26;
  sub_23B50D964();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v15 = v23;
  v16 = v13;
  v30 = 0;
  sub_23B40CF70();
  v17 = v25;
  sub_23B50D734();
  *v16 = v31;
  v29 = 1;
  OUTLINED_FUNCTION_1_8();
  sub_23B40D248(v18, v19, &protocol conformance descriptor for AirPollutantMeasurement);
  sub_23B50D734();
  sub_23B3F1200(v5, &v16[*(v10 + 20)]);
  v27 = 2;
  sub_23B40CFC4();
  sub_23B50D734();
  (*(v15 + 8))(v9, v17);
  v16[*(v10 + 24)] = v28;
  sub_23B40D018(v16, v22, type metadata accessor for AirPollutant);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_23B40D078();
}

uint64_t AirPollutantUnit.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132658, &qword_23B511CB0);
  OUTLINED_FUNCTION_5();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132660, &qword_23B511CB8);
  OUTLINED_FUNCTION_5();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132668, &qword_23B511CC0);
  OUTLINED_FUNCTION_5();
  v14 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40D0CC();
  sub_23B50D974();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_23B40D120();
    v20 = v24;
    sub_23B50D764();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_23B40D174();
    sub_23B50D764();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

void AirPollutantUnit.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132688, &qword_23B511CC8);
  OUTLINED_FUNCTION_5();
  v41 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132690, &qword_23B511CD0);
  OUTLINED_FUNCTION_5();
  v40 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132698, &qword_23B511CD8);
  OUTLINED_FUNCTION_5();
  v43 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40D0CC();
  v17 = v45;
  sub_23B50D964();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_23B50D744();
  sub_23B40D1C8(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_23B50D5F4();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v35 = &type metadata for AirPollutantUnit;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_23B40D840(v22 + 1, v23 >> 1, v20, v21, v22, v23);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_23B40D120();
      v30 = v6;
      OUTLINED_FUNCTION_7_13(&type metadata for AirPollutantUnit.MicrogramsPerM3CodingKeys, &v48);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_23B40D174();
      v36 = v39;
      OUTLINED_FUNCTION_7_13(&type metadata for AirPollutantUnit.PpbCodingKeys, &v47);
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

uint64_t AirPollutant.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EE9DB40](*v1);
  v3 = type metadata accessor for AirPollutant(0);
  AirPollutantMeasurement.hash(into:)(a1);
  return MEMORY[0x23EE9DB40](v1[*(v3 + 24)]);
}

uint64_t AirPollutant.hashValue.getter()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](*v0);
  v1 = type metadata accessor for AirPollutant(0);
  AirPollutantMeasurement.hash(into:)(v3);
  MEMORY[0x23EE9DB40](v0[*(v1 + 24)]);
  return sub_23B50D914();
}

uint64_t sub_23B40CD88(uint64_t a1, uint64_t a2)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](*v2);
  AirPollutantMeasurement.hash(into:)(v5);
  MEMORY[0x23EE9DB40](v2[*(a2 + 24)]);
  return sub_23B50D914();
}

uint64_t AirPollutantUnit.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B40CE74()
{
  result = qword_280B425A8;
  if (!qword_280B425A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B425A8);
  }

  return result;
}

unint64_t sub_23B40CEC8()
{
  result = qword_280B423F0;
  if (!qword_280B423F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423F0);
  }

  return result;
}

unint64_t sub_23B40CF1C()
{
  result = qword_27E132630;
  if (!qword_27E132630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132630);
  }

  return result;
}

unint64_t sub_23B40CF70()
{
  result = qword_27E132640;
  if (!qword_27E132640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132640);
  }

  return result;
}

unint64_t sub_23B40CFC4()
{
  result = qword_27E132650;
  if (!qword_27E132650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132650);
  }

  return result;
}

uint64_t sub_23B40D018(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_23B40D078()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_23B40D0CC()
{
  result = qword_27E132670;
  if (!qword_27E132670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132670);
  }

  return result;
}

unint64_t sub_23B40D120()
{
  result = qword_27E132678;
  if (!qword_27E132678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132678);
  }

  return result;
}

unint64_t sub_23B40D174()
{
  result = qword_27E132680;
  if (!qword_27E132680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132680);
  }

  return result;
}

void sub_23B40D1C8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_8();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_23B40D248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B40D294()
{
  result = qword_27E1326B0;
  if (!qword_27E1326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326B0);
  }

  return result;
}

_BYTE *sub_23B40D2F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AirPollutant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40D4D4()
{
  result = qword_27E1326B8;
  if (!qword_27E1326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326B8);
  }

  return result;
}

unint64_t sub_23B40D52C()
{
  result = qword_27E1326C0;
  if (!qword_27E1326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326C0);
  }

  return result;
}

unint64_t sub_23B40D584()
{
  result = qword_27E1326C8;
  if (!qword_27E1326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326C8);
  }

  return result;
}

unint64_t sub_23B40D5DC()
{
  result = qword_27E1326D0;
  if (!qword_27E1326D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326D0);
  }

  return result;
}

unint64_t sub_23B40D634()
{
  result = qword_27E1326D8;
  if (!qword_27E1326D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326D8);
  }

  return result;
}

unint64_t sub_23B40D68C()
{
  result = qword_27E1326E0;
  if (!qword_27E1326E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326E0);
  }

  return result;
}

unint64_t sub_23B40D6E4()
{
  result = qword_27E1326E8;
  if (!qword_27E1326E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326E8);
  }

  return result;
}

unint64_t sub_23B40D73C()
{
  result = qword_27E1326F0;
  if (!qword_27E1326F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1326F0);
  }

  return result;
}

unint64_t sub_23B40D794()
{
  result = qword_280B42598;
  if (!qword_280B42598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42598);
  }

  return result;
}

unint64_t sub_23B40D7EC()
{
  result = qword_280B425A0;
  if (!qword_280B425A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B425A0);
  }

  return result;
}

uint64_t sub_23B40D840(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static WeatherChanges.mock(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_27();
  v16 = v15 - v14;
  sub_23B3C7DF4(a1, v9);
  OUTLINED_FUNCTION_21_0(v9);
  if (v17)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_21_0(v9);
    if (!v17)
    {
      sub_23B3CF54C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326F8, &qword_23B512250);
  v18 = *(type metadata accessor for WeatherChange(0) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23B510090;
  v22 = v21 + v20;
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllSteady(with:)(v6, v22);
  sub_23B3CF54C(v6);
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllIncreasing(with:)(v6, v22 + v19);
  sub_23B3CF54C(v6);
  sub_23B50AC94();
  OUTLINED_FUNCTION_1_9();
  static WeatherChange.mockAllDecreasing(with:)(v6, v22 + 2 * v19);
  sub_23B3CF54C(v6);
  v23 = type metadata accessor for WeatherChanges(0);
  static WeatherMetadata.mock()(&a2[*(v23 + 20)]);
  result = (*(v12 + 8))(v16, v10);
  *a2 = v21;
  return result;
}

int *sub_23B40DBAC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27();
  v14 = v13 - v12;
  sub_23B3C7DF4(a1, v3);
  OUTLINED_FUNCTION_21_0(v3);
  if (v15)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    OUTLINED_FUNCTION_21_0(v3);
    if (!v15)
    {
      sub_23B3CF54C(v3);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v3, v8);
  }

  (*(v10 + 32))(a3, v14, v8);
  result = type metadata accessor for WeatherChange(0);
  *(a3 + result[5]) = a2;
  *(a3 + result[6]) = a2;
  *(a3 + result[7]) = a2;
  *(a3 + result[8]) = a2;
  return result;
}

int *static WeatherChange.mockRandomDirections(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = v11 - v10;
  sub_23B3C7DF4(a1, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_23B50B9D4();
    sub_23B50B994();
    if (__swift_getEnumTagSinglePayload(v2, 1, v6) != 1)
    {
      sub_23B3CF54C(v2);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v2, v6);
  }

  (*(v8 + 16))(a2, v12, v6);
  v13 = sub_23B40DF14();
  v14 = sub_23B40DF14();
  v15 = sub_23B40DF14();
  v16 = sub_23B40DF14();
  (*(v8 + 8))(v12, v6);
  result = type metadata accessor for WeatherChange(0);
  *(a2 + result[5]) = v13;
  *(a2 + result[6]) = v14;
  *(a2 + result[7]) = v15;
  *(a2 + result[8]) = v16;
  return result;
}

unint64_t sub_23B40DF14()
{
  result = sub_23B40DF3C(3uLL);
  if (result >= 3)
  {
    return 2;
  }

  else
  {
    return result;
  }
}

unint64_t sub_23B40DF3C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EE9E270](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EE9E270](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

WeatherKit::ArticlePlacement __swiftcall ArticlePlacement.init(articles:location:)(Swift::OpaquePointer articles, WeatherKit::ArticlePlacementLocation location)
{
  v3 = location;
  v5 = v2;
  v73 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v56[-v7];
  v60 = type metadata accessor for Article(0);
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v56[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v65 = &v56[-v14];
  v15 = *v3;
  v16 = *(articles._rawValue + 2);
  if (v16)
  {
    v57 = v15;
    v59 = v5;
    v72 = MEMORY[0x277D84F90];
    sub_23B41AF1C(0, v16, 0);
    v17 = v72;
    v18 = *(v9 + 80);
    rawValue = articles._rawValue;
    v63 = (v18 + 32) & ~v18;
    v19 = articles._rawValue + v63;
    v62 = *(v9 + 72);
    do
    {
      sub_23B40EC00(v19, v12);
      if (sub_23B50D1D4() == 23 && (sub_23B50D214() & 1) != 0)
      {
        sub_23B40EC00(v12, v65);
      }

      else
      {
        v20 = v61;
        sub_23B50AD34();
        v21 = MEMORY[0x23EE9ADC0](v20, 16);
        v23 = v22;
        v24 = sub_23B50AB44();
        v64 = v19;
        v26 = v25;
        sub_23B40EC64(v21, v23);
        v70 = v24;
        v71 = v26;
        v68 = 47;
        v69 = 0xE100000000000000;
        v66 = 95;
        v67 = 0xE100000000000000;
        sub_23B3B6C10();
        v27 = OUTLINED_FUNCTION_1_10(&v68, &v66);
        v29 = v28;

        v70 = v27;
        v71 = v29;
        v68 = 43;
        v69 = 0xE100000000000000;
        v66 = 45;
        v67 = 0xE100000000000000;
        v30 = OUTLINED_FUNCTION_1_10(&v68, &v66);
        v32 = v31;

        v70 = 65;
        v71 = 0xE100000000000000;
        v33 = sub_23B40EB40(22, v30, v32);
        v34 = MEMORY[0x23EE9D420](v33);
        v36 = v35;

        MEMORY[0x23EE9D460](v34, v36);

        v37 = v16;
        v38 = v17;
        v39 = v70;
        v40 = v71;
        sub_23B40ECBC(v20);
        v41 = *(v12 + 2);
        v42 = v60;
        v43 = *(v60 + 24);
        v44 = sub_23B50ADC4();
        v45 = v65;
        (*(*(v44 - 8) + 16))(v65 + v43, &v12[v43], v44);
        v46 = v42[7];
        v48 = *&v12[v46];
        v47 = *&v12[v46 + 8];
        v49 = *&v12[v42[8]];
        v50 = *&v12[v42[9]];
        v51 = (v45 + v46);
        *v45 = v39;
        v45[1] = v40;
        v19 = v64;
        v17 = v38;
        v16 = v37;
        v45[2] = v41;
        *v51 = v48;
        v51[1] = v47;
        *(v45 + v42[8]) = v49;
        *(v45 + v42[9]) = v50;
      }

      sub_23B40ED24(v12);
      v72 = v17;
      v53 = *(v17 + 16);
      v52 = *(v17 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_23B41AF1C(v52 > 1, v53 + 1, 1);
        v17 = v72;
      }

      *(v17 + 16) = v53 + 1;
      v54 = v62;
      sub_23B40ED80(v65, v17 + v63 + v53 * v62);
      v19 += v54;
      --v16;
    }

    while (v16);

    v5 = v59;
    LOBYTE(v15) = v57;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  *v5 = v17;
  *(v5 + 8) = v15;
  result.location = v55;
  return result;
}

uint64_t ArticlePlacement.articles.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_23B40E4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6369747261 && a2 == 0xE800000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B40E5AC(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x73656C6369747261;
  }
}

uint64_t sub_23B40E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B40E4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B40E60C(uint64_t a1)
{
  v2 = sub_23B40EDE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40E648(uint64_t a1)
{
  v2 = sub_23B40EDE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static ArticlePlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_23B3DF86C();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_23B3E5838(v2, v3);
}

uint64_t ArticlePlacement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132700, &qword_23B512258);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40EDE4();

  sub_23B50D974();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132710, &qword_23B512260);
  sub_23B40EE8C(&qword_27E132718, &qword_27E132720, &protocol conformance descriptor for Article, MEMORY[0x277D83948]);
  sub_23B50D7F4();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_23B40EE38();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t ArticlePlacement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132730, &qword_23B512268);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B40EDE4();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132710, &qword_23B512260);
  v14[15] = 0;
  sub_23B40EE8C(&qword_27E132738, &qword_27E132740, &protocol conformance descriptor for Article, MEMORY[0x277D83978]);
  sub_23B50D734();
  v11 = v15;
  v14[13] = 1;
  sub_23B40EF58();
  sub_23B50D734();
  (*(v7 + 8))(v10, v5);
  v12 = v14[14];
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23B40EB40(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23B50D1E4();
    v3 = sub_23B50D234();

    return v3;
  }

  return result;
}

uint64_t sub_23B40EC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Article(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B40EC64(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_23B40ECBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1321E8, &qword_23B5101C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B40ED24(uint64_t a1)
{
  v2 = type metadata accessor for Article(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B40ED80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Article(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B40EDE4()
{
  result = qword_27E132708;
  if (!qword_27E132708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132708);
  }

  return result;
}

unint64_t sub_23B40EE38()
{
  result = qword_27E132728;
  if (!qword_27E132728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132728);
  }

  return result;
}

uint64_t sub_23B40EE8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132710, &qword_23B512260);
    sub_23B40EF14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B40EF14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Article(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B40EF58()
{
  result = qword_27E132748;
  if (!qword_27E132748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132748);
  }

  return result;
}

uint64_t sub_23B40EFAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_23B40EFEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArticlePlacement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B40F11C()
{
  result = qword_27E132750;
  if (!qword_27E132750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132750);
  }

  return result;
}

unint64_t sub_23B40F174()
{
  result = qword_27E132758;
  if (!qword_27E132758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132758);
  }

  return result;
}

unint64_t sub_23B40F1CC()
{
  result = qword_27E132760;
  if (!qword_27E132760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132760);
  }

  return result;
}

unint64_t sub_23B40F28C()
{
  result = qword_280B423C0;
  if (!qword_280B423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423C0);
  }

  return result;
}

unint64_t sub_23B40F2E4()
{
  result = qword_27E132768;
  if (!qword_27E132768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132768);
  }

  return result;
}

unint64_t sub_23B40F344()
{
  result = qword_280B423C8;
  if (!qword_280B423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423C8);
  }

  return result;
}

unint64_t sub_23B40F39C()
{
  result = qword_280B423B8;
  if (!qword_280B423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423B8);
  }

  return result;
}

WeatherKit::AvailableDataSets sub_23B40F484@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AvailableDataSets.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B40F4C4@<X0>(uint64_t *a1@<X8>)
{
  result = AvailableDataSets.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailableDataSets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AvailableDataSets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

WeatherKit::UVIndex __swiftcall UVIndex.init(value:category:)(Swift::Int value, WeatherKit::UVIndex::ExposureCategory category)
{
  *v2 = value;
  *(v2 + 8) = category;
  result.value = value;
  result.category = category;
  return result;
}

uint64_t UVIndex.ExposureCategory.description.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_2_15();
      return sub_23B50AAD4();
    case 2:
      if (qword_280B43260 != -1)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      OUTLINED_FUNCTION_5_9(0x482079726556);
      goto LABEL_11;
    case 4:
      if (qword_280B43260 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    default:
      if (qword_280B43260 == -1)
      {
        goto LABEL_7;
      }

LABEL_16:
      OUTLINED_FUNCTION_0_15();
      swift_once();
LABEL_7:
      OUTLINED_FUNCTION_1_11();
LABEL_11:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t UVIndex.ExposureCategory.accessibilityDescription.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_2_15();
      return sub_23B50AAD4();
    case 2:
      if (qword_280B43260 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      OUTLINED_FUNCTION_5_9(0x682079726576);
      goto LABEL_12;
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

      OUTLINED_FUNCTION_3_15();
      return sub_23B50AAD4();
    default:
      if (qword_280B43260 != -1)
      {
LABEL_17:
        OUTLINED_FUNCTION_0_15();
        swift_once();
      }

LABEL_3:
      OUTLINED_FUNCTION_1_11();
LABEL_12:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

WeatherKit::UVIndex::ExposureCategory_optional __swiftcall UVIndex.ExposureCategory.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23B50D664();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t UVIndex.ExposureCategory.rawValue.getter(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6574617265646F6DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6867694879726576;
      break;
    case 4:
      result = 0x656D6572747865;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::UVIndex::ExposureCategory_optional sub_23B40FBCC@<W0>(Swift::String *a1@<X0>, WeatherKit::UVIndex::ExposureCategory_optional *a2@<X8>)
{
  result.value = UVIndex.ExposureCategory.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_23B40FBFC@<X0>(uint64_t *a1@<X8>)
{
  result = UVIndex.ExposureCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23B40FD20(uint64_t a1)
{
  v2 = sub_23B410300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B40FD5C(uint64_t a1)
{
  v2 = sub_23B410300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static UVIndex.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    v3 = UVIndex.ExposureCategory.rawValue.getter(*(a1 + 8));
    v5 = v4;
    if (v3 == UVIndex.ExposureCategory.rawValue.getter(v2) && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_23B50D834();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t UVIndex.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132770, &qword_23B512660);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B410300();
  sub_23B50D974();
  v15 = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_23B410354();
    sub_23B50D7F4();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t UVIndex.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132778, &qword_23B512668);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B410300();
  sub_23B50D964();
  if (!v2)
  {
    v17 = 0;
    v11 = sub_23B50D724();
    v15 = 1;
    sub_23B4103A8();
    sub_23B50D734();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t UVIndex.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  MEMORY[0x23EE9DB40](*v1);
  UVIndex.ExposureCategory.rawValue.getter(v2);
  sub_23B50D1C4();
}

uint64_t UVIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  UVIndex.ExposureCategory.rawValue.getter(v2);
  sub_23B50D1C4();

  return sub_23B50D914();
}

uint64_t sub_23B410288(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v2);
  UVIndex.ExposureCategory.rawValue.getter(v3);
  sub_23B50D1C4();

  return sub_23B50D914();
}

unint64_t sub_23B410300()
{
  result = qword_280B41B48[0];
  if (!qword_280B41B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B41B48);
  }

  return result;
}

unint64_t sub_23B410354()
{
  result = qword_280B41B30;
  if (!qword_280B41B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B30);
  }

  return result;
}

unint64_t sub_23B4103A8()
{
  result = qword_27E132780;
  if (!qword_27E132780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132780);
  }

  return result;
}

unint64_t sub_23B4103FC()
{
  result = qword_27E132788;
  if (!qword_27E132788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132788);
  }

  return result;
}

unint64_t sub_23B410454()
{
  result = qword_27E132790;
  if (!qword_27E132790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132798, &qword_23B5127D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132790);
  }

  return result;
}

unint64_t sub_23B4104BC()
{
  result = qword_27E1327A0;
  if (!qword_27E1327A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UVIndex(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 5;
      v2 = v3 - 5;
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

uint64_t storeEnumTagSinglePayload for UVIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UVIndex.ExposureCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for UVIndex.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B41074C()
{
  result = qword_27E1327A8;
  if (!qword_27E1327A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327A8);
  }

  return result;
}

unint64_t sub_23B4107A4()
{
  result = qword_280B41B38;
  if (!qword_280B41B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B38);
  }

  return result;
}

unint64_t sub_23B4107FC()
{
  result = qword_280B41B40;
  if (!qword_280B41B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B40);
  }

  return result;
}

unint64_t sub_23B410850()
{
  result = qword_280B41B28;
  if (!qword_280B41B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B41B28);
  }

  return result;
}

uint64_t WeatherQueryHourlyRelativeRange.RelativeTo.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

WeatherKit::WeatherQueryHourlyRelativeRange __swiftcall WeatherQueryHourlyRelativeRange.init(start:end:relativeTo:)(Swift::Int start, Swift::Int end, WeatherKit::WeatherQueryHourlyRelativeRange::RelativeTo relativeTo)
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

unint64_t sub_23B410954()
{
  result = qword_27E1327B0;
  if (!qword_27E1327B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceHourlyRelativeRange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t storeEnumTagSinglePayload for WeatherServiceHourlyRelativeRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherQueryHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t WeatherChanges.init(changes:metadata:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_1_12();
  return sub_23B412944();
}

unint64_t sub_23B410B5C(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(*v2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B410B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v7 <= 0 && v7 > a2)
    {
      return 0;
    }
  }

  else if ((v7 & 0x8000000000000000) == 0 && v7 < a2)
  {
    return 0;
  }

  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > *(*v4 + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t sub_23B410C24(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >= *(*v1 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_23B410C70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a6@<X8>)
{
  if (result < 0 || *(*v6 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = sub_23B4129A0();
    *a6 = v9;
    a6[1] = a2;
  }

  return result;
}

void *sub_23B410CE8()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherChanges(0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_23B440584();
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = sub_23B3A5CB8(v6, 0, &qword_27E1326F8, &qword_23B512250, type metadata accessor for WeatherChange);
  v9 = *(type metadata accessor for WeatherChange(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_23B4129A0();
  v11 = sub_23B4120B4(v5, v8 + v10, v7);
  sub_23B398890(v5, &qword_27E132838, &qword_23B512D08);
  if (v11 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  sub_23B4129FC(v1, type metadata accessor for WeatherChanges);
  return v8;
}

void *sub_23B410EB0()
{
  v1 = v0;
  v2 = type metadata accessor for HistoricalComparisons(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_27();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_23B440584();
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  OUTLINED_FUNCTION_5_10();
  v12 = sub_23B3A5CB8(v8, 0, v9, v10, v11);
  v13 = *(type metadata accessor for HistoricalComparison(0) - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  sub_23B4129A0();
  v15 = sub_23B412280(v5, v12 + v14, v7);
  sub_23B398890(v5, &qword_27E1325C0, &qword_23B5118C0);
  if (v15 != v7)
  {
    __break(1u);
LABEL_4:
    v12 = MEMORY[0x277D84F90];
  }

  sub_23B4129FC(v1, type metadata accessor for HistoricalComparisons);
  return v12;
}

uint64_t WeatherChanges.changes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WeatherChanges.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WeatherChanges(0) + 20);

  return sub_23B407020(a1, v3);
}

unint64_t WeatherChanges.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    type metadata accessor for WeatherChange(0);
    return sub_23B4129A0();
  }

  __break(1u);
  return result;
}

uint64_t sub_23B411260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365676E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_23B411328(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x7365676E616863;
  }
}

uint64_t sub_23B411368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B411260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B411390(uint64_t a1)
{
  v2 = sub_23B411EC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4113CC(uint64_t a1)
{
  v2 = sub_23B411EC0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23B411408@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B410C24(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_23B411434(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = sub_23B40A7CC(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23B411488@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherChanges.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_23B4114B0(void **a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = type metadata accessor for WeatherChange(0);
  *a1 = __swift_coroFrameAllocStub(*(*(v4 - 8) + 64));
  WeatherChanges.subscript.getter(*a2);
  return sub_23B411530;
}

void sub_23B411530(uint64_t *a1)
{
  v1 = *a1;
  sub_23B4129FC(*a1, type metadata accessor for WeatherChange);

  free(v1);
}

uint64_t sub_23B4115C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23B3D2984();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_23B411614@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_23B3D29BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B411640(uint64_t *a1)
{
  v3 = *a1;
  result = sub_23B40A7CC(*v1);
  if (v3 < 0 || v3 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3 + 1;
  }

  return result;
}

uint64_t sub_23B41168C@<X0>(uint64_t a1@<X8>)
{
  sub_23B412944();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t WeatherChanges.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327B8, &qword_23B512B58);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B411EC0();
  sub_23B50D974();
  v15 = *v3;
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327C8, &qword_23B512B60);
  sub_23B411F14(&unk_27E1327D0);
  OUTLINED_FUNCTION_40(&v15, &v14 + 7);
  if (!v2)
  {
    v11 = *(type metadata accessor for WeatherChanges(0) + 20);
    BYTE6(v14) = 1;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_2_16();
    sub_23B41271C(v12);
    OUTLINED_FUNCTION_40(v3 + v11, &v14 + 6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t WeatherChanges.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327D8, &qword_23B512B68);
  OUTLINED_FUNCTION_5();
  v22 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  type metadata accessor for WeatherChanges(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v12 = (v11 - v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B411EC0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v13 = v12;
  v14 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1327C8, &qword_23B512B60);
  v26 = 0;
  sub_23B411F14(&unk_27E1327E0);
  v15 = v24;
  sub_23B50D734();
  v19[0] = v13;
  v19[1] = v27;
  *v13 = v27;
  v25 = 1;
  OUTLINED_FUNCTION_2_16();
  sub_23B41271C(v16);
  sub_23B50D734();
  (*(v14 + 8))(v8, v15);
  OUTLINED_FUNCTION_1_12();
  v17 = v19[0];
  sub_23B412944();
  sub_23B4129A0();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_23B4129FC(v17, type metadata accessor for WeatherChanges);
}

uint64_t WeatherChanges.isExpired.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for WeatherChanges(0);
  type metadata accessor for WeatherMetadata(0);
  sub_23B41271C(&qword_280B43110);
  v7 = sub_23B50D114();
  (*(v2 + 8))(v6, v0);
  return v7 & 1;
}

void WeatherChanges.hash(into:)(uint64_t a1)
{
  sub_23B40A160();
  type metadata accessor for WeatherChanges(0);
  WeatherMetadata.hash(into:)();
}

uint64_t WeatherChanges.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B40A160();
  type metadata accessor for WeatherChanges(0);
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B411E6C(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B40A160();
  WeatherMetadata.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B411EC0()
{
  result = qword_27E1327C0;
  if (!qword_27E1327C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1327C0);
  }

  return result;
}

unint64_t sub_23B411F14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1327C8, &qword_23B512B60);
    sub_23B41271C(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_23B4120B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132838, &qword_23B512D08);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  result = sub_23B412944();
  v11 = *(v7 + 44);
  *&v9[v11] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    sub_23B40A768();
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16[1] = a1;
    v12 = 0;
    v13 = *v9;
    v14 = *(*v9 + 16);
    while (1)
    {
      if (v14 == v12)
      {
        a3 = v14;
        goto LABEL_11;
      }

      if (v12 >= *(v13 + 16))
      {
        break;
      }

      v15 = *(*(type metadata accessor for WeatherChange(0) - 8) + 72);
      *&v9[v11] = v12 + 1;
      result = sub_23B4129A0();
      if (a3 - 1 == v12)
      {
        goto LABEL_11;
      }

      a2 += v15;
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23B412280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1325C0, &qword_23B5118C0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  result = sub_23B412944();
  v11 = *(v7 + 44);
  *&v9[v11] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    sub_23B40A768();
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16[1] = a1;
    v12 = 0;
    v13 = *v9;
    v14 = *(*v9 + 16);
    while (1)
    {
      if (v14 == v12)
      {
        a3 = v14;
        goto LABEL_11;
      }

      if (v12 >= *(v13 + 16))
      {
        break;
      }

      v15 = *(*(type metadata accessor for HistoricalComparison(0) - 8) + 72);
      *&v9[v11] = v12 + 1;
      result = sub_23B4129A0();
      if (a3 - 1 == v12)
      {
        goto LABEL_11;
      }

      a2 += v15;
      ++v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23B41257C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E132800, &qword_23B512B70);
    sub_23B41271C(v4);
    result = OUTLINED_FUNCTION_41();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23B41271C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_43(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherChanges.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B412840()
{
  result = qword_27E132848;
  if (!qword_27E132848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132848);
  }

  return result;
}

unint64_t sub_23B412898()
{
  result = qword_27E132850;
  if (!qword_27E132850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132850);
  }

  return result;
}

unint64_t sub_23B4128F0()
{
  result = qword_27E132858;
  if (!qword_27E132858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132858);
  }

  return result;
}

uint64_t sub_23B412944()
{
  OUTLINED_FUNCTION_220();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_23B4129A0()
{
  OUTLINED_FUNCTION_220();
  v2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_23B4129FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t static SunEvents.mock()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v40 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v42 = &v40 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v43 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v44 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v45 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v46 = &v40 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v47 = &v40 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  v49 = &v40 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v40 - v28;
  v48 = &v40 - v28;
  sub_23B50AD24();
  OUTLINED_FUNCTION_0_16(v29);
  OUTLINED_FUNCTION_0_16(v26);
  OUTLINED_FUNCTION_0_16(v23);
  OUTLINED_FUNCTION_0_16(v20);
  OUTLINED_FUNCTION_0_16(v17);
  OUTLINED_FUNCTION_0_16(v14);
  OUTLINED_FUNCTION_0_16(v11);
  OUTLINED_FUNCTION_0_16(v8);
  OUTLINED_FUNCTION_0_16(v50);
  OUTLINED_FUNCTION_0_16(v51);
  OUTLINED_FUNCTION_0_16(a1);
  v30 = type metadata accessor for SunEvents(0);
  v41 = v30[5];
  OUTLINED_FUNCTION_0_16(a1 + v41);
  v31 = v30[6];
  OUTLINED_FUNCTION_0_16(a1 + v31);
  v32 = v30[7];
  OUTLINED_FUNCTION_0_16(a1 + v32);
  v33 = v30[8];
  OUTLINED_FUNCTION_0_16(a1 + v33);
  v34 = v30[9];
  OUTLINED_FUNCTION_0_16(a1 + v34);
  v35 = v30[10];
  OUTLINED_FUNCTION_0_16(a1 + v35);
  v36 = v30[11];
  OUTLINED_FUNCTION_0_16(a1 + v36);
  v37 = v30[12];
  OUTLINED_FUNCTION_0_16(a1 + v37);
  v38 = v30[13];
  OUTLINED_FUNCTION_0_16(a1 + v38);
  sub_23B3CF890(v48, a1);
  sub_23B3CF890(v49, a1 + v41);
  sub_23B3CF890(v47, a1 + v31);
  sub_23B3CF890(v46, a1 + v32);
  sub_23B3CF890(v45, a1 + v33);
  sub_23B3CF890(v44, a1 + v34);
  sub_23B3CF890(v43, a1 + v35);
  sub_23B3CF890(v42, a1 + v36);
  sub_23B3CF890(v50, a1 + v37);
  return sub_23B3CF890(v51, a1 + v38);
}

uint64_t sub_23B412DA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70326D70 && a2 == 0xE900000000000035;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 808545648 && a2 == 0xE400000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 13167 && a2 == 0xE200000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F7A6FLL && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 28526 && a2 == 0xE200000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 3305326 && a2 == 0xE300000000000000;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7892846 && a2 == 0xE300000000000000;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 3305331 && a2 == 0xE300000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 28515 && a2 == 0xE200000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1667788142 && a2 == 0xE400000000000000;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7363686D6ELL && a2 == 0xE500000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 3369070 && a2 == 0xE300000000000000;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 912799331 && a2 == 0xE400000000000000;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7565940 && a2 == 0xE300000000000000;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_23B50D834();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_23B413200(char a1)
{
  result = 0x746E696F70326D70;
  switch(a1)
  {
    case 1:
      result = 808545648;
      break;
    case 2:
      result = 13167;
      break;
    case 3:
      result = 0x656E6F7A6FLL;
      break;
    case 4:
      result = 28526;
      break;
    case 5:
      result = 3305326;
      break;
    case 6:
      result = 7892846;
      break;
    case 7:
      result = 3305331;
      break;
    case 8:
      result = 28515;
      break;
    case 9:
      result = 1667788142;
      break;
    case 10:
      result = 0x7363686D6ELL;
      break;
    case 11:
      result = 3369070;
      break;
    case 12:
      result = 912799331;
      break;
    case 13:
      result = 7565940;
      break;
    case 14:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B413328(uint64_t a1)
{
  v2 = sub_23B41470C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413364(uint64_t a1)
{
  v2 = sub_23B41470C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4133A0(uint64_t a1)
{
  v2 = sub_23B41485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4133DC(uint64_t a1)
{
  v2 = sub_23B41485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B412DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B413448@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4131F8();
  *a1 = result;
  return result;
}

uint64_t sub_23B413470(uint64_t a1)
{
  v2 = sub_23B414610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4134AC(uint64_t a1)
{
  v2 = sub_23B414610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4134E8(uint64_t a1)
{
  v2 = sub_23B414760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413524(uint64_t a1)
{
  v2 = sub_23B414760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413560(uint64_t a1)
{
  v2 = sub_23B414808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41359C(uint64_t a1)
{
  v2 = sub_23B414808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4135D8(uint64_t a1)
{
  v2 = sub_23B4147B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413614(uint64_t a1)
{
  v2 = sub_23B4147B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413650(uint64_t a1)
{
  v2 = sub_23B414958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41368C(uint64_t a1)
{
  v2 = sub_23B414958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4136C8(uint64_t a1)
{
  v2 = sub_23B4149AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413704(uint64_t a1)
{
  v2 = sub_23B4149AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413740(uint64_t a1)
{
  v2 = sub_23B414904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41377C(uint64_t a1)
{
  v2 = sub_23B414904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4137B8(uint64_t a1)
{
  v2 = sub_23B414A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4137F4(uint64_t a1)
{
  v2 = sub_23B414A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413830(uint64_t a1)
{
  v2 = sub_23B414A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41386C(uint64_t a1)
{
  v2 = sub_23B414A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4138A8(uint64_t a1)
{
  v2 = sub_23B414AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4138E4(uint64_t a1)
{
  v2 = sub_23B414AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413920(uint64_t a1)
{
  v2 = sub_23B414AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B41395C(uint64_t a1)
{
  v2 = sub_23B414AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413998(uint64_t a1)
{
  v2 = sub_23B4148B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4139D4(uint64_t a1)
{
  v2 = sub_23B4148B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413A10(uint64_t a1)
{
  v2 = sub_23B4146B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413A4C(uint64_t a1)
{
  v2 = sub_23B4146B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B413A88(uint64_t a1)
{
  v2 = sub_23B414664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B413AC4(uint64_t a1)
{
  v2 = sub_23B414664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AirPollutantKind.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328A0, &qword_23B512FB0);
  OUTLINED_FUNCTION_5();
  v99 = v6;
  v100 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_52();
  v98 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328A8, &qword_23B512FB8);
  OUTLINED_FUNCTION_5();
  v96 = v10;
  v97 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52();
  v95 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328B0, &qword_23B512FC0);
  OUTLINED_FUNCTION_5();
  v93 = v14;
  v94 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52();
  v92 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328B8, &qword_23B512FC8);
  OUTLINED_FUNCTION_5();
  v90 = v18;
  v91 = v17;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52();
  v89 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328C0, &qword_23B512FD0);
  OUTLINED_FUNCTION_5();
  v87 = v22;
  v88 = v21;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_52();
  v86 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328C8, &qword_23B512FD8);
  OUTLINED_FUNCTION_5();
  v84 = v26;
  v85 = v25;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328D0, &qword_23B512FE0);
  OUTLINED_FUNCTION_2_0(v29, &v121);
  v83[23] = v30;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328D8, &qword_23B512FE8);
  OUTLINED_FUNCTION_2_0(v33, &v120);
  v83[20] = v34;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328E0, &qword_23B512FF0);
  OUTLINED_FUNCTION_2_0(v37, &v119);
  v83[17] = v38;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328E8, &qword_23B512FF8);
  OUTLINED_FUNCTION_2_0(v41, v110);
  v83[14] = v42;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328F0, &qword_23B513000);
  OUTLINED_FUNCTION_2_0(v45, &v102);
  v83[11] = v46;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1328F8, &qword_23B513008);
  OUTLINED_FUNCTION_2_0(v49, &v99);
  v83[8] = v50;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132900, &qword_23B513010);
  OUTLINED_FUNCTION_2_0(v53, &v96);
  v83[5] = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132908, &qword_23B513018);
  OUTLINED_FUNCTION_2_0(v57, &v93);
  v83[2] = v58;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  v61 = v83 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132910, &qword_23B513020);
  OUTLINED_FUNCTION_5();
  v83[1] = v63;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v64);
  v66 = v83 - v65;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132918, &qword_23B513028);
  OUTLINED_FUNCTION_5();
  v68 = v67;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_13();
  v70 = *v3;
  v71 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B414610();
  v101 = v2;
  sub_23B50D974();
  v72 = (v68 + 8);
  switch(v70)
  {
    case 1:
      v104 = 1;
      sub_23B414AA8();
      v71 = v101;
      v62 = v102;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1();
      v80 = v61;
      v82 = &v93;
      goto LABEL_18;
    case 2:
      v105 = 2;
      sub_23B414A54();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.O3CodingKeys, &v105);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v96;
      goto LABEL_18;
    case 3:
      v106 = 3;
      sub_23B414A00();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.OzoneCodingKeys, &v106);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v99;
      goto LABEL_18;
    case 4:
      v107 = 4;
      sub_23B4149AC();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.NoCodingKeys, &v107);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v102;
      goto LABEL_18;
    case 5:
      v108 = 5;
      sub_23B414958();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.No2CodingKeys, &v108);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = v110;
      goto LABEL_18;
    case 6:
      v109 = 6;
      sub_23B414904();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.NoxCodingKeys, &v109);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v119;
      goto LABEL_18;
    case 7:
      v111 = 7;
      sub_23B4148B0();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.So2CodingKeys, &v111);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v120;
      goto LABEL_18;
    case 8:
      v112 = 8;
      sub_23B41485C();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.CoCodingKeys, &v112);
      v80 = OUTLINED_FUNCTION_7_15();
      v82 = &v121;
LABEL_18:
      v81(v80, *(v82 - 32));
      goto LABEL_19;
    case 9:
      v113 = 9;
      sub_23B414808();
      OUTLINED_FUNCTION_3_16(&type metadata for AirPollutantKind.NmhcCodingKeys, &v113);
      v79 = v84;
      v78 = v85;
      goto LABEL_16;
    case 10:
      v114 = 10;
      sub_23B4147B4();
      v66 = v86;
      OUTLINED_FUNCTION_6_4(&type metadata for AirPollutantKind.NmhcsCodingKeys, &v114);
      v79 = v87;
      v78 = v88;
      goto LABEL_16;
    case 11:
      v115 = 11;
      sub_23B414760();
      v66 = v89;
      OUTLINED_FUNCTION_6_4(&type metadata for AirPollutantKind.Nh3CodingKeys, &v115);
      v79 = v90;
      v78 = v91;
      goto LABEL_16;
    case 12:
      v116 = 12;
      sub_23B41470C();
      v66 = v92;
      OUTLINED_FUNCTION_6_4(&type metadata for AirPollutantKind.C6h6CodingKeys, &v116);
      v79 = v93;
      v78 = v94;
      goto LABEL_16;
    case 13:
      v117 = 13;
      sub_23B4146B8();
      v66 = v95;
      OUTLINED_FUNCTION_6_4(&type metadata for AirPollutantKind.TrsCodingKeys, &v117);
      v79 = v96;
      v78 = v97;
      goto LABEL_16;
    case 14:
      v118 = 14;
      sub_23B414664();
      v66 = v98;
      OUTLINED_FUNCTION_6_4(&type metadata for AirPollutantKind.UnknownCodingKeys, &v118);
      v79 = v99;
      v78 = v100;
LABEL_16:
      (*(v79 + 8))(v66, v78);
LABEL_19:
      result = (*v72)(v71, v62);
      break;
    default:
      v103 = 0;
      sub_23B414AFC();
      v73 = v101;
      v74 = v102;
      sub_23B50D764();
      v75 = OUTLINED_FUNCTION_7_15();
      v76(v75, v62);
      result = (*v72)(v73, v74);
      break;
  }

  return result;
}

unint64_t sub_23B414610()
{
  result = qword_280B42528;
  if (!qword_280B42528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42528);
  }

  return result;
}

unint64_t sub_23B414664()
{
  result = qword_27E132920;
  if (!qword_27E132920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132920);
  }

  return result;
}

unint64_t sub_23B4146B8()
{
  result = qword_27E132928;
  if (!qword_27E132928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132928);
  }

  return result;
}

unint64_t sub_23B41470C()
{
  result = qword_27E132930;
  if (!qword_27E132930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132930);
  }

  return result;
}

unint64_t sub_23B414760()
{
  result = qword_27E132938;
  if (!qword_27E132938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132938);
  }

  return result;
}

unint64_t sub_23B4147B4()
{
  result = qword_27E132940;
  if (!qword_27E132940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132940);
  }

  return result;
}

unint64_t sub_23B414808()
{
  result = qword_27E132948;
  if (!qword_27E132948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132948);
  }

  return result;
}

unint64_t sub_23B41485C()
{
  result = qword_280B42510;
  if (!qword_280B42510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42510);
  }

  return result;
}

unint64_t sub_23B4148B0()
{
  result = qword_280B424A0;
  if (!qword_280B424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424A0);
  }

  return result;
}

unint64_t sub_23B414904()
{
  result = qword_27E132950;
  if (!qword_27E132950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132950);
  }

  return result;
}

unint64_t sub_23B414958()
{
  result = qword_280B424C8;
  if (!qword_280B424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424C8);
  }

  return result;
}

unint64_t sub_23B4149AC()
{
  result = qword_27E132958;
  if (!qword_27E132958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132958);
  }

  return result;
}

unint64_t sub_23B414A00()
{
  result = qword_280B42430;
  if (!qword_280B42430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42430);
  }

  return result;
}

unint64_t sub_23B414A54()
{
  result = qword_27E132960;
  if (!qword_27E132960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132960);
  }

  return result;
}

unint64_t sub_23B414AA8()
{
  result = qword_280B42458;
  if (!qword_280B42458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42458);
  }

  return result;
}

unint64_t sub_23B414AFC()
{
  result = qword_280B42408;
  if (!qword_280B42408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42408);
  }

  return result;
}

uint64_t AirPollutantKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132968, &qword_23B513030);
  OUTLINED_FUNCTION_5();
  v117 = v5;
  v118 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v127 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132970, &qword_23B513038);
  OUTLINED_FUNCTION_5();
  v115 = v9;
  v116 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v126 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132978, &qword_23B513040);
  OUTLINED_FUNCTION_2_0(v12, &v152);
  v114 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v125 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132980, &qword_23B513048);
  OUTLINED_FUNCTION_2_0(v16, &v151);
  v113 = v17;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v124[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132988, &qword_23B513050);
  OUTLINED_FUNCTION_2_0(v20, &v150);
  v112 = v21;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_52();
  v124[0] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132990, &qword_23B513058);
  OUTLINED_FUNCTION_2_0(v24, &v149);
  v111 = v25;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_52();
  v123 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132998, &qword_23B513060);
  OUTLINED_FUNCTION_2_0(v28, &v141);
  v110 = v29;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_52();
  v130 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329A0, &qword_23B513068);
  OUTLINED_FUNCTION_2_0(v32, v140);
  v109 = v33;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_52();
  v122 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329A8, &qword_23B513070);
  OUTLINED_FUNCTION_2_0(v36, &v132);
  v108 = v37;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_52();
  v129 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329B0, &qword_23B513078);
  OUTLINED_FUNCTION_2_0(v40, &v129);
  v107 = v41;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_52();
  v121 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329B8, &qword_23B513080);
  OUTLINED_FUNCTION_2_0(v44, &v126);
  v106 = v45;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_52();
  v120 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329C0, &qword_23B513088);
  OUTLINED_FUNCTION_2_0(v48, v128);
  v105 = v49;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_52();
  v128[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329C8, &qword_23B513090);
  OUTLINED_FUNCTION_2_0(v52, &v125);
  v104 = v53;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_52();
  v119 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329D0, &qword_23B513098);
  OUTLINED_FUNCTION_2_0(v56, v124);
  v103 = v57;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_13();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329D8, &qword_23B5130A0);
  OUTLINED_FUNCTION_5();
  v102 = v60;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v61);
  v63 = &v97 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1329E0, &unk_23B5130A8);
  OUTLINED_FUNCTION_5();
  v66 = v65;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  v69 = &v97 - v68;
  v70 = a1[3];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v70);
  sub_23B414610();
  v71 = v132;
  sub_23B50D964();
  if (v71)
  {
    goto LABEL_8;
  }

  v100 = v63;
  v99 = v59;
  v101 = v2;
  v72 = v130;
  v132 = v66;
  sub_23B50D744();
  result = sub_23B40D8C8();
  if (v75 == v76 >> 1)
  {
LABEL_7:
    v85 = v69;
    v86 = sub_23B50D5F4();
    swift_allocError();
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v88 = &type metadata for AirPollutantKind;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v86 - 8) + 104))(v88, *MEMORY[0x277D84160], v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v132 + 8))(v85, v64);
LABEL_8:
    v89 = v131;
    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  v97 = 0;
  if (v75 < (v76 >> 1))
  {
    v98 = *(v74 + v75);
    sub_23B40D8C4();
    v78 = v77;
    v80 = v79;
    swift_unknownObjectRelease();
    if (v78 == v80 >> 1)
    {
      v81 = v128[0];
      switch(v98)
      {
        case 1:
          v134 = 1;
          sub_23B414AA8();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.Pm10CodingKeys, &v134);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = v124;
          goto LABEL_25;
        case 2:
          v135 = 2;
          sub_23B414A54();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.O3CodingKeys, &v135);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v125;
          goto LABEL_25;
        case 3:
          v136 = 3;
          sub_23B414A00();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.OzoneCodingKeys, &v136);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = v128;
          goto LABEL_25;
        case 4:
          v137 = 4;
          sub_23B4149AC();
          v93 = v120;
          OUTLINED_FUNCTION_5_11(&type metadata for AirPollutantKind.NoCodingKeys, &v137);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1();
          v82 = v93;
          v84 = &v126;
          goto LABEL_25;
        case 5:
          v138 = 5;
          sub_23B414958();
          v94 = v121;
          OUTLINED_FUNCTION_5_11(&type metadata for AirPollutantKind.No2CodingKeys, &v138);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1();
          v82 = v94;
          v84 = &v129;
          goto LABEL_25;
        case 6:
          v139 = 6;
          sub_23B414904();
          OUTLINED_FUNCTION_5_11(&type metadata for AirPollutantKind.NoxCodingKeys, &v139);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v132;
          goto LABEL_25;
        case 7:
          v141 = 7;
          sub_23B4148B0();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.So2CodingKeys, &v141);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = v140;
          goto LABEL_25;
        case 8:
          v142 = 8;
          sub_23B41485C();
          OUTLINED_FUNCTION_5_11(&type metadata for AirPollutantKind.CoCodingKeys, &v142);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_56_1();
          v82 = v72;
          v84 = &v141;
          goto LABEL_25;
        case 9:
          v143 = 9;
          sub_23B414808();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.NmhcCodingKeys, &v143);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v149;
          goto LABEL_25;
        case 10:
          v144 = 10;
          sub_23B4147B4();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.NmhcsCodingKeys, &v144);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v150;
          goto LABEL_25;
        case 11:
          v145 = 11;
          sub_23B414760();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.Nh3CodingKeys, &v145);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v151;
          goto LABEL_25;
        case 12:
          v146 = 12;
          sub_23B41470C();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.C6h6CodingKeys, &v146);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v152;
          goto LABEL_25;
        case 13:
          v147 = 13;
          sub_23B4146B8();
          v90 = v126;
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.TrsCodingKeys, &v147);
          swift_unknownObjectRelease();
          v92 = v115;
          v91 = v116;
          goto LABEL_21;
        case 14:
          v148 = 14;
          sub_23B414664();
          v90 = v127;
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.UnknownCodingKeys, &v148);
          swift_unknownObjectRelease();
          v92 = v117;
          v91 = v118;
LABEL_21:
          (*(v92 + 8))(v90, v91);
          break;
        default:
          v133 = 0;
          sub_23B414AFC();
          OUTLINED_FUNCTION_2_17(&type metadata for AirPollutantKind.Pm2point5CodingKeys, &v133);
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_4_13();
          v84 = &v119;
LABEL_25:
          v83(v82, *(v84 - 32));
          break;
      }

      v95 = OUTLINED_FUNCTION_14_7();
      v96(v95);
      v89 = v131;
      *v81 = v98;
      return __swift_destroy_boxed_opaque_existential_1(v89);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t AirPollutantKind.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

unint64_t sub_23B4159E0()
{
  result = qword_27E1329E8;
  if (!qword_27E1329E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1329E8);
  }

  return result;
}

_BYTE *sub_23B415A44(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B415C14()
{
  result = qword_27E1329F0;
  if (!qword_27E1329F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1329F0);
  }

  return result;
}

unint64_t sub_23B415C6C()
{
  result = qword_280B423F8;
  if (!qword_280B423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423F8);
  }

  return result;
}

unint64_t sub_23B415CC4()
{
  result = qword_280B42400;
  if (!qword_280B42400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42400);
  }

  return result;
}

unint64_t sub_23B415D1C()
{
  result = qword_280B42448;
  if (!qword_280B42448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42448);
  }

  return result;
}

unint64_t sub_23B415D74()
{
  result = qword_280B42450;
  if (!qword_280B42450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42450);
  }

  return result;
}

unint64_t sub_23B415DCC()
{
  result = qword_280B424E0;
  if (!qword_280B424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424E0);
  }

  return result;
}

unint64_t sub_23B415E24()
{
  result = qword_280B424E8;
  if (!qword_280B424E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424E8);
  }

  return result;
}

unint64_t sub_23B415E7C()
{
  result = qword_280B42420;
  if (!qword_280B42420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42420);
  }

  return result;
}

unint64_t sub_23B415ED4()
{
  result = qword_280B42428;
  if (!qword_280B42428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42428);
  }

  return result;
}

unint64_t sub_23B415F2C()
{
  result = qword_280B424F0;
  if (!qword_280B424F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424F0);
  }

  return result;
}

unint64_t sub_23B415F84()
{
  result = qword_280B424F8;
  if (!qword_280B424F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424F8);
  }

  return result;
}

unint64_t sub_23B415FDC()
{
  result = qword_280B424B8;
  if (!qword_280B424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424B8);
  }

  return result;
}

unint64_t sub_23B416034()
{
  result = qword_280B424C0;
  if (!qword_280B424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424C0);
  }

  return result;
}

unint64_t sub_23B41608C()
{
  result = qword_280B424A8;
  if (!qword_280B424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424A8);
  }

  return result;
}

unint64_t sub_23B4160E4()
{
  result = qword_280B424B0;
  if (!qword_280B424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424B0);
  }

  return result;
}

unint64_t sub_23B41613C()
{
  result = qword_280B42490;
  if (!qword_280B42490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42490);
  }

  return result;
}

unint64_t sub_23B416194()
{
  result = qword_280B42498;
  if (!qword_280B42498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42498);
  }

  return result;
}

unint64_t sub_23B4161EC()
{
  result = qword_280B42500;
  if (!qword_280B42500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42500);
  }

  return result;
}

unint64_t sub_23B416244()
{
  result = qword_280B42508;
  if (!qword_280B42508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42508);
  }

  return result;
}

unint64_t sub_23B41629C()
{
  result = qword_280B42460;
  if (!qword_280B42460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42460);
  }

  return result;
}

unint64_t sub_23B4162F4()
{
  result = qword_280B42468;
  if (!qword_280B42468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42468);
  }

  return result;
}

unint64_t sub_23B41634C()
{
  result = qword_280B42438;
  if (!qword_280B42438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42438);
  }

  return result;
}

unint64_t sub_23B4163A4()
{
  result = qword_280B42440;
  if (!qword_280B42440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42440);
  }

  return result;
}

unint64_t sub_23B4163FC()
{
  result = qword_280B424D0;
  if (!qword_280B424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424D0);
  }

  return result;
}

unint64_t sub_23B416454()
{
  result = qword_280B424D8;
  if (!qword_280B424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B424D8);
  }

  return result;
}

unint64_t sub_23B4164AC()
{
  result = qword_280B42470;
  if (!qword_280B42470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42470);
  }

  return result;
}

unint64_t sub_23B416504()
{
  result = qword_280B42478;
  if (!qword_280B42478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42478);
  }

  return result;
}

unint64_t sub_23B41655C()
{
  result = qword_280B42480;
  if (!qword_280B42480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42480);
  }

  return result;
}

unint64_t sub_23B4165B4()
{
  result = qword_280B42488;
  if (!qword_280B42488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42488);
  }

  return result;
}

unint64_t sub_23B41660C()
{
  result = qword_280B42410;
  if (!qword_280B42410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42410);
  }

  return result;
}

unint64_t sub_23B416664()
{
  result = qword_280B42418;
  if (!qword_280B42418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42418);
  }

  return result;
}

unint64_t sub_23B4166BC()
{
  result = qword_280B42518;
  if (!qword_280B42518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42518);
  }

  return result;
}

unint64_t sub_23B416714()
{
  result = qword_280B42520;
  if (!qword_280B42520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42520);
  }

  return result;
}

uint64_t WeatherQueryDailyRelativeRange.RelativeTo.hashValue.getter()
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

uint64_t sub_23B416814(uint64_t a1)
{
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](0);
  return sub_23B50D914();
}

uint64_t WeatherQueryDailyRelativeRange.init(start:end:relativeTo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23B416860()
{
  result = qword_27E132A00;
  if (!qword_27E132A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E132A00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherQueryDailyRelativeRange.RelativeTo(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InstantWeatherQueryOptions.Stride(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for InstantWeatherQueryOptions.Stride(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t HourWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:cloudCoverByAltitude:condition:symbolName:dewPoint:humidity:isDaylight:precipitation:precipitationChance:precipitationAmount:snowfallAmount:apparentPrecipitationIntensity:pressure:pressureTrend:temperature:apparentTemperature:uvIndex:visibility:wind:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25)
{
  v59 = *a2;
  v36 = *(a2 + 2);
  v37 = *a3;
  v38 = *a8;
  v39 = *a18;
  v61 = *(a18 + 8);
  v40 = *a20;
  v63 = *a23;
  v62 = *(a23 + 8);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  (*(v41 + 32))(a9, a1);
  v42 = type metadata accessor for HourWeather(0);
  *(a9 + v42[5]) = a10;
  *(a9 + v42[6]) = a11;
  *(a9 + v42[7]) = a12;
  *(a9 + v42[8]) = a13;
  v43 = a9 + v42[9];
  *v43 = v59;
  *(v43 + 16) = v36;
  *(a9 + v42[10]) = v37;
  v44 = (a9 + v42[11]);
  *v44 = a4;
  v44[1] = a5;
  v45 = v42[12];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v48 = *(v47 + 32);
  v48(a9 + v45, a6, v46);
  *(a9 + v42[13]) = a14;
  *(a9 + v42[14]) = a7;
  *(a9 + v42[15]) = v38;
  *(a9 + v42[16]) = a15;
  v49 = v42[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2();
  (*(v50 + 32))(a9 + v49, a19);
  *(a9 + v42[21]) = v40;
  v51 = v42[17];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v54 = *(v53 + 32);
  v54(a9 + v51, a16, v52);
  v54(a9 + v42[18], a17, v52);
  v55 = a9 + v42[19];
  *v55 = v39;
  *(v55 + 8) = v61;
  v48(a9 + v42[22], a21, v46);
  v48(a9 + v42[23], a22, v46);
  v56 = a9 + v42[24];
  *v56 = v63;
  *(v56 + 8) = v62;
  v54(a9 + v42[25], a24, v52);
  v57 = a9 + v42[26];

  return sub_23B416D44(a25, v57);
}

uint64_t sub_23B416D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Wind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HourWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t HourWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t HourWeather.cloudCover.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverLow.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverMid.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_34_5();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t HourWeather.cloudCoverHigh.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

double HourWeather.cloudCoverByAltitude.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for HourWeather(v2) + 36);
  result = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = result;
  return result;
}

__n128 HourWeather.cloudCoverByAltitude.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for HourWeather(0) + 36));
  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t HourWeather.cloudCoverByAltitude.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for HourWeather(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t HourWeather.condition.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t HourWeather.symbolName.getter()
{
  v1 = *(v0 + *(type metadata accessor for HourWeather(0) + 44));

  return v1;
}

uint64_t HourWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HourWeather(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HourWeather.symbolName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for HourWeather(v0);
  return OUTLINED_FUNCTION_44();
}