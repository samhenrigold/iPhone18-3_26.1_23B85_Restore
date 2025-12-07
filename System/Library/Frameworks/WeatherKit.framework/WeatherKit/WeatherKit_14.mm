uint64_t sub_23B4D9DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4D9A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4D9DD8(uint64_t a1)
{
  v2 = sub_23B4DA1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4D9E14(uint64_t a1)
{
  v2 = sub_23B4DA1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static LocationInfo.== infix(_:_:)(uint64_t a1)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for LocationInfo(0);
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_27(*(v1 + 24));
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_28();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_13_23(v6);
    v10 = v4 && v8 == v9;
    if (!v10 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_28();
  if (v13)
  {
    if (!v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_13_23(v12);
    v16 = v4 && v14 == v15;
    if (!v16 && (sub_23B50D834() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_28();
  if (v19)
  {
    if (v17)
    {
      OUTLINED_FUNCTION_13_23(v18);
      v22 = v4 && v20 == v21;
      if (v22 || (sub_23B50D834() & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (v17)
  {
    return 0;
  }

LABEL_33:
  OUTLINED_FUNCTION_14_27(*(v1 + 40));
  if (v4 && v23 == v24)
  {
    return 1;
  }

  return sub_23B50D834();
}

uint64_t LocationInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353E8, &qword_23B5238A0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DA1C8();
  sub_23B50D974();
  v21 = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_16_17(v3, &v21);
  if (!v2)
  {
    v11 = type metadata accessor for LocationInfo(0);
    v12 = v11[5];
    v20 = 1;
    OUTLINED_FUNCTION_16_17(v3 + v12, &v20);
    OUTLINED_FUNCTION_15(v11[6]);
    v19 = 2;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D7A4();
    OUTLINED_FUNCTION_15(v11[7]);
    v18 = 3;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v11[8]);
    v17 = 4;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v11[9]);
    v16 = 5;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D774();
    OUTLINED_FUNCTION_15(v11[10]);
    v15 = 6;
    OUTLINED_FUNCTION_2_46();
    sub_23B50D7A4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4DA1C8()
{
  result = qword_27E1353F0;
  if (!qword_27E1353F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1353F0);
  }

  return result;
}

uint64_t LocationInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v45 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353F8, &qword_23B5238A8);
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v42 = type metadata accessor for LocationInfo(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v17);
  v46 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23B4DA1C8();
  sub_23B50D964();
  v43 = v4;
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    v39 = v13;
    v53 = 0;
    sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
    v20 = v40;
    OUTLINED_FUNCTION_17_20(v4, &v53);
    v21 = v11;
    v22 = *(v45 + 32);
    v22(v46, v21, v4);
    v52 = 1;
    OUTLINED_FUNCTION_17_20(v4, &v52);
    v23 = v42;
    v22(&v46[*(v42 + 20)], v8, v4);
    v51 = 2;
    OUTLINED_FUNCTION_1_40();
    v24 = sub_23B50D6E4();
    OUTLINED_FUNCTION_3_46(v24, v25, v23[6]);
    v50 = 3;
    OUTLINED_FUNCTION_1_40();
    v26 = sub_23B50D6B4();
    v27 = v39;
    OUTLINED_FUNCTION_3_46(v26, v28, v23[7]);
    v49 = 4;
    OUTLINED_FUNCTION_1_40();
    v29 = sub_23B50D6B4();
    OUTLINED_FUNCTION_3_46(v29, v30, v23[8]);
    v48 = 5;
    OUTLINED_FUNCTION_1_40();
    v31 = sub_23B50D6B4();
    OUTLINED_FUNCTION_3_46(v31, v32, v23[9]);
    v47 = 6;
    OUTLINED_FUNCTION_1_40();
    v33 = sub_23B50D6E4();
    v35 = v34;
    (*(v27 + 8))(v16, v20);
    v36 = v46;
    v37 = &v46[v23[10]];
    *v37 = v33;
    v37[1] = v35;
    sub_23B4DA77C(v36, v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_23B4DA7E0(v36);
  }
}

uint64_t sub_23B4DA77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4DA7E0(uint64_t a1)
{
  v2 = type metadata accessor for LocationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for LocationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4DA94C()
{
  result = qword_27E135400;
  if (!qword_27E135400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135400);
  }

  return result;
}

unint64_t sub_23B4DA9A4()
{
  result = qword_27E135408;
  if (!qword_27E135408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135408);
  }

  return result;
}

unint64_t sub_23B4DA9FC()
{
  result = qword_27E135410;
  if (!qword_27E135410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135410);
  }

  return result;
}

uint64_t static WeatherAlert.mock(flavor:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  switch(*a1)
  {
    case 1:
      result = sub_23B4DAFA0(a2);
      break;
    case 2:
      result = sub_23B4DB438(a2);
      break;
    case 3:
      result = sub_23B4DB8D0(a2);
      break;
    default:
      result = sub_23B4DAB18(a2);
      break;
  }

  return result;
}

uint64_t WeatherAlert.Flavor.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t sub_23B4DAB18@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata(0);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - v11;
  sub_23B50AB04();
  v13 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v15 = sub_23B50AD24();
    v16 = __swift_project_value_buffer(v15, qword_27E15A748);
    v17 = type metadata accessor for WeatherAlert(0);
    v18 = *(v15 - 8);
    v19 = *(v18 + 16);
    v20 = v18 + 16;
    v19(a1 + v17[7], v16, v15);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v50 = v12;
    v21 = __swift_project_value_buffer(v15, qword_27E15A730);
    v19(a1 + v17[8], v21, v15);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_27E15A760);
    v19(v9, v22, v15);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    v19(v6, v16, v15);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
    v23 = v51;
    static WeatherMetadata.mock()(v51);
    sub_23B50AD54();
    v49 = v20;
    v24 = v23;
    v25 = v17[9];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v15);
    v47 = v6;
    v29 = v17[10];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v15);
    v33 = v17[13];
    OUTLINED_FUNCTION_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v13);
    v37 = v17[14];
    v48 = v19;
    v38 = v13;
    v39 = (a1 + v37);
    (*(*(v38 - 8) + 32))(a1, v50, v38);
    v40 = (a1 + v17[5]);
    *v40 = 0;
    v40[1] = 0xE000000000000000;
    sub_23B3CF890(v9, a1 + v25);
    sub_23B3CF890(v47, a1 + v29);
    v41 = a1 + v17[11];
    strcpy(v41, "Tornado Watch");
    *(v41 + 14) = -4864;
    *v39 = 0;
    v39[1] = 0;
    *(a1 + v17[15]) = 3;
    *(a1 + v17[16]) = 0;
    sub_23B3CA078(v24, a1 + v17[17]);
    v48(a1 + v17[6], v24, v15);
    sub_23B3E79F4(v24);
    v42 = a1 + v17[12];
    strcpy(v42, "Tornado Watch");
    *(v42 + 14) = -4864;
    sub_23B4DBEA4(a1 + v33);
    OUTLINED_FUNCTION_1();
    return __swift_storeEnumTagSinglePayload(v43, v44, v45, v38);
  }

  return result;
}

uint64_t sub_23B4DAFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata(0);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v34 - v11;
  sub_23B50AB04();
  v13 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v15 = sub_23B50AD24();
    v16 = __swift_project_value_buffer(v15, qword_27E15A748);
    v17 = type metadata accessor for WeatherAlert(0);
    v18 = *(v15 - 8);
    v19 = *(v18 + 16);
    v20 = v18 + 16;
    v19(a1 + v17[7], v16, v15);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v37 = v12;
    v21 = __swift_project_value_buffer(v15, qword_27E15A730);
    v19(a1 + v17[8], v21, v15);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_27E15A760);
    v19(v9, v22, v15);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    v19(v6, v16, v15);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
    v36 = 0x800000023B5389E0;
    v23 = v38;
    static WeatherMetadata.mock()(v38);
    sub_23B50AD54();
    v34[0] = v6;
    v24 = v17[9];
    __swift_storeEnumTagSinglePayload(a1 + v24, 1, 1, v15);
    v25 = v17[10];
    __swift_storeEnumTagSinglePayload(a1 + v25, 1, 1, v15);
    v35 = v19;
    v26 = v17[13];
    __swift_storeEnumTagSinglePayload(a1 + v26, 1, 1, v13);
    v27 = v17[14];
    v34[1] = v20;
    v28 = v13;
    v29 = (a1 + v27);
    (*(*(v28 - 8) + 32))(a1, v37, v28);
    v30 = (a1 + v17[5]);
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    sub_23B3CF890(v9, a1 + v24);
    sub_23B3CF890(v34[0], a1 + v25);
    v31 = (a1 + v17[11]);
    v32 = v36;
    *v31 = 0xD000000000000013;
    v31[1] = v32;
    *v29 = 0;
    v29[1] = 0;
    *(a1 + v17[15]) = 3;
    *(a1 + v17[16]) = 0;
    sub_23B3CA078(v23, a1 + v17[17]);
    v35(a1 + v17[6], v23, v15);
    sub_23B3E79F4(v23);
    v33 = (a1 + v17[12]);
    *v33 = 0xD000000000000013;
    v33[1] = v32;
    sub_23B4DBEA4(a1 + v26);
    return __swift_storeEnumTagSinglePayload(a1 + v26, 1, 1, v28);
  }

  return result;
}

uint64_t sub_23B4DB438@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata(0);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v34 - v11;
  sub_23B50AB04();
  v13 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v15 = sub_23B50AD24();
    v16 = __swift_project_value_buffer(v15, qword_27E15A748);
    v17 = type metadata accessor for WeatherAlert(0);
    v18 = *(v15 - 8);
    v19 = *(v18 + 16);
    v20 = v18 + 16;
    v19(a1 + v17[7], v16, v15);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v37 = v12;
    v21 = __swift_project_value_buffer(v15, qword_27E15A730);
    v19(a1 + v17[8], v21, v15);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_27E15A760);
    v19(v9, v22, v15);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    v19(v6, v16, v15);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
    v36 = 0x800000023B538A00;
    v23 = v38;
    static WeatherMetadata.mock()(v38);
    sub_23B50AD54();
    v34[0] = v6;
    v24 = v17[9];
    __swift_storeEnumTagSinglePayload(a1 + v24, 1, 1, v15);
    v25 = v17[10];
    __swift_storeEnumTagSinglePayload(a1 + v25, 1, 1, v15);
    v35 = v19;
    v26 = v17[13];
    __swift_storeEnumTagSinglePayload(a1 + v26, 1, 1, v13);
    v27 = v17[14];
    v34[1] = v20;
    v28 = v13;
    v29 = (a1 + v27);
    (*(*(v28 - 8) + 32))(a1, v37, v28);
    v30 = (a1 + v17[5]);
    *v30 = 0;
    v30[1] = 0xE000000000000000;
    sub_23B3CF890(v9, a1 + v24);
    sub_23B3CF890(v34[0], a1 + v25);
    v31 = (a1 + v17[11]);
    v32 = v36;
    *v31 = 0xD000000000000013;
    v31[1] = v32;
    *v29 = 0;
    v29[1] = 0;
    *(a1 + v17[15]) = 3;
    *(a1 + v17[16]) = 0;
    sub_23B3CA078(v23, a1 + v17[17]);
    v35(a1 + v17[6], v23, v15);
    sub_23B3E79F4(v23);
    v33 = (a1 + v17[12]);
    *v33 = 0xD000000000000013;
    v33[1] = v32;
    sub_23B4DBEA4(a1 + v26);
    return __swift_storeEnumTagSinglePayload(a1 + v26, 1, 1, v28);
  }

  return result;
}

uint64_t sub_23B4DB8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WeatherMetadata(0);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  sub_23B50AB04();
  v13 = sub_23B50AB34();
  result = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_27E131C20 != -1)
    {
      swift_once();
    }

    v15 = sub_23B50AD24();
    v16 = __swift_project_value_buffer(v15, qword_27E15A748);
    v17 = type metadata accessor for WeatherAlert(0);
    v18 = *(v15 - 8);
    v19 = *(v18 + 16);
    v20 = v18 + 16;
    v19(a1 + v17[7], v16, v15);
    if (qword_27E131C18 != -1)
    {
      swift_once();
    }

    v37 = v12;
    v21 = __swift_project_value_buffer(v15, qword_27E15A730);
    v19(a1 + v17[8], v21, v15);
    if (qword_27E131C28 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v15, qword_27E15A760);
    v19(v9, v22, v15);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
    v19(v6, v16, v15);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
    v35 = 0x800000023B538A20;
    v23 = v38;
    static WeatherMetadata.mock()(v38);
    sub_23B50AD54();
    v33 = v6;
    v24 = v17[9];
    __swift_storeEnumTagSinglePayload(a1 + v24, 1, 1, v15);
    v36 = v20;
    v25 = v9;
    v26 = v17[10];
    __swift_storeEnumTagSinglePayload(a1 + v26, 1, 1, v15);
    v34 = v19;
    v27 = v17[13];
    __swift_storeEnumTagSinglePayload(a1 + v27, 1, 1, v13);
    v28 = (a1 + v17[14]);
    (*(*(v13 - 8) + 32))(a1, v37, v13);
    v29 = (a1 + v17[5]);
    *v29 = 0;
    v29[1] = 0xE000000000000000;
    sub_23B3CF890(v25, a1 + v24);
    sub_23B3CF890(v33, a1 + v26);
    v30 = (a1 + v17[11]);
    v31 = v35;
    *v30 = 0xD000000000000010;
    v30[1] = v31;
    *v28 = 0;
    v28[1] = 0;
    *(a1 + v17[15]) = 0;
    *(a1 + v17[16]) = 1;
    sub_23B3CA078(v23, a1 + v17[17]);
    v34(a1 + v17[6], v23, v15);
    sub_23B3E79F4(v23);
    v32 = (a1 + v17[12]);
    *v32 = 0xD000000000000010;
    v32[1] = v31;
    sub_23B4DBEA4(a1 + v27);
    return __swift_storeEnumTagSinglePayload(a1 + v27, 1, 1, v13);
  }

  return result;
}

unint64_t sub_23B4DBD74()
{
  result = qword_27E135418;
  if (!qword_27E135418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135418);
  }

  return result;
}

_BYTE *_s6FlavorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B4DBEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Wind.mock()@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132048, &qword_23B510110);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = [objc_opt_self() degrees];
  v6 = type metadata accessor for Wind(0);
  sub_23B3924C0(0, &qword_280B433B0, 0x277CCADA8);
  sub_23B50A9B4();
  v7 = objc_opt_self();
  v8 = [v7 kilometersPerHour];
  sub_23B3924C0(0, &qword_280B433A8, 0x277CCAE40);
  sub_23B50A9B4();
  v9 = [v7 kilometersPerHour];
  sub_23B50A9B4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v10);
  v11 = *(v6 + 28);
  __swift_storeEnumTagSinglePayload(&a1[v11], 1, 1, v10);
  *a1 = 4;
  return sub_23B4983E4(v4, &a1[v11]);
}

WeatherKit::WeatherServiceMarineHourlyRelativeRange __swiftcall WeatherServiceMarineHourlyRelativeRange.init(start:end:relativeTo:)(Swift::Int start, Swift::Int end, WeatherKit::WeatherServiceMarineHourlyRelativeRange::RelativeTo relativeTo)
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

WeatherKit::WeatherServiceMarineHourlyRelativeRange::RelativeTo_optional __swiftcall WeatherServiceMarineHourlyRelativeRange.RelativeTo.init(rawValue:)(Swift::String rawValue)
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

uint64_t WeatherServiceMarineHourlyRelativeRange.RelativeTo.rawValue.getter()
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

unint64_t sub_23B4DC178()
{
  result = qword_27E135420;
  if (!qword_27E135420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135420);
  }

  return result;
}

uint64_t sub_23B4DC1D8@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherServiceMarineHourlyRelativeRange.RelativeTo.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherServiceMarineHourlyRelativeRange.RelativeTo(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4DC3A0()
{
  result = qword_27E135428;
  if (!qword_27E135428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135428);
  }

  return result;
}

WeatherKit::AirQualitySource __swiftcall AirQualitySource.init(kind:description:)(WeatherKit::AirQualitySourceKind kind, Swift::String description)
{
  *v2 = *kind;
  *(v2 + 8) = description;
  result.description = description;
  result.kind = kind;
  return result;
}

uint64_t AirQualitySource.description.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AirQualitySource.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23B4DC4DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_23B4DC5A8(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_23B4DC5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DC4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DC610(uint64_t a1)
{
  v2 = sub_23B4DCA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DC64C(uint64_t a1)
{
  v2 = sub_23B4DCA48();

  return MEMORY[0x2821FE720](a1, v2);
}

WeatherKit::AirQualitySourceKind_optional __swiftcall AirQualitySourceKind.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_23B4DC718@<X0>(uint64_t *a1@<X8>)
{
  result = AirQualitySourceKind.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t static AirQualitySource.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (*&aModeled_4[8 * *a1] == *&aModeled_4[8 * *a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_23B50D834();
    swift_bridgeObjectRelease_n();
    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_23B50D834();
}

uint64_t AirQualitySource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135430, &qword_23B523C70);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DCA48();
  sub_23B50D974();
  v16 = v10;
  v15 = 0;
  sub_23B4DCA9C();
  sub_23B50D7F4();
  if (!v2)
  {
    v14 = 1;
    sub_23B50D7A4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_23B4DCA48()
{
  result = qword_280B423E8;
  if (!qword_280B423E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423E8);
  }

  return result;
}

unint64_t sub_23B4DCA9C()
{
  result = qword_280B42370;
  if (!qword_280B42370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42370);
  }

  return result;
}

uint64_t AirQualitySource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135438, &qword_23B523C78);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4DCA48();
  sub_23B50D964();
  if (!v2)
  {
    v18 = 0;
    sub_23B4DCCA4();
    sub_23B50D734();
    v11 = v19;
    v17 = 1;
    v13 = sub_23B50D6E4();
    v15 = v14;
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23B4DCCA4()
{
  result = qword_27E135440;
  if (!qword_27E135440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135440);
  }

  return result;
}

uint64_t AirQualitySource.hash(into:)(uint64_t a1)
{
  sub_23B50D1C4();

  return sub_23B50D1C4();
}

uint64_t AirQualitySource.hashValue.getter()
{
  sub_23B50D8C4();
  sub_23B50D1C4();

  sub_23B50D1C4();
  return sub_23B50D914();
}

uint64_t sub_23B4DCE10(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[72] = *v1;
  v6 = v2;
  v7 = v3;
  sub_23B50D8C4();
  AirQualitySource.hash(into:)(v5);
  return sub_23B50D914();
}

unint64_t sub_23B4DCE64()
{
  result = qword_27E135448;
  if (!qword_27E135448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135448);
  }

  return result;
}

unint64_t sub_23B4DCEBC()
{
  result = qword_27E135450;
  if (!qword_27E135450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualitySourceKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AirQualitySource.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4DD0DC()
{
  result = qword_27E135458;
  if (!qword_27E135458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135458);
  }

  return result;
}

unint64_t sub_23B4DD134()
{
  result = qword_280B423D8;
  if (!qword_280B423D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423D8);
  }

  return result;
}

unint64_t sub_23B4DD18C()
{
  result = qword_280B423E0;
  if (!qword_280B423E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B423E0);
  }

  return result;
}

unint64_t sub_23B4DD1E0()
{
  result = qword_280B42368;
  if (!qword_280B42368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B42368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherServiceLocationOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
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

uint64_t sub_23B4DD28C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v168 = a2;
  v5 = sub_23B50C254();
  OUTLINED_FUNCTION_5();
  v171 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v9);
  sub_23B50C1F4();
  OUTLINED_FUNCTION_5();
  v176 = v10;
  v177 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27();
  v175 = v13 - v12;
  v14 = type metadata accessor for HistoricalFact.Argument(0);
  v174 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_27();
  v183 = (v16 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v21);
  v159 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v152 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v27);
  sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v166 = v29;
  v167 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v31);
  v156 = sub_23B50CCA4();
  OUTLINED_FUNCTION_5();
  v155 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_35(v37);
  v173 = sub_23B50C194();
  OUTLINED_FUNCTION_5();
  v178 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_12();
  v169 = v40;
  MEMORY[0x28223BE20](v41);
  v43 = v151 - v42;
  v44 = sub_23B50C224();
  OUTLINED_FUNCTION_5();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  v50 = v151 - v49;
  sub_23B50C244();
  sub_23B50C214();
  v51 = v50;
  v52 = *(v46 + 8);
  v52(v51, v44);
  v53 = sub_23B50D664();

  if (!v53)
  {
    v172 = v5;
    v54 = 0;
LABEL_5:
    v55 = v173;
    sub_23B50C1A4();
    sub_23B50C184();
    v57 = v178 + 8;
    v56 = *(v178 + 8);
    (v56)(v43, v55);
    v58 = sub_23B50D664();

    if (v58 > 2)
    {
      if (qword_280B43440 == -1)
      {
LABEL_15:
        v183 = v56;
        v73 = sub_23B50CDF4();
        __swift_project_value_buffer(v73, qword_280B4E9D8);
        v74 = v171;
        v75 = OUTLINED_FUNCTION_40_8();
        v76(v75);
        v77 = sub_23B50CDD4();
        v78 = sub_23B50D4B4();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v178 = v57;
          v80 = v74;
          v81 = v79;
          v177 = swift_slowAlloc();
          v182[0] = v177;
          *v81 = 136446210;
          v82 = v169;
          LODWORD(v176) = v78;
          sub_23B50C1A4();
          v175 = sub_23B50C184();
          v83 = v43;
          v85 = v84;
          v86 = v183;
          v183(v82, v173);
          v87 = *(v80 + 8);
          v87(v83, v172);
          v88 = sub_23B391F1C(v175, v85, v182);

          *(v81 + 4) = v88;
          _os_log_impl(&dword_23B38D000, v77, v176, "Encountered an unknown historical fact period. period=%{public}s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v177);
          v55 = v173;
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        else
        {

          v103 = v43;
          v87 = *(v74 + 8);
          v87(v103, v172);
          v82 = v169;
          v86 = v183;
        }

        v104 = v170;
        sub_23B50C1A4();
        v105 = sub_23B50C184();
        v107 = v106;
        v86(v82, v55);
        sub_23B4E349C();
        swift_allocError();
        *v108 = v105;
        *(v108 + 8) = v107;
        *(v108 + 16) = 1;
        swift_willThrow();
        return (v87)(v104, v172);
      }

LABEL_33:
      OUTLINED_FUNCTION_0_1(&qword_280B43440);
      goto LABEL_15;
    }

    v55 = v168;
    *v168 = v54;
    *(v55 + 1) = v58;
    v59 = sub_23B50C174();
    v61 = v60;
    *(v55 + 8) = v59;
    *(v55 + 16) = v60;
    *(v55 + 24) = sub_23B50C164();
    *(v55 + 32) = v62;
    v169 = v62;
    v182[0] = sub_23B50C1B4();
    v182[1] = v63;
    v181[0] = 29477;
    v181[1] = 0xE200000000000000;
    v179 = 16421;
    v180 = 0xE200000000000000;
    sub_23B3B6C10();
    v64 = sub_23B50D524();
    v43 = v65;

    *(v55 + 40) = v64;
    *(v55 + 48) = v43;
    v161 = v43;
    v56 = sub_23B50C234();
    v57 = *(v56 + 16);
    if (v57)
    {
      v160 = v61;
      v170 = a1;
      v182[0] = MEMORY[0x277D84F90];
      sub_23B41B2E4(0, v57, 0);
      v55 = 0;
      v66 = v182[0];
      v173 = v56 + ((*(v177 + 80) + 32) & ~*(v177 + 80));
      while (v55 < *(v56 + 16))
      {
        v67 = v3;
        v68 = v175;
        (v177[2])(v175, v173 + v177[9] * v55, v176);
        sub_23B4E1624(v68, v181, v183);
        if (v67)
        {

          (*(v171 + 8))(v170, v172);
          v117 = OUTLINED_FUNCTION_43_10();
          v118(v117);
        }

        v178 = 0;
        v69 = OUTLINED_FUNCTION_43_10();
        v70(v69);
        v182[0] = v66;
        v72 = *(v66 + 16);
        v71 = *(v66 + 24);
        v43 = (v72 + 1);
        if (v72 >= v71 >> 1)
        {
          sub_23B41B2E4(v71 > 1, v72 + 1, 1);
          v66 = v182[0];
        }

        ++v55;
        *(v66 + 16) = v43;
        sub_23B4E20E8(v183, v66 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v72, type metadata accessor for HistoricalFact.Argument);
        v3 = v178;
        if (v57 == v55)
        {

          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v178 = v2;

    v66 = MEMORY[0x277D84F90];
LABEL_27:
    v119 = v168;
    *(v168 + 56) = v66;
    v120 = v154;
    sub_23B50C204();
    v121 = v164;
    sub_23B50CC84();
    v122 = *(v155 + 8);
    v123 = v120;
    v124 = v156;
    v122(v123, v156);
    OUTLINED_FUNCTION_37_11();
    v125 = v165;
    sub_23B50CC14();
    v122(v55, v124);
    OUTLINED_FUNCTION_37_11();
    sub_23B50CC74();
    v127 = v126;
    v122(v55, v124);
    OUTLINED_FUNCTION_37_11();
    sub_23B50CC94();
    v129 = v128;
    v122(v55, v124);
    v130 = v119 + *(type metadata accessor for HistoricalFact(0) + 40);
    v131 = type metadata accessor for WeatherMetadata(0);
    v132 = v131[8];
    *(v132 + v130) = 0;
    v133 = *(v166 + 16);
    v134 = v121;
    v135 = v167;
    v133(v130, v134, v167);
    v133(v130 + v131[5], v125, v135);
    *(v130 + v131[6]) = v127;
    *(v130 + v131[7]) = v129;
    v136 = v157;
    sub_23B50AB04();
    v137 = v159;
    result = __swift_getEnumTagSinglePayload(v136, 1, v159);
    v138 = v158;
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v139 = *(v152 + 32);
      v139(v163, v136, v137);
      OUTLINED_FUNCTION_32_10();
      v140 = v151[4];
      sub_23B50AB04();
      result = OUTLINED_FUNCTION_4_19(v140);
      v141 = v153;
      if (!v142)
      {
        v183 = v132;
        v139(v162, v140, v137);
        OUTLINED_FUNCTION_32_10();
        sub_23B50AB04();
        result = OUTLINED_FUNCTION_4_19(v138);
        if (!v142)
        {
          v139(v141, v138, v137);
          OUTLINED_FUNCTION_32_10();
          v143 = v151[3];
          sub_23B50AB04();
          result = OUTLINED_FUNCTION_4_19(v143);
          if (!v142)
          {
            v144 = OUTLINED_FUNCTION_67_0();
            v145(v144);
            v146 = v167;
            v147 = *(v166 + 8);
            v147(v165, v167);
            v147(v164, v146);
            v139(v151[2], v143, v137);
            type metadata accessor for WeatherAttribution.Storage(0);
            swift_allocObject();
            sub_23B42E3E8();
            v149 = v148;
            v150 = v183;

            *(v150 + v130) = v149;
            return result;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v53 == 1)
  {
    v172 = v5;
    v54 = 1;
    goto LABEL_5;
  }

  if (qword_280B43440 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_280B43440);
  }

  v89 = sub_23B50CDF4();
  __swift_project_value_buffer(v89, qword_280B4E9D8);
  v90 = v171;
  v91 = OUTLINED_FUNCTION_40_8();
  v92(v91);
  v93 = v5;
  v94 = sub_23B50CDD4();
  v95 = sub_23B50D4B4();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v172 = v93;
    v183 = v97;
    v182[0] = v97;
    *v96 = 136446210;
    OUTLINED_FUNCTION_163();
    LODWORD(v177) = v95;
    sub_23B50C244();
    v176 = sub_23B50C214();
    v98 = v43;
    v100 = v99;
    v52(v93, v44);
    v101 = *(v90 + 8);
    v101(v98, v172);
    v102 = sub_23B391F1C(v176, v100, v182);

    *(v96 + 4) = v102;
    _os_log_impl(&dword_23B38D000, v94, v177, "Encountered an unknown historical fact condition. condition=%{public}s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v183);
    v93 = v172;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v101 = *(v90 + 8);
    v101(v43, v93);
  }

  v110 = v170;
  sub_23B50C1A4();
  v111 = sub_23B50C184();
  v113 = v112;
  v114 = OUTLINED_FUNCTION_41_7();
  v115(v114, v173);
  sub_23B4E349C();
  swift_allocError();
  *v116 = v111;
  *(v116 + 8) = v113;
  *(v116 + 16) = 0;
  swift_willThrow();
  return (v101)(v110, v93);
}

WeatherKit::HistoricalFact::Condition_optional __swiftcall HistoricalFact.Condition.init(rawValue:)(Swift::String rawValue)
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

uint64_t HistoricalFact.Condition.rawValue.getter()
{
  if (*v0)
  {
    return 0x7469706963657270;
  }

  else
  {
    return 0x74617265706D6574;
  }
}

uint64_t sub_23B4DE3AC@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalFact.Condition.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WeatherKit::HistoricalFact::Period_optional __swiftcall HistoricalFact.Period.init(rawValue:)(Swift::String rawValue)
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

uint64_t HistoricalFact.Period.rawValue.getter()
{
  OUTLINED_FUNCTION_48_6();
  v2 = 0x68746E6F6DLL;
  if (!v3)
  {
    v2 = 0x6B6165727473;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23B4DE544@<X0>(uint64_t *a1@<X8>)
{
  result = HistoricalFact.Period.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static HistoricalFact.Argument.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v64 = v4;
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_76();
  v60 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v62 = v9;
  v63 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  type metadata accessor for HistoricalFact.Argument(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v23);
  v25 = (&v60 - v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135460, &qword_23B524040);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v30 = &v60 + *(v29 + 56) - v27;
  sub_23B4E2144(v66, &v60 - v27, type metadata accessor for HistoricalFact.Argument);
  sub_23B4E2144(v67, v30, type metadata accessor for HistoricalFact.Argument);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v28, v2, v52);
      if (OUTLINED_FUNCTION_39_10() == 1)
      {
        v54 = v62;
        v53 = v63;
        (*(v62 + 32))(v12, v30, v63);
        OUTLINED_FUNCTION_4_4(&qword_280B42B78, &qword_27E131E30, &qword_23B511AC0);
        v32 = sub_23B50D134();
        v55 = *(v54 + 8);
        v55(v12, v53);
        v55(v2, v53);
        goto LABEL_18;
      }

      v56 = OUTLINED_FUNCTION_67_0();
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v28, v21, v40);
      if (OUTLINED_FUNCTION_39_10() == 2)
      {
        v42 = v64;
        v41 = v65;
        OUTLINED_FUNCTION_45_7();
        v43 = v60;
        v44(v60, v30, v41);
        OUTLINED_FUNCTION_4_4(&qword_280B42BC0, &qword_27E131E28, &qword_23B50EFB0);
        OUTLINED_FUNCTION_43_10();
        v32 = sub_23B50D134();
        v45 = *(v42 + 8);
        v45(v43, v41);
        v45(v21, v41);
        goto LABEL_18;
      }

      v56 = OUTLINED_FUNCTION_41_7();
      goto LABEL_22;
    case 3u:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v28, v18, v46);
      if (OUTLINED_FUNCTION_39_10() == 3)
      {
        v48 = v64;
        v47 = v65;
        OUTLINED_FUNCTION_45_7();
        v49 = v61;
        v50(v61, v30, v47);
        OUTLINED_FUNCTION_4_4(&qword_280B42BC0, &qword_27E131E28, &qword_23B50EFB0);
        v32 = sub_23B50D134();
        v51 = *(v48 + 8);
        v51(v49, v47);
        v51(v18, v47);
LABEL_18:
        OUTLINED_FUNCTION_6_27();
        return v32 & 1;
      }

      v57 = *(v64 + 8);
      v56 = v18;
LABEL_22:
      v58 = v65;
LABEL_24:
      v57(v56, v58);
      goto LABEL_25;
    case 4u:
      OUTLINED_FUNCTION_0_55();
      v33 = OUTLINED_FUNCTION_65();
      sub_23B4E2144(v33, v34, v35);
      v37 = *(v15 + 1);
      v36 = *(v15 + 2);
      if (OUTLINED_FUNCTION_39_10() != 4)
      {

LABEL_25:
        sub_23B4DEC0C(v28);
        goto LABEL_26;
      }

      if (*v15 != *v30)
      {

LABEL_29:
        OUTLINED_FUNCTION_6_27();
LABEL_26:
        v32 = 0;
        return v32 & 1;
      }

      if (v37 != *(v30 + 1) || v36 != *(v30 + 2))
      {
        v39 = sub_23B50D834();

        if (v39)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

LABEL_31:
      OUTLINED_FUNCTION_6_27();
      v32 = 1;
      return v32 & 1;
    default:
      OUTLINED_FUNCTION_0_55();
      sub_23B4E2144(v28, v25, v31);
      if (OUTLINED_FUNCTION_39_10())
      {
        goto LABEL_25;
      }

      v32 = *v25 == *v30;
      goto LABEL_18;
  }
}

uint64_t sub_23B4DEC0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135460, &qword_23B524040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B4DEC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1702125924 && a2 == 0xE400000000000000)
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

unint64_t sub_23B4DEE28(char a1)
{
  result = 0x72656765746E69;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6C6C6166776F6E73;
      break;
    case 4:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4DEED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
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

uint64_t sub_23B4DEF94(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_23B4DEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DEC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DEFDC(uint64_t a1)
{
  v2 = sub_23B4DFA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF018(uint64_t a1)
{
  v2 = sub_23B4DFA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4DEED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4DF084(uint64_t a1)
{
  v2 = sub_23B4DFAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF0C0(uint64_t a1)
{
  v2 = sub_23B4DFAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF0FC(uint64_t a1)
{
  v2 = sub_23B4DFC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF138(uint64_t a1)
{
  v2 = sub_23B4DFC40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF174(uint64_t a1)
{
  v2 = sub_23B4DFB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF1B0(uint64_t a1)
{
  v2 = sub_23B4DFB98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF1EC(uint64_t a1)
{
  v2 = sub_23B4DFB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF228(uint64_t a1)
{
  v2 = sub_23B4DFB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4DF264(uint64_t a1)
{
  v2 = sub_23B4DFBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4DF2A0(uint64_t a1)
{
  v2 = sub_23B4DFBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalFact.Argument.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135468, &qword_23B524048);
  OUTLINED_FUNCTION_5();
  v81 = v3;
  v82 = v2;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52();
  v80 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135470, &qword_23B524050);
  OUTLINED_FUNCTION_5();
  v78 = v7;
  v79 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_52();
  v77 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135478, &qword_23B524058);
  OUTLINED_FUNCTION_5();
  v75 = v11;
  v76 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_52();
  v74 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v83 = v15;
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12();
  v73 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_76();
  v72 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135480, &qword_23B524060);
  OUTLINED_FUNCTION_5();
  v70 = v20;
  v71 = v19;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v69 = v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v67 = v23;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135488, &qword_23B524068);
  OUTLINED_FUNCTION_5();
  v66 = v28;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  type metadata accessor for HistoricalFact.Argument(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27();
  v35 = v34 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135490, &qword_23B524070);
  OUTLINED_FUNCTION_5();
  v86 = v37;
  v87 = v36;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v38);
  v39 = *(a1 + 24);
  v40 = OUTLINED_FUNCTION_230();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_23B4DFA9C();
  sub_23B50D974();
  OUTLINED_FUNCTION_0_55();
  sub_23B4E2144(v85, v35, v42);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v67;
      v61 = v68;
      (*(v67 + 32))(v26, v35, v68);
      v90 = 1;
      sub_23B4DFBEC();
      OUTLINED_FUNCTION_26_17(&type metadata for HistoricalFact.Argument.TemperatureCodingKeys, &v90);
      OUTLINED_FUNCTION_2_10(&qword_280B42B88, &qword_27E131E30, &qword_23B511AC0);
      sub_23B50D7F4();
      v62 = OUTLINED_FUNCTION_29_12();
      v63(v62);
      (*(v60 + 8))(v26, v61);
      goto LABEL_11;
    case 2u:
      v51 = v83;
      v50 = v84;
      OUTLINED_FUNCTION_45_7();
      v52 = v72;
      v53(v72, v35, v50);
      v91 = 2;
      sub_23B4DFB98();
      OUTLINED_FUNCTION_26_17(&type metadata for HistoricalFact.Argument.PrecipitationAmountCodingKeys, &v91);
      OUTLINED_FUNCTION_2_10(&qword_280B42BD0, &qword_27E131E28, &qword_23B50EFB0);
      v54 = v76;
      OUTLINED_FUNCTION_47_6(v52, v55);
      goto LABEL_9;
    case 3u:
      v51 = v83;
      v50 = v84;
      OUTLINED_FUNCTION_45_7();
      v52 = v73;
      v56(v73, v35, v50);
      v92[0] = 3;
      sub_23B4DFB44();
      OUTLINED_FUNCTION_26_17(&type metadata for HistoricalFact.Argument.SnowfallAmountCodingKeys, v92);
      OUTLINED_FUNCTION_2_10(&qword_280B42BD0, &qword_27E131E28, &qword_23B50EFB0);
      v54 = v79;
      OUTLINED_FUNCTION_47_6(v52, v57);
LABEL_9:
      v58 = OUTLINED_FUNCTION_67_0();
      v59(v58, v54);
      (*(v51 + 8))(v52, v50);
LABEL_11:
      v47 = OUTLINED_FUNCTION_41_7();
      v49 = v31;
      return v48(v47, v49);
    case 4u:
      v92[3] = 4;
      sub_23B4DFAF0();
      OUTLINED_FUNCTION_31_10();
      sub_23B50D764();
      v92[2] = 0;
      v43 = v82;
      v44 = v88;
      sub_23B50D7C4();
      if (!v44)
      {
        v92[1] = 1;
        sub_23B50D7A4();
      }

      v45 = OUTLINED_FUNCTION_67_0();
      v46(v45, v43);
      goto LABEL_6;
    default:
      v89 = 0;
      sub_23B4DFC40();
      OUTLINED_FUNCTION_31_10();
      sub_23B50D764();
      sub_23B50D7E4();
      (*(v66 + 8))(v31, v27);
LABEL_6:
      v47 = OUTLINED_FUNCTION_41_7();
      v49 = v39;
      return v48(v47, v49);
  }
}

unint64_t sub_23B4DFA9C()
{
  result = qword_27E135498;
  if (!qword_27E135498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135498);
  }

  return result;
}

unint64_t sub_23B4DFAF0()
{
  result = qword_27E1354A0;
  if (!qword_27E1354A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354A0);
  }

  return result;
}

unint64_t sub_23B4DFB44()
{
  result = qword_27E1354A8;
  if (!qword_27E1354A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354A8);
  }

  return result;
}

unint64_t sub_23B4DFB98()
{
  result = qword_27E1354B0;
  if (!qword_27E1354B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354B0);
  }

  return result;
}

unint64_t sub_23B4DFBEC()
{
  result = qword_27E1354B8;
  if (!qword_27E1354B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354B8);
  }

  return result;
}

unint64_t sub_23B4DFC40()
{
  result = qword_27E1354C0;
  if (!qword_27E1354C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1354C0);
  }

  return result;
}

uint64_t HistoricalFact.Argument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354C8, &qword_23B524078);
  OUTLINED_FUNCTION_5();
  v117 = v4;
  v118 = v5;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52();
  v127 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354D0, &qword_23B524080);
  OUTLINED_FUNCTION_5();
  v115 = v9;
  v116 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52();
  v122 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354D8, &qword_23B524088);
  OUTLINED_FUNCTION_5();
  v113 = v13;
  v114 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52();
  v121 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354E0, &qword_23B524090);
  OUTLINED_FUNCTION_5();
  v111 = v17;
  v112 = v16;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_52();
  v120 = v19;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354E8, &qword_23B524098);
  OUTLINED_FUNCTION_5();
  v109 = v20;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_52();
  v119 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354F0, &unk_23B5240A0);
  OUTLINED_FUNCTION_5();
  v125 = v24;
  v126 = v23;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  v27 = &v102 - v26;
  v124 = type metadata accessor for HistoricalFact.Argument(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  v31 = &v102 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x28223BE20](v33);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v102 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v102 - v40;
  v42 = a1[3];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_23B4DFA9C();
  v43 = v129;
  sub_23B50D964();
  if (v43)
  {
    goto LABEL_10;
  }

  v103 = v38;
  v104 = v35;
  v105 = v2;
  v106 = v31;
  v44 = v126;
  v129 = v41;
  sub_23B50D744();
  result = sub_23B40D8C8();
  if (v47 == v48 >> 1)
  {
    v49 = v124;
LABEL_9:
    v58 = sub_23B50D5F4();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v60 = v49;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = OUTLINED_FUNCTION_27_15();
    v62(v61, v44);
LABEL_10:
    v63 = v128;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v107 = v27;
  v102 = 0;
  if (v47 < (v48 >> 1))
  {
    v50 = *(v46 + v47);
    sub_23B40D8C4();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    v55 = v129;
    if (v52 == v54 >> 1)
    {
      v56 = v102;
      v57 = v123;
      switch(v50)
      {
        case 1:
          v131 = 1;
          sub_23B4DFBEC();
          v69 = v120;
          OUTLINED_FUNCTION_10_25(&type metadata for HistoricalFact.Argument.TemperatureCodingKeys, &v131);
          v72 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v74, &qword_27E131E30, &qword_23B511AC0, v75);
          OUTLINED_FUNCTION_163();
          v76 = v112;
          sub_23B50D734();
          swift_unknownObjectRelease();
          (*(v111 + 8))(v69, v76);
          v93 = OUTLINED_FUNCTION_9_32();
          v94(v93);
          OUTLINED_FUNCTION_34_12();
          goto LABEL_16;
        case 2:
          v132 = 2;
          sub_23B4DFB98();
          OUTLINED_FUNCTION_10_25(&type metadata for HistoricalFact.Argument.PrecipitationAmountCodingKeys, &v132);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v70, &qword_27E131E28, &qword_23B50EFB0, v71);
          OUTLINED_FUNCTION_163();
          sub_23B50D734();
          swift_unknownObjectRelease();
          v79 = OUTLINED_FUNCTION_29_12();
          v80(v79);
          v81 = OUTLINED_FUNCTION_9_32();
          v82(v81);
          OUTLINED_FUNCTION_34_12();
          goto LABEL_16;
        case 3:
          v133[0] = 3;
          sub_23B4DFB44();
          OUTLINED_FUNCTION_10_25(&type metadata for HistoricalFact.Argument.SnowfallAmountCodingKeys, v133);
          v64 = OUTLINED_FUNCTION_65();
          __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
          OUTLINED_FUNCTION_4_38();
          sub_23B3F1C50(v66, &qword_27E131E28, &qword_23B50EFB0, v67);
          OUTLINED_FUNCTION_163();
          v68 = v116;
          sub_23B50D734();
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_27_15();
          v84(v83, v68);
          v85 = OUTLINED_FUNCTION_9_32();
          v86(v85);
          OUTLINED_FUNCTION_34_12();
          swift_storeEnumTagMultiPayload();
          v92 = v128;
          break;
        case 4:
          v134[0] = 4;
          sub_23B4DFAF0();
          OUTLINED_FUNCTION_10_25(&type metadata for HistoricalFact.Argument.DateCodingKeys, v134);
          v133[2] = 0;
          sub_23B50D704();
          v78 = v77;
          v133[1] = 1;
          v95 = sub_23B50D6E4();
          v97 = v96;
          swift_unknownObjectRelease();
          v98 = OUTLINED_FUNCTION_230();
          v99(v98);
          v100 = OUTLINED_FUNCTION_18_21();
          v101(v100);
          v56 = v108;
          *v108 = v78;
          *(v56 + 8) = v95;
          *(v56 + 16) = v97;
          OUTLINED_FUNCTION_34_12();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v92 = v128;
          v55 = v129;
          break;
        default:
          v130 = 0;
          sub_23B4DFC40();
          OUTLINED_FUNCTION_10_25(&type metadata for HistoricalFact.Argument.IntegerCodingKeys, &v130);
          v87 = sub_23B50D724();
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_33_9();
          v89(v88);
          v90 = OUTLINED_FUNCTION_18_21();
          v91(v90);
          v56 = v103;
          *v103 = v87;
          OUTLINED_FUNCTION_34_12();
          swift_storeEnumTagMultiPayload();
          v92 = v128;
          v57 = v123;
          break;
      }

      sub_23B4E20E8(v56, v55, type metadata accessor for HistoricalFact.Argument);
      sub_23B4E20E8(v55, v57, type metadata accessor for HistoricalFact.Argument);
      v63 = v92;
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    v49 = v124;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t HistoricalFact.init(condition:period:token:heading:message:arguments:metadata:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v12;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_15_22();
  return sub_23B4E20E8(a11, a9 + v13, v14);
}

BOOL static HistoricalFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x7469706963657270;
  }

  else
  {
    v5 = 0x74617265706D6574;
  }

  if (v4)
  {
    v6 = 0xEB00000000657275;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v7 = 0x7469706963657270;
  }

  else
  {
    v7 = 0x74617265706D6574;
  }

  if (*a2)
  {
    v8 = 0xED00006E6F697461;
  }

  else
  {
    v8 = 0xEB00000000657275;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_23B50D834();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_23B3E5AE8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v11 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v12 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v13 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  sub_23B3E06E4();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();

  return static WeatherMetadata.== infix(_:_:)(a1 + v15, a2 + v15);
}

uint64_t sub_23B4E0AA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6964616568 && a2 == 0xE700000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746E656D75677261 && a2 == 0xE900000000000073;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_23B50D834();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23B4E0CDC(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0x646F69726570;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x676E6964616568;
      break;
    case 4:
      result = 0x6567617373656DLL;
      break;
    case 5:
      result = 0x746E656D75677261;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4E0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E0AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E0DD4(uint64_t a1)
{
  v2 = sub_23B4E21A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E0E10(uint64_t a1)
{
  v2 = sub_23B4E21A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HistoricalFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1354F8, &qword_23B5240B0);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E21A0();
  sub_23B50D974();
  LOBYTE(v14) = *v3;
  v15 = 0;
  sub_23B4E21F4();
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_23_0();
  sub_23B50D7F4();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 1);
    v15 = 1;
    sub_23B4E2248();
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_19_18(2);
    OUTLINED_FUNCTION_19_18(3);
    OUTLINED_FUNCTION_19_18(4);
    v14 = *(v3 + 56);
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135518, &qword_23B5240B8);
    sub_23B4E238C(&qword_27E135520, &qword_27E135528, &protocol conformance descriptor for HistoricalFact.Argument, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
    type metadata accessor for HistoricalFact(0);
    LOBYTE(v14) = 6;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_16_18();
    sub_23B4E229C(v11, v12, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_23_0();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HistoricalFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135530, &qword_23B5240C0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  type metadata accessor for HistoricalFact(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27();
  v23 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E21A0();
  sub_23B50D964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_23B4E22E4();
  OUTLINED_FUNCTION_31_10();
  sub_23B50D734();
  *v23 = v24;
  sub_23B4E2338();
  sub_23B50D734();
  *(v23 + 1) = v24;
  *(v23 + 8) = OUTLINED_FUNCTION_25_12(2);
  *(v23 + 16) = v12;
  *(v23 + 24) = OUTLINED_FUNCTION_25_12(3);
  *(v23 + 32) = v13;
  *(v23 + 40) = OUTLINED_FUNCTION_25_12(4);
  *(v23 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135518, &qword_23B5240B8);
  sub_23B4E238C(&qword_27E135548, &qword_27E135550, &protocol conformance descriptor for HistoricalFact.Argument, MEMORY[0x277D83978]);
  sub_23B50D734();
  *(v23 + 56) = v24;
  OUTLINED_FUNCTION_16_18();
  sub_23B4E229C(v15, v16, &protocol conformance descriptor for WeatherMetadata);
  sub_23B50D734();
  v17 = OUTLINED_FUNCTION_11_22();
  v18(v17);
  OUTLINED_FUNCTION_15_22();
  sub_23B4E20E8(v7, v23 + v19, v20);
  sub_23B4E2144(v23, a2, type metadata accessor for HistoricalFact);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23B4E2428(v23, type metadata accessor for HistoricalFact);
}

unint64_t sub_23B4E15A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23B50D664();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23B4E1624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_23B50C1F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23B50C1C4();
  switch(sub_23B4E15A4(v10, v11))
  {
    case 1u:
      sub_23B50C1D4();
      v19 = [objc_opt_self() celsius];
      sub_23B3924C0(0, &qword_280B43388, 0x277CCAE48);
      sub_23B50A9B4();
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
    case 2u:
    case 3u:
      sub_23B50C1D4();
      v18 = [objc_opt_self() millimeters];
      sub_23B3924C0(0, &qword_280B433A0, 0x277CCAE20);
      sub_23B50A9B4();
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
    case 4u:
      v13 = sub_23B50C1E4();
      if (v14)
      {
        v15 = v13;
        v16 = v14;
        sub_23B50C1D4();
        *a3 = v17;
        a3[1] = v15;
        a3[2] = v16;
        type metadata accessor for HistoricalFact.Argument(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (qword_280B43440 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    case 5u:
      if (qword_280B43440 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    default:
      sub_23B50C1D4();
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_12:
        v42 = a2;
        v21 = sub_23B50CDF4();
        __swift_project_value_buffer(v21, qword_280B4E9D8);
        (*(v7 + 16))(v9, a1, v6);
        v22 = sub_23B50CDD4();
        v23 = sub_23B50D4B4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v43 = v41;
          *v24 = 136446210;
          v25 = sub_23B50C1C4();
          v27 = v26;
          (*(v7 + 8))(v9, v6);
          v28 = sub_23B391F1C(v25, v27, &v43);

          *(v24 + 4) = v28;
          _os_log_impl(&dword_23B38D000, v22, v23, "Encountered an unknown historical fact argument type. Discarding fact. type=%{public}s", v24, 0xCu);
          v29 = v41;
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x23EE9E260](v29, -1, -1);
          MEMORY[0x23EE9E260](v24, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v9, v6);
        }

        v30 = sub_23B50C1C4();
        v32 = v31;
        sub_23B4E349C();
        v33 = swift_allocError();
        *v34 = v30;
        *(v34 + 8) = v32;
        *(v34 + 16) = 2;
        result = swift_willThrow();
        a2 = v42;
LABEL_20:
        *a2 = v33;
        return result;
      }

      if (v12 <= -9.22337204e18)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_17:
        v35 = sub_23B50CDF4();
        __swift_project_value_buffer(v35, qword_280B4E9D8);
        v36 = sub_23B50CDD4();
        v37 = sub_23B50D4B4();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_23B38D000, v36, v37, "Missing format for a historical fact date argument. Discarding fact.", v38, 2u);
          MEMORY[0x23EE9E260](v38, -1, -1);
        }

        sub_23B4E349C();
        v33 = swift_allocError();
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 3;
        result = swift_willThrow();
        goto LABEL_20;
      }

      if (v12 >= 9.22337204e18)
      {
        goto LABEL_24;
      }

      *a3 = v12;
      type metadata accessor for HistoricalFact.Argument(0);
      return swift_storeEnumTagMultiPayload();
  }
}

void HistoricalFact.hash(into:)(uint64_t a1)
{
  sub_23B50D1C4();

  OUTLINED_FUNCTION_48_6();
  sub_23B50D1C4();

  sub_23B50D1C4();
  sub_23B50D1C4();
  sub_23B50D1C4();
  sub_23B409BE4();
  OUTLINED_FUNCTION_50_4();
  WeatherMetadata.hash(into:)();
}

uint64_t HistoricalFact.Argument.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v10 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  type metadata accessor for HistoricalFact.Argument(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_0_55();
  sub_23B4E2144(v1, v17, v18);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v28 = OUTLINED_FUNCTION_43_10();
      v29(v28);
      MEMORY[0x23EE9DB40](1);
      OUTLINED_FUNCTION_5_5(&qword_280B42B80, &qword_27E131E30, &qword_23B511AC0);
      sub_23B50D0E4();
      result = (*(v10 + 8))(v13, v8);
      break;
    case 2u:
      v23 = OUTLINED_FUNCTION_36_11();
      v24(v23);
      v25 = 2;
      goto LABEL_8;
    case 3u:
      v26 = OUTLINED_FUNCTION_36_11();
      v27(v26);
      v25 = 3;
LABEL_8:
      MEMORY[0x23EE9DB40](v25);
      OUTLINED_FUNCTION_5_5(&qword_280B42BC8, &qword_27E131E28, &qword_23B50EFB0);
      sub_23B50D0E4();
      result = (*(v4 + 8))(v7, v2);
      break;
    case 4u:
      v21 = *v17;
      MEMORY[0x23EE9DB40](4);
      v22 = 0.0;
      if (v21 != 0.0)
      {
        v22 = v21;
      }

      MEMORY[0x23EE9DB70](*&v22);
      sub_23B50D1C4();

      break;
    default:
      v19 = *v17;
      MEMORY[0x23EE9DB40](0);
      result = MEMORY[0x23EE9DB40](*&v19);
      break;
  }

  return result;
}

uint64_t sub_23B4E1FEC(uint64_t (*a1)(_BYTE *))
{
  sub_23B50D8C4();
  a1(v3);
  return sub_23B50D914();
}

uint64_t sub_23B4E2054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_23B50D8C4();
  a4(v6);
  return sub_23B50D914();
}

uint64_t sub_23B4E20E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

uint64_t sub_23B4E2144(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_65();
  v5(v4);
  return a2;
}

unint64_t sub_23B4E21A0()
{
  result = qword_27E135500;
  if (!qword_27E135500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135500);
  }

  return result;
}

unint64_t sub_23B4E21F4()
{
  result = qword_27E135508;
  if (!qword_27E135508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135508);
  }

  return result;
}

unint64_t sub_23B4E2248()
{
  result = qword_27E135510;
  if (!qword_27E135510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135510);
  }

  return result;
}

uint64_t sub_23B4E229C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B4E22E4()
{
  result = qword_27E135538;
  if (!qword_27E135538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135538);
  }

  return result;
}

unint64_t sub_23B4E2338()
{
  result = qword_27E135540;
  if (!qword_27E135540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135540);
  }

  return result;
}

uint64_t sub_23B4E238C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E135518, &qword_23B5240B8);
    sub_23B4E229C(a2, type metadata accessor for HistoricalFact.Argument, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4E2428(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23B4E2514()
{
  result = qword_27E135568;
  if (!qword_27E135568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135568);
  }

  return result;
}

unint64_t sub_23B4E256C()
{
  result = qword_27E135570;
  if (!qword_27E135570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135570);
  }

  return result;
}

void sub_23B4E25E8(uint64_t a1)
{
  sub_23B4E2698(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WeatherMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B4E2698(uint64_t a1)
{
  if (!qword_27E135588)
  {
    type metadata accessor for HistoricalFact.Argument(255);
    v1 = sub_23B50D304();
    if (!v2)
    {
      atomic_store(v1, &qword_27E135588);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.Period(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_23B4E27DC(uint64_t a1)
{
  sub_23B392468(319, &qword_280B452E0, &qword_280B43388, 0x277CCAE48);
  if (v1 <= 0x3F)
  {
    sub_23B392468(319, &qword_280B452F8, &qword_280B433A0, 0x277CCAE20);
    if (v2 <= 0x3F)
    {
      sub_23B4E28A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23B4E28A0()
{
  if (!qword_27E1355A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1355A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFact.Argument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B4E2AE8(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_38_0(a1);
}

_BYTE *sub_23B4E2B34(_BYTE *result, int a2, int a3)
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

_BYTE *sub_23B4E2BE0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4E2CC0()
{
  result = qword_27E1355A8;
  if (!qword_27E1355A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355A8);
  }

  return result;
}

unint64_t sub_23B4E2D18()
{
  result = qword_27E1355B0;
  if (!qword_27E1355B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355B0);
  }

  return result;
}

unint64_t sub_23B4E2D70()
{
  result = qword_27E1355B8;
  if (!qword_27E1355B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355B8);
  }

  return result;
}

unint64_t sub_23B4E2DC8()
{
  result = qword_27E1355C0;
  if (!qword_27E1355C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355C0);
  }

  return result;
}

unint64_t sub_23B4E2E20()
{
  result = qword_27E1355C8;
  if (!qword_27E1355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355C8);
  }

  return result;
}

unint64_t sub_23B4E2E78()
{
  result = qword_27E1355D0;
  if (!qword_27E1355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355D0);
  }

  return result;
}

unint64_t sub_23B4E2ED0()
{
  result = qword_27E1355D8;
  if (!qword_27E1355D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355D8);
  }

  return result;
}

unint64_t sub_23B4E2F28()
{
  result = qword_27E1355E0;
  if (!qword_27E1355E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355E0);
  }

  return result;
}

unint64_t sub_23B4E2F80()
{
  result = qword_27E1355E8;
  if (!qword_27E1355E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355E8);
  }

  return result;
}

unint64_t sub_23B4E2FD8()
{
  result = qword_27E1355F0;
  if (!qword_27E1355F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355F0);
  }

  return result;
}

unint64_t sub_23B4E3030()
{
  result = qword_27E1355F8;
  if (!qword_27E1355F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1355F8);
  }

  return result;
}

unint64_t sub_23B4E3088()
{
  result = qword_27E135600;
  if (!qword_27E135600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135600);
  }

  return result;
}

unint64_t sub_23B4E30E0()
{
  result = qword_27E135608;
  if (!qword_27E135608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135608);
  }

  return result;
}

unint64_t sub_23B4E3138()
{
  result = qword_27E135610;
  if (!qword_27E135610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135610);
  }

  return result;
}

unint64_t sub_23B4E3190()
{
  result = qword_27E135618;
  if (!qword_27E135618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135618);
  }

  return result;
}

unint64_t sub_23B4E31E8()
{
  result = qword_27E135620;
  if (!qword_27E135620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135620);
  }

  return result;
}

unint64_t sub_23B4E3240()
{
  result = qword_27E135628;
  if (!qword_27E135628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135628);
  }

  return result;
}

unint64_t sub_23B4E3298()
{
  result = qword_27E135630;
  if (!qword_27E135630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135630);
  }

  return result;
}

unint64_t sub_23B4E32F0()
{
  result = qword_27E135638;
  if (!qword_27E135638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135638);
  }

  return result;
}

unint64_t sub_23B4E3348()
{
  result = qword_27E135640;
  if (!qword_27E135640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135640);
  }

  return result;
}

unint64_t sub_23B4E33A0()
{
  result = qword_27E135648;
  if (!qword_27E135648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135648);
  }

  return result;
}

unint64_t sub_23B4E33F4()
{
  result = qword_27E135650;
  if (!qword_27E135650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135650);
  }

  return result;
}

unint64_t sub_23B4E3448()
{
  result = qword_27E135658;
  if (!qword_27E135658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135658);
  }

  return result;
}

unint64_t sub_23B4E349C()
{
  result = qword_27E135660;
  if (!qword_27E135660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135660);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WeatherKit14HistoricalFactV6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_23B4E350C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_23B4E354C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B4E3590(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:perceivedIntensity:)()
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_9_33();
  v14 = v5;
  v6 = *(type metadata accessor for NextHourSummary(0) + 20);
  v7 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_4_39();
  v11 = OUTLINED_FUNCTION_14();
  v12(v11);
  sub_23B3CF890(v0, v1 + v6);
  OUTLINED_FUNCTION_13_24();
  *v3 = v13;
  *(v3 + 8) = v14;
  *v4 = 0;
  *(v4 + 8) = v2;
  OUTLINED_FUNCTION_19_19();
}

uint64_t type metadata accessor for NextHourSummary(uint64_t a1)
{
  result = qword_280B45D30;
  if (!qword_280B45D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NextHourSummary.startDate.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t NextHourSummary.startDate.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t NextHourSummary.endDate.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  v3 = v1 + *(type metadata accessor for NextHourSummary(v2) + 20);

  return sub_23B3C7DF4(v3, v0);
}

uint64_t NextHourSummary.endDate.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = v1 + *(type metadata accessor for NextHourSummary(v2) + 20);

  return sub_23B3CF890(v0, v3);
}

uint64_t NextHourSummary.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for NextHourSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t NextHourSummary.precipitation.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for NextHourSummary(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t NextHourSummary.precipitation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NextHourSummary(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t NextHourSummary.precipitation.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for NextHourSummary(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t NextHourSummary.precipitationChance.setter(double a1)
{
  result = type metadata accessor for NextHourSummary(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t NextHourSummary.precipitationChance.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for NextHourSummary(v0);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.apparentPrecipitationIntensity.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  HourSummary = type metadata accessor for NextHourSummary(v0);
  OUTLINED_FUNCTION_14_28(*(HourSummary + 32));
}

uint64_t NextHourSummary.apparentPrecipitationIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NextHourSummary(0);
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t NextHourSummary.apparentPrecipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for NextHourSummary(v0);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.perceivedIntensity.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  HourSummary = type metadata accessor for NextHourSummary(v0);
  OUTLINED_FUNCTION_14_28(*(HourSummary + 36));
}

uint64_t NextHourSummary.perceivedIntensity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for NextHourSummary(0);
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t NextHourSummary.perceivedIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for NextHourSummary(v0);
  return OUTLINED_FUNCTION_44();
}

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:apparentPrecipitationIntensity:)()
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_9_33();
  v14 = v5;
  v6 = *(type metadata accessor for NextHourSummary(0) + 20);
  v7 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_4_39();
  v11 = OUTLINED_FUNCTION_14();
  v12(v11);
  sub_23B3CF890(v0, v1 + v6);
  OUTLINED_FUNCTION_13_24();
  *v4 = v13;
  *(v4 + 8) = v14;
  *v3 = 0;
  *(v3 + 8) = v2;
  OUTLINED_FUNCTION_19_19();
}

void NextHourSummary.init(startDate:endDate:precipitation:precipitationChance:apparentPrecipitationIntensity:perceivedIntensity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_9_33();
  v28 = v14;
  v29 = v13;
  v16 = *v15;
  v17 = *(v15 + 8);
  HourSummary = type metadata accessor for NextHourSummary(0);
  v19 = HourSummary[5];
  v20 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  v24 = v11 + HourSummary[8];
  *v24 = 0;
  *(v24 + 8) = 3;
  v25 = v11 + HourSummary[9];
  *v25 = 0;
  *(v25 + 8) = 3;
  v26 = OUTLINED_FUNCTION_14();
  v27(v26);
  sub_23B3CF890(v10, v11 + v19);
  *(v11 + HourSummary[6]) = v28;
  *(v11 + HourSummary[7]) = v12;
  *v25 = v16;
  *(v25 + 8) = v17;
  *v24 = a10;
  *(v24 + 8) = v29;
  OUTLINED_FUNCTION_19_19();
}

uint64_t sub_23B4E3C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
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
        v8 = a1 == 0xD000000000000013 && 0x800000023B528C00 == a2;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ELL && 0x800000023B528C40 == a2;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x800000023B529C20 == a2)
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

unint64_t sub_23B4E3E9C(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4E3F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E3C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E3FA4(uint64_t a1)
{
  v2 = sub_23B4E4A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E3FE0(uint64_t a1)
{
  v2 = sub_23B4E4A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static NextHourSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  HourSummary = type metadata accessor for NextHourSummary(0);
  v19 = HourSummary[5];
  v20 = *(v14 + 48);
  sub_23B3C7DF4(a1 + v19, v17);
  sub_23B3C7DF4(a2 + v19, &v17[v20]);
  OUTLINED_FUNCTION_46(v17);
  if (!v21)
  {
    sub_23B3C7DF4(v17, v13);
    OUTLINED_FUNCTION_46(&v17[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v17[v20], v4);
      sub_23B402DA8(&qword_280B42F08, MEMORY[0x277CC9598]);
      v22 = sub_23B50D134();
      v23 = *(v6 + 8);
      v23(v10, v4);
      v23(v13, v4);
      sub_23B398890(v17, &qword_27E131E18, &unk_23B50F710);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v6 + 8))(v13, v4);
LABEL_10:
    sub_23B398890(v17, &qword_27E131E20, &qword_23B51E340);
    return 0;
  }

  OUTLINED_FUNCTION_46(&v17[v20]);
  if (!v21)
  {
    goto LABEL_10;
  }

  sub_23B398890(v17, &qword_27E131E18, &unk_23B50F710);
LABEL_12:
  if ((sub_23B3CFF58(*(a1 + HourSummary[6]), *(a2 + HourSummary[6])) & 1) == 0 || *(a1 + HourSummary[7]) != *(a2 + HourSummary[7]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_23();
  if (v21)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else
  {
    v27 = v24 != 3 && *v25 == *v26;
    if (!v27 || (sub_23B3E71A0() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11_23();
  if (v21)
  {
    if (v28 == 3)
    {
      return 1;
    }
  }

  else
  {
    v31 = v28 != 3 && *v29 == *v30;
    if (v31 && (sub_23B3E71A0() & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t NextHourSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135668, &qword_23B524D48);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E4A48();
  sub_23B50D974();
  v13[0] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_29_0();
  sub_23B50D7F4();
  if (!v2)
  {
    HourSummary = type metadata accessor for NextHourSummary(0);
    v13[0] = 1;
    OUTLINED_FUNCTION_29_0();
    sub_23B50D794();
    v13[0] = *(v3 + HourSummary[6]);
    v14 = 2;
    sub_23B3E9DD0();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D7F4();
    v13[0] = 3;
    sub_23B50D7C4();
    OUTLINED_FUNCTION_18_22(HourSummary[8]);
    v14 = 4;
    sub_23B3E9E24();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D794();
    OUTLINED_FUNCTION_18_22(HourSummary[9]);
    v14 = 5;
    sub_23B402D54();
    OUTLINED_FUNCTION_2_47();
    sub_23B50D794();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t NextHourSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - v4;
  v5 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v45 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v43 = v9 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135678, &qword_23B524D50);
  OUTLINED_FUNCTION_5();
  v44 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  HourSummary = type metadata accessor for NextHourSummary(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27();
  v18 = v17 - v16;
  v49 = *(v19 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
  v23 = v18 + HourSummary[8];
  *v23 = 0;
  *(v23 + 8) = 3;
  v24 = v18 + HourSummary[9];
  *v24 = 0;
  *(v24 + 8) = 3;
  v25 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B4E4A48();
  v46 = v13;
  v26 = v48;
  sub_23B50D964();
  if (v26)
  {
    v29 = v49;
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_23B398890(v18 + v29, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v48 = v23;
    v27 = v42;
    v40 = v24;
    LOBYTE(v51) = 0;
    sub_23B402DA8(&qword_27E132008, MEMORY[0x277CC95A0]);
    v28 = v43;
    OUTLINED_FUNCTION_10_26();
    sub_23B50D734();
    (*(v45 + 32))(v18, v28, v5);
    LOBYTE(v51) = 1;
    OUTLINED_FUNCTION_10_26();
    sub_23B50D6D4();
    sub_23B3CF890(v27, v18 + v49);
    v53 = 2;
    sub_23B3E9E78();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D734();
    *(v18 + HourSummary[6]) = v51;
    LOBYTE(v51) = 3;
    sub_23B50D704();
    *(v18 + HourSummary[7]) = v30;
    v53 = 4;
    sub_23B3E9ECC();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D6D4();
    v31 = v52;
    v32 = v48;
    *v48 = v51;
    *(v32 + 8) = v31;
    v53 = 5;
    sub_23B402DEC();
    OUTLINED_FUNCTION_1_41();
    sub_23B50D6D4();
    v33 = OUTLINED_FUNCTION_22_16();
    v34(v33);
    v35 = v52;
    v37 = v40;
    v36 = v41;
    *v40 = v51;
    *(v37 + 8) = v35;
    sub_23B4E4A9C(v18, v36);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_23B4E4B00(v18);
  }
}

unint64_t sub_23B4E4A48()
{
  result = qword_27E135670;
  if (!qword_27E135670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135670);
  }

  return result;
}

uint64_t sub_23B4E4A9C(uint64_t a1, uint64_t a2)
{
  HourSummary = type metadata accessor for NextHourSummary(0);
  (*(*(HourSummary - 8) + 16))(a2, a1, HourSummary);
  return a2;
}

uint64_t sub_23B4E4B00(uint64_t a1)
{
  HourSummary = type metadata accessor for NextHourSummary(0);
  (*(*(HourSummary - 8) + 8))(a1, HourSummary);
  return a1;
}

void sub_23B4E4B84(uint64_t a1)
{
  sub_23B50AD24();
  if (v1 <= 0x3F)
  {
    sub_23B3973DC(319);
    if (v2 <= 0x3F)
    {
      sub_23B3976E0(319, qword_280B43890, &type metadata for ApparentPrecipitationIntensity);
      if (v3 <= 0x3F)
      {
        sub_23B3976E0(319, &qword_27E135680, &type metadata for NextHourPerceivedIntensity);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NextHourSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4E4D50()
{
  result = qword_27E135688;
  if (!qword_27E135688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135688);
  }

  return result;
}

unint64_t sub_23B4E4DA8()
{
  result = qword_27E135690;
  if (!qword_27E135690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135690);
  }

  return result;
}

unint64_t sub_23B4E4E00()
{
  result = qword_27E135698[0];
  if (!qword_27E135698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E135698);
  }

  return result;
}

uint64_t DailyWeatherSummary.init(days:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v9 = type metadata accessor for DailyWeatherSummary(0, v11);
  return sub_23B3CA20C(a2, a7 + *(v9 + 52));
}

uint64_t DailyWeatherSummary.days.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

BOOL static DailyWeatherSummary.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_23B50D324())
  {
    v15[0] = a3;
    v15[1] = a4;
    v15[2] = a5;
    v15[3] = a6;
    v12 = type metadata accessor for DailyWeatherSummary(0, v15);
    return static WeatherMetadata.== infix(_:_:)(a1 + *(v12 + 52), a2 + *(v12 + 52));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4E5040(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
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

uint64_t sub_23B4E5108(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 1937334628;
  }
}

uint64_t sub_23B4E5178(uint64_t a1)
{
  sub_23B50D8C4();
  sub_23B3DE0F8(v3, *v1);
  return sub_23B50D914();
}

uint64_t sub_23B4E51D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E5040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E5238@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B3F1684();
  *a1 = result;
  return result;
}

uint64_t sub_23B4E526C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23B4E52C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DailyWeatherSummary.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  v15 = *(a2 + 16);
  v16 = v5;
  v14[1] = a2;
  v19[0] = v15;
  v19[1] = v5;
  type metadata accessor for DailyWeatherSummary.CodingKeys(255, v19);
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  v6 = sub_23B50D804();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B50D974();
  *&v19[0] = *v3;
  v20 = 0;
  sub_23B50D304();
  v18 = v16;
  swift_getWitnessTable();
  v12 = v17;
  sub_23B50D7F4();
  if (!v12)
  {
    LOBYTE(v19[0]) = 1;
    type metadata accessor for WeatherMetadata(0);
    sub_23B4E58BC(&qword_280B426A8, &protocol conformance descriptor for WeatherMetadata);
    sub_23B50D7F4();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t DailyWeatherSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v33 = type metadata accessor for WeatherMetadata(0);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  type metadata accessor for DailyWeatherSummary.CodingKeys(255, &v40);
  OUTLINED_FUNCTION_1_42();
  swift_getWitnessTable();
  v37 = sub_23B50D754();
  OUTLINED_FUNCTION_5();
  v31 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v34 = a2;
  v35 = a3;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v16 = type metadata accessor for DailyWeatherSummary(0, &v40);
  OUTLINED_FUNCTION_5();
  v29 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v28 - v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v15;
  v21 = v38;
  sub_23B50D964();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v16;
  v22 = v32;
  v38 = a1;
  sub_23B50D304();
  v44 = 0;
  v39 = v35;
  swift_getWitnessTable();
  sub_23B50D734();
  *v20 = v40;
  LOBYTE(v40) = 1;
  sub_23B4E58BC(&qword_27E132550, &protocol conformance descriptor for WeatherMetadata);
  sub_23B50D734();
  v23 = OUTLINED_FUNCTION_3_47();
  v24(v23);
  v25 = v28;
  sub_23B3CA20C(v22, v20 + *(v28 + 52));
  v26 = v29;
  (*(v29 + 16))(v30, v20, v25);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return (*(v26 + 8))(v20, v25);
}

uint64_t sub_23B4E58BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WeatherMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B4E5A4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4E5AF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherSummary.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_23B4E5B18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DailyWeatherSummary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_23B4E5B40(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23B4E5BB4(v6, *a2, a3);
  return sub_23B3C4EE8;
}

void (*sub_23B4E5BB4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  a1[2] = __swift_coroFrameAllocStub(*(v6 + 64));
  DailyWeatherSummary.subscript.getter(a2, a3);
  return sub_23B3CEC1C;
}

uint64_t sub_23B4E5C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_23B4E5CDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_23B4E5D64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_23B4E5DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_23B50D614() + 36);
  v7 = DailyWeatherSummary.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_23B4E5EB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_23B4E5F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

_BYTE *sub_23B4E5F88(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ProductRequirementsFactoryType.twentyFourHourForecast(timeZone:)(uint64_t a1)
{
  v1 = sub_23B50AD24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_23B50B9D4();
  sub_23B50B994();
  sub_23B50ABA4();
  v8 = *(v2 + 8);
  v8(v4, v1);
  sub_23B50AC94();
  static WeatherQuery<A>.hourly(startDate:endDate:)(v7, v4);
  v8(v4, v1);
  return (v8)(v7, v1);
}

void (*sub_23B4E6214())(_BYTE *, uint64_t)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AAC4();
  OUTLINED_FUNCTION_5();
  v60 = v3;
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v5 = OUTLINED_FUNCTION_9_34(v4);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_248();
  v68 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v66 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v57 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v53[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v53[-v21];
  sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v64 = v24;
  v65 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_27();
  v27 = v26 - v25;
  sub_23B50AE04();
  sub_23B50AA14();
  v69 = v19;
  v58 = v0;
  sub_23B50A9F4();
  v54 = sub_23B4E7194(v22);
  v28 = *(v7 + 104);
  v63 = *MEMORY[0x277CC9968];
  v28(v1);
  v29 = *MEMORY[0x277CC9988];
  v62 = v28;
  (v28)(v11, v29, v5);
  v67 = v22;
  v70 = v27;
  v55 = sub_23B50ADD4();
  LOBYTE(v28) = v30;
  v56 = v7;
  v31 = *(v7 + 8);
  v31(v11, v5);
  v31(v1, v5);
  if (v28 & 1) != 0 || (v32 = v62, (v62)(v1, v63, v5), v32(v11, v29, v5), sub_23B50ADD4(), LOBYTE(v32) = v33, v31(v11, v5), v31(v1, v5), (v32) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20), v34 = (*(v56 + 80) + 32) & ~*(v56 + 80), v35 = swift_allocObject(), *(v35 + 16) = xmmword_23B50ED30, (v62)(v35 + v34, v63, v5), v36 = sub_23B4E74B0(v35), v37 = v57, sub_23B50A9F4(), v38 = v59, sub_23B50AE14(), , v39 = *(v66 + 8), v39(v37, v68), sub_23B50AA94(), v40 = OUTLINED_FUNCTION_4_40(), v41(v40), (v38))
  {
    sub_23B3E3D54();
    v42 = swift_allocError();
    OUTLINED_FUNCTION_9_1(v42, v43);
    v44 = *(v66 + 8);
    v45 = v68;
    v44(v69, v68);
    v44(v67, v45);
    v46 = OUTLINED_FUNCTION_7_41();
    v47(v46);
  }

  else
  {
    v49 = v68;
    v39(v69, v68);
    v39(v67, v49);
    v50 = OUTLINED_FUNCTION_7_41();
    v51(v50);
    if (v54)
    {
      v52 = v36 < 366;
      v44 = v55;
      if (v52)
      {
        return v44;
      }
    }

    else
    {
      v52 = v36 < 365;
      v44 = v55;
      if (v52)
      {
        return v44;
      }
    }

    sub_23B50030C(v44, -1);
  }

  return v44;
}

void (*sub_23B4E6760())(_BYTE *, uint64_t)
{
  OUTLINED_FUNCTION_34_0();
  sub_23B50AAC4();
  OUTLINED_FUNCTION_5();
  v69 = v2;
  v70 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_27();
  v4 = OUTLINED_FUNCTION_9_34(v3);
  OUTLINED_FUNCTION_5();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v63[-v11];
  v77 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v74 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_12_0();
  v67 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v78 = &v63[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v63[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131F68, &unk_23B50F2A0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v63[-v23];
  v25 = sub_23B50AEF4();
  OUTLINED_FUNCTION_5();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_27();
  v31 = v30 - v29;
  sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v72 = v33;
  v73 = v32;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27();
  v79 = v35 - v34;
  sub_23B50AEA4();
  result = __swift_getEnumTagSinglePayload(v24, 1, v25);
  if (result != 1)
  {
    (*(v27 + 32))(v31, v24, v25);
    sub_23B50AE04();
    (*(v27 + 8))(v31, v25);
    sub_23B50AA14();
    v66 = v0;
    sub_23B50A9F4();
    v64 = sub_23B4E7194(v21);
    v37 = v76;
    v38 = *(v76 + 104);
    v71 = *MEMORY[0x277CC9980];
    (v38)(v12);
    v39 = *MEMORY[0x277CC9988];
    v38(v9, v39, v4);
    v75 = v21;
    v65 = sub_23B50ADD4();
    v41 = v40;
    v42 = *(v37 + 8);
    v42(v9, v4);
    v42(v12, v4);
    if (v41 & 1) != 0 || (v38(v12, v71, v4), v38(v9, v39, v4), sub_23B50ADD4(), v44 = v43, v42(v9, v4), v42(v12, v4), (v44) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D08, &unk_23B514F20), v45 = (*(v76 + 80) + 32) & ~*(v76 + 80), v46 = swift_allocObject(), *(v46 + 16) = xmmword_23B50ED30, v38(v46 + v45, v71, v4), v47 = sub_23B4E74B0(v46), v48 = v67, sub_23B50A9F4(), v49 = v68, sub_23B50AE14(), , v50 = *(v74 + 8), v50(v48, v77), sub_23B50AAA4(), v51 = OUTLINED_FUNCTION_4_40(), v52(v51), (v49))
    {
      sub_23B3E3D54();
      v53 = swift_allocError();
      OUTLINED_FUNCTION_9_1(v53, v54);
      v55 = *(v74 + 8);
      v56 = v77;
      v55(v78, v77);
      v55(v75, v56);
      v57 = OUTLINED_FUNCTION_7_41();
      v58(v57);
    }

    else
    {
      v59 = v77;
      v50(v78, v77);
      v50(v75, v59);
      v60 = OUTLINED_FUNCTION_7_41();
      v61(v60);
      if (v64)
      {
        v62 = v47 < 8784;
        v55 = v65;
        if (v62)
        {
          return v55;
        }
      }

      else
      {
        v62 = v47 < 8760;
        v55 = v65;
        if (v62)
        {
          return v55;
        }
      }

      sub_23B5002C8(v55, -1);
    }

    return v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_23B4E6DD4()
{
  v51 = sub_23B50AE64();
  OUTLINED_FUNCTION_5();
  v48 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_27();
  v46 = v4 - v3;
  v52 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v47 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v44 = &v41 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_248();
  sub_23B50AE84();
  OUTLINED_FUNCTION_5();
  v49 = v18;
  v50 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27();
  v21 = v20 - v19;
  sub_23B50AE04();
  sub_23B50AA14();
  sub_23B4E7194(v0);
  sub_23B50A9F4();
  v22 = v21;
  v43 = v0;
  sub_23B4E72C4(v9);
  sub_23B4E77C0(&qword_280B43110, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v23 = v52;
  v24 = sub_23B50D104();
  v25 = v47;
  v26 = *(v47 + 8);
  v45 = v26;
  v27 = (v24 & 1) == 0;
  if (v24)
  {
    v28 = v12;
  }

  else
  {
    v28 = v9;
  }

  if (!v27)
  {
    v12 = v9;
  }

  v26(v28, v23);
  (*(v25 + 32))(v15, v12, v23);
  v29 = *MEMORY[0x277CC9998];
  v30 = v48;
  v42 = *(v48 + 104);
  v31 = v46;
  v32 = v51;
  v42(v46, v29, v51);
  v47 = sub_23B50AE74();
  v33 = *(v30 + 8);
  v33(v31, v32);
  v34 = v29;
  v35 = v32;
  v42(v31, v34, v32);
  v36 = v44;
  sub_23B50AE74();
  v33(v31, v35);
  v37 = v36;
  v38 = v52;
  v39 = v45;
  v45(v37, v52);
  v39(v43, v38);
  (*(v49 + 8))(v22, v50);
  return v47;
}

BOOL sub_23B4E7194(uint64_t a1)
{
  v1 = sub_23B50AE64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC9988], v1, v3);
  v6 = sub_23B50AE74();
  (*(v2 + 8))(v5, v1);
  return v6 % 100 && (v6 & 3) == 0 || v6 % 400 == 0;
}

uint64_t sub_23B4E72C4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_23B50AE64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  (*(v5 + 104))(v7, *MEMORY[0x277CC9998], v4, v9);
  sub_23B50AE24();
  (*(v5 + 8))(v7, v4);
  v12 = sub_23B50AD24();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a3, v11, v12);
  }

  sub_23B3CF54C(v11);
  return sub_23B50AC94();
}

uint64_t sub_23B4E74B0(uint64_t a1)
{
  v2 = sub_23B50AE64();
  OUTLINED_FUNCTION_5();
  v37 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v41 = &v32 - v9;
  if (!*(a1 + 16))
  {
    v11 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135720, &qword_23B525328);
  result = sub_23B50D5A4();
  v11 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v11;
  }

  v12 = 0;
  v40 = result + 56;
  v13 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v13 + 32) & ~v13);
  v39 = v37 + 16;
  v14 = (v37 + 8);
  v33 = (v37 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = *(v37 + 72);
    v38 = v12 + 1;
    v16 = *(v37 + 16);
    v16(v41, v35 + v15 * v12, v2);
    OUTLINED_FUNCTION_3_48();
    sub_23B4E77C0(&qword_280B42B38, v17, MEMORY[0x277CC99D8]);
    v18 = sub_23B50D0D4();
    v19 = ~(-1 << *(v11 + 32));
    while (1)
    {
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v40 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) == 0)
      {
        break;
      }

      v24 = v11;
      v16(v7, *(v11 + 48) + v20 * v15, v2);
      OUTLINED_FUNCTION_3_48();
      sub_23B4E77C0(&qword_27E135728, v25, MEMORY[0x277CC99E0]);
      v26 = sub_23B50D134();
      v27 = *v14;
      (*v14)(v7, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v11 = v24;
        goto LABEL_12;
      }

      v18 = v20 + 1;
      v11 = v24;
    }

    v28 = v41;
    *(v40 + 8 * v21) = v23 | v22;
    result = (*v33)(*(v11 + 48) + v20 * v15, v28, v2);
    v29 = *(v11 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    *(v11 + 16) = v31;
LABEL_12:
    v12 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23B4E77C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for StatisticsSpanFactory(uint64_t a1)
{
  result = qword_27E135730;
  if (!qword_27E135730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B4E787C(uint64_t a1)
{
  result = sub_23B50AEF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MonthTemperatureStatistics.init(month:averageLowTemperature:averageHighTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for MonthTemperatureStatistics(0);
  v8 = *(v7 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 24)];

  return (v13)(v11, a3, v9);
}

uint64_t MonthTemperatureStatistics.averageLowTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthTemperatureStatistics(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MonthTemperatureStatistics.averageLowTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_49() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MonthTemperatureStatistics.averageHighTemperature.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthTemperatureStatistics(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MonthTemperatureStatistics.averageHighTemperature.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_49() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t static MonthTemperatureStatistics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0), type metadata accessor for MonthTemperatureStatistics(0), sub_23B40B418(&qword_280B42B78, MEMORY[0x277CC87F0]), (sub_23B50D134() & 1) != 0))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4E7D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_23B50D834() & 1) != 0)
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

uint64_t sub_23B4E7E38(char a1)
{
  if (!a1)
  {
    return 0x68746E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

uint64_t sub_23B4E7E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E7D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4E7EBC(uint64_t a1)
{
  v2 = sub_23B4E80F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4E7EF8(uint64_t a1)
{
  v2 = sub_23B4E80F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonthTemperatureStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135740, &qword_23B525348);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E80F0();
  sub_23B50D974();
  v17[1] = 0;
  sub_23B50D7E4();
  if (!v2)
  {
    v11 = type metadata accessor for MonthTemperatureStatistics(0);
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

unint64_t sub_23B4E80F0()
{
  result = qword_27E135748;
  if (!qword_27E135748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135748);
  }

  return result;
}

uint64_t MonthTemperatureStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135750, &qword_23B525350);
  OUTLINED_FUNCTION_5();
  v36 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for MonthTemperatureStatistics(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v15);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4E80F0();
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
  sub_23B4E84DC(v25, v33);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_23B4E8540(v25);
}

uint64_t sub_23B4E84DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthTemperatureStatistics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4E8540(uint64_t a1)
{
  v2 = type metadata accessor for MonthTemperatureStatistics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MonthTemperatureStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4E86D8()
{
  result = qword_27E135758;
  if (!qword_27E135758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135758);
  }

  return result;
}

unint64_t sub_23B4E8730()
{
  result = qword_27E135760;
  if (!qword_27E135760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135760);
  }

  return result;
}

unint64_t sub_23B4E8788()
{
  result = qword_27E135768;
  if (!qword_27E135768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135768);
  }

  return result;
}

uint64_t InstantWeather.init(date:cloudCover:cloudCoverLow:cloudCoverMid:cloudCoverHigh:condition:symbolName:dewPoint:humidity:precipitationIntensity:pressure:pressureTrend:sunrise:sunset:isDaylight:temperature:apparentTemperature:highTemperature:lowTemperature:uvIndex:visibility:wind:metadata:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, _BYTE *a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_23B3CF54C(a15);
  sub_23B3CF54C(a14);
  v36 = *a2;
  LOBYTE(a2) = *a7;
  v53 = *a21;
  v37 = *(a21 + 8);
  sub_23B50AD24();
  OUTLINED_FUNCTION_2();
  (*(v38 + 32))(a8, a1);
  v39 = type metadata accessor for InstantWeather(0);
  *(a8 + v39[5]) = a9;
  *(a8 + v39[6]) = a10;
  *(a8 + v39[7]) = a11;
  *(a8 + v39[8]) = a12;
  *(a8 + v39[9]) = v36;
  v40 = (a8 + v39[10]);
  *v40 = a3;
  v40[1] = a4;
  v41 = v39[11];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v44 = *(v43 + 32);
  v44(a8 + v41, a5, v42);
  *(a8 + v39[12]) = a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  v45 = OUTLINED_FUNCTION_64();
  v46(v45);
  v47 = v39[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2();
  (*(v48 + 32))(a8 + v47, a6);
  *(a8 + v39[15]) = a2;
  *(a8 + v39[16]) = a16;
  v44(a8 + v39[17], a17, v42);
  v44(a8 + v39[18], a18, v42);
  v44(a8 + v39[19], a19, v42);
  v44(a8 + v39[20], a20, v42);
  v49 = a8 + v39[21];
  *v49 = v53;
  *(v49 + 8) = v37;
  v50 = v39[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  (*(v51 + 32))(a8 + v50, a22);
  OUTLINED_FUNCTION_10_27();
  sub_23B4E8B14();
  OUTLINED_FUNCTION_9_35();
  return sub_23B4E8B14();
}

uint64_t sub_23B4E8B14()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t InstantWeather.date.getter()
{
  OUTLINED_FUNCTION_7_0();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_65();

  return v1(v0);
}

uint64_t InstantWeather.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t InstantWeather.cloudCover.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCover.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverLow.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverLow.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverMid.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverMid.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.cloudCoverHigh.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 32)) = v1;
  return result;
}

uint64_t InstantWeather.cloudCoverHigh.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.condition.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t InstantWeather.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InstantWeather(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t InstantWeather.condition.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.symbolName.getter()
{
  type metadata accessor for InstantWeather(0);

  return OUTLINED_FUNCTION_65();
}

uint64_t InstantWeather.symbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InstantWeather(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InstantWeather.symbolName.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.dewPoint.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.dewPoint.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.dewPoint.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.humidity.setter()
{
  result = OUTLINED_FUNCTION_38_8();
  *(v0 + *(result + 48)) = v1;
  return result;
}

uint64_t InstantWeather.humidity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.precipitationIntensity.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.precipitationIntensity.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.precipitationIntensity.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.pressure.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.pressure.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.pressure.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.pressureTrend.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather(v2);
  *v0 = *(v1 + *(result + 60));
  return result;
}

uint64_t InstantWeather.pressureTrend.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for InstantWeather(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t InstantWeather.pressureTrend.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.isDaylight.setter(char a1)
{
  result = type metadata accessor for InstantWeather(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t InstantWeather.isDaylight.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.temperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.temperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.temperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.apparentTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.apparentTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.apparentTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.highTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.highTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.highTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.lowTemperature.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.lowTemperature.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.lowTemperature.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.uvIndex.getter()
{
  v2 = OUTLINED_FUNCTION_7_0();
  result = type metadata accessor for InstantWeather(v2);
  v4 = (v1 + *(result + 84));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t InstantWeather.uvIndex.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for InstantWeather(0);
  v5 = v1 + *(result + 84);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t InstantWeather.uvIndex.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.visibility.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_24();

  return v2(v1);
}

uint64_t InstantWeather.visibility.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_64();

  return v2(v1);
}

uint64_t InstantWeather.visibility.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.wind.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  return sub_23B4EBECC();
}

uint64_t InstantWeather.wind.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  OUTLINED_FUNCTION_10_27();
  return sub_23B4E9CCC();
}

uint64_t InstantWeather.wind.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t InstantWeather.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_7_0();
  type metadata accessor for InstantWeather(v0);
  return sub_23B4EBECC();
}

uint64_t InstantWeather.metadata.setter()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  OUTLINED_FUNCTION_9_35();
  return sub_23B4E9CCC();
}

uint64_t sub_23B4E9CCC()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t InstantWeather.metadata.modify()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for InstantWeather(v0);
  return OUTLINED_FUNCTION_44();
}

uint64_t sub_23B4E9D5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766F4364756F6C63 && a2 == 0xEA00000000007265;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x766F4364756F6C63 && a2 == 0xED0000776F4C7265;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x766F4364756F6C63 && a2 == 0xED000064694D7265;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x766F4364756F6C63 && a2 == 0xEE00686769487265;
          if (v9 || (sub_23B50D834() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
            if (v10 || (sub_23B50D834() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
              if (v11 || (sub_23B50D834() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x746E696F50776564 && a2 == 0xE800000000000000;
                if (v12 || (sub_23B50D834() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x79746964696D7568 && a2 == 0xE800000000000000;
                  if (v13 || (sub_23B50D834() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000016 && 0x800000023B528C20 == a2;
                    if (v14 || (sub_23B50D834() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
                      if (v15 || (sub_23B50D834() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6572757373657270 && a2 == 0xED0000646E657254;
                        if (v16 || (sub_23B50D834() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468;
                          if (v17 || (sub_23B50D834() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                            if (v18 || (sub_23B50D834() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000023B529F60 == a2;
                              if (v19 || (sub_23B50D834() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x706D655468676968 && a2 == 0xEF65727574617265;
                                if (v20 || (sub_23B50D834() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x65706D6554776F6CLL && a2 == 0xEE00657275746172;
                                  if (v21 || (sub_23B50D834() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7865646E497675 && a2 == 0xE700000000000000;
                                    if (v22 || (sub_23B50D834() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
                                      if (v23 || (sub_23B50D834() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 1684957559 && a2 == 0xE400000000000000;
                                        if (v24 || (sub_23B50D834() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = sub_23B50D834();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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

unint64_t sub_23B4EA3B4(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x766F4364756F6C63;
      break;
    case 2:
    case 3:
    case 4:
      result = 0x766F4364756F6C63;
      break;
    case 5:
      result = 0x6F697469646E6F63;
      break;
    case 6:
      result = 0x614E6C6F626D7973;
      break;
    case 7:
      result = 0x746E696F50776564;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
    case 11:
      result = 0x6572757373657270;
      break;
    case 12:
      result = 0x67696C7961447369;
      break;
    case 13:
      result = 0x74617265706D6574;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x706D655468676968;
      break;
    case 16:
      result = 0x65706D6554776F6CLL;
      break;
    case 17:
      result = 0x7865646E497675;
      break;
    case 18:
      result = 0x696C696269736976;
      break;
    case 19:
      result = 1684957559;
      break;
    case 20:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4EA608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4E9D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4EA630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4EA3AC();
  *a1 = result;
  return result;
}

uint64_t sub_23B4EA658(uint64_t a1)
{
  v2 = sub_23B4EAFB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EA694(uint64_t a1)
{
  v2 = sub_23B4EAFB0();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static InstantWeather.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_23B50ACD4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InstantWeather(0);
  OUTLINED_FUNCTION_13_0(*(v4 + 20));
  if (!v11)
  {
    return 0;
  }

  v6 = v5;
  OUTLINED_FUNCTION_13_0(v5[6]);
  if (!v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[7]);
  if (!v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[8]);
  if (!v11 || (sub_23B3CAE4C(*(a1 + v6[9]), *(a2 + v6[9])) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[10];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (sub_23B50D834() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v12, v13, &qword_23B511AC0, v14);
  if ((sub_23B50D134() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_0(v6[12]);
  if (!v11)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_3_35();
  v18 = sub_23B3F1C50(v15, v16, &unk_23B5100F0, v17);
  if ((OUTLINED_FUNCTION_37_12(v18) & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_3_35();
  v22 = sub_23B3F1C50(v19, v20, &qword_23B5100E8, v21);
  if ((OUTLINED_FUNCTION_37_12(v22) & 1) == 0)
  {
    return 0;
  }

  if ((sub_23B3E5D18(*(a1 + v6[15]), *(a2 + v6[15])) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v6[16]) != *(a2 + v6[16]))
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    return 0;
  }

  v23 = v6[21];
  v24 = a1 + v23;
  v25 = *(a1 + v23);
  v26 = a2 + v23;
  if (v25 != *v26)
  {
    return 0;
  }

  v27 = *(v26 + 8);
  v28 = UVIndex.ExposureCategory.rawValue.getter(*(v24 + 8));
  v30 = v29;
  if (v28 == UVIndex.ExposureCategory.rawValue.getter(v27) && v30 == v31)
  {
  }

  else
  {
    v33 = sub_23B50D834();

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_3_35();
  sub_23B3F1C50(v34, v35, &qword_23B50EFB0, v36);
  if ((sub_23B50D134() & 1) == 0 || !static Wind.== infix(_:_:)((a1 + v6[23]), (a2 + v6[23])))
  {
    return 0;
  }

  v37 = v6[24];

  return static WeatherMetadata.== infix(_:_:)(a1 + v37, a2 + v37);
}

uint64_t InstantWeather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135770, &qword_23B525520);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EAFB0();
  sub_23B50D974();
  LOBYTE(v31) = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v11, v12, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_26();
  sub_23B50D7F4();
  if (!v2)
  {
    v13 = type metadata accessor for InstantWeather(0);
    OUTLINED_FUNCTION_14_4(1);
    OUTLINED_FUNCTION_14_4(2);
    OUTLINED_FUNCTION_14_4(3);
    OUTLINED_FUNCTION_14_4(4);
    LOBYTE(v31) = *(v3 + v13[9]);
    v33 = 5;
    sub_23B3F03A8();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 6;
    OUTLINED_FUNCTION_26();
    sub_23B50D7A4();
    LOBYTE(v31) = 7;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v15, &qword_27E131E30, &qword_23B511AC0, v16);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    OUTLINED_FUNCTION_14_4(8);
    v30[1] = v14;
    LOBYTE(v31) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v17, &qword_27E131E10, &unk_23B5100F0, v18);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v19, &qword_27E132158, &qword_23B5100E8, v20);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = *(v3 + v13[15]);
    v33 = 11;
    sub_23B41A510();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 12;
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7B4();
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_11_24();
    v21 = (v3 + v13[21]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 8);
    v31 = v22;
    v32 = v21;
    v33 = 17;
    sub_23B3F03FC();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    OUTLINED_FUNCTION_16();
    sub_23B3F1C50(v23, &qword_27E131E28, &qword_23B50EFB0, v24);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 19;
    type metadata accessor for Wind(0);
    OUTLINED_FUNCTION_26_18();
    sub_23B4EC328(v25, v26, &protocol conformance descriptor for Wind);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
    LOBYTE(v31) = 20;
    type metadata accessor for WeatherMetadata(0);
    OUTLINED_FUNCTION_25_13();
    sub_23B4EC328(v27, v28, &protocol conformance descriptor for WeatherMetadata);
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_26();
    sub_23B50D7F4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4EAFB0()
{
  result = qword_27E135778;
  if (!qword_27E135778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135778);
  }

  return result;
}

uint64_t InstantWeather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v136 = type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v137 = v5 - v4;
  v135 = type metadata accessor for Wind(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27();
  v134 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_5();
  v144 = v10;
  v145 = v9;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v133 = &v130 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132158, &qword_23B5100E8);
  OUTLINED_FUNCTION_5();
  v146 = v13;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v140 = &v130 - v15;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E10, &unk_23B5100F0);
  OUTLINED_FUNCTION_5();
  v147 = v16;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v141 = &v130 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  OUTLINED_FUNCTION_5();
  v156 = v19;
  v157 = v20;
  MEMORY[0x28223BE20](v19);
  v132 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v139 = &v130 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v130 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v130 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v130 - v31;
  v33 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v150 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_27();
  v38 = v37 - v36;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135780, &qword_23B525528);
  OUTLINED_FUNCTION_5();
  v142 = v39;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v40);
  v42 = &v130 - v41;
  v158 = type metadata accessor for InstantWeather(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_27();
  v153 = a1;
  v154 = v45 - v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EAFB0();
  v151 = v42;
  v46 = v155;
  sub_23B50D964();
  v143 = v33;
  if (v46)
  {
    v155 = v46;
    LOBYTE(v50) = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    LODWORD(v55) = 0;
    LODWORD(v151) = 0;
    LODWORD(v152) = 0;
  }

  else
  {
    v47 = v32;
    v131 = v29;
    v54 = v142;
    LOBYTE(v159) = 0;
    OUTLINED_FUNCTION_3_50();
    sub_23B4EC328(v48, v49, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_30_12();
    sub_23B50D734();
    v63 = v154;
    (*(v150 + 32))(v154, v38, v33);
    OUTLINED_FUNCTION_14_29(1);
    sub_23B50D704();
    v64 = v158;
    *(v63 + v158[5]) = v65;
    OUTLINED_FUNCTION_14_29(2);
    sub_23B50D704();
    *(v63 + v64[6]) = v66;
    OUTLINED_FUNCTION_14_29(3);
    sub_23B50D704();
    *(v63 + v64[7]) = v67;
    OUTLINED_FUNCTION_14_29(4);
    sub_23B50D704();
    *(v63 + v64[8]) = v68;
    v161 = 5;
    sub_23B3F0450();
    sub_23B50D734();
    *(v63 + v64[9]) = v159;
    OUTLINED_FUNCTION_14_29(6);
    v69 = sub_23B50D6E4();
    v70 = (v63 + v64[10]);
    *v70 = v69;
    v70[1] = v71;
    LOBYTE(v159) = 7;
    OUTLINED_FUNCTION_3_8(&qword_27E132090, &qword_27E131E30, &qword_23B511AC0);
    OUTLINED_FUNCTION_74();
    v53 = v47;
    v72 = v156;
    sub_23B50D734();
    v50 = (v157 + 32);
    v73 = v72;
    v55 = *(v157 + 32);
    v55(v63 + v158[11], v47, v73);
    OUTLINED_FUNCTION_14_29(8);
    sub_23B50D704();
    v155 = 0;
    *(v63 + v158[12]) = v74;
    LOBYTE(v159) = 9;
    OUTLINED_FUNCTION_3_8(&qword_27E132018, &qword_27E131E10, &unk_23B5100F0);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_28_11(v149, v75, v76, v77, v78);
    v155 = 0;
    v79 = OUTLINED_FUNCTION_33_10(v158[13]);
    v80(v79, v141, v149);
    LOBYTE(v159) = 10;
    OUTLINED_FUNCTION_3_8(&qword_27E132A28, &qword_27E132158, &qword_23B5100E8);
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_28_11(v148, v81, v82, v83, v84);
    v155 = 0;
    v85 = OUTLINED_FUNCTION_33_10(v158[14]);
    v86(v85, v140, v148);
    v161 = 11;
    v87 = sub_23B41A5B8();
    OUTLINED_FUNCTION_28_11(&type metadata for PressureTrend, &v161, v88, v89, v87);
    v155 = 0;
    *(v154 + v158[15]) = v159;
    OUTLINED_FUNCTION_14_29(12);
    v90 = sub_23B50D6F4();
    v155 = 0;
    *(v154 + v158[16]) = v90 & 1;
    OUTLINED_FUNCTION_60(13);
    v51 = v151;
    sub_23B50D734();
    v155 = 0;
    v91 = OUTLINED_FUNCTION_40_9(v158[17]);
    v52 = v156;
    v55(v91, v131, v156);
    OUTLINED_FUNCTION_60(14);
    OUTLINED_FUNCTION_30_12();
    v92 = v155;
    sub_23B50D734();
    v155 = v92;
    if (v92)
    {
      v93 = OUTLINED_FUNCTION_22_17();
      v94(v93);
      OUTLINED_FUNCTION_7_42();
      v53 = 1;
      v54 = 1;
      LODWORD(v55) = 1;
    }

    else
    {
      v95 = OUTLINED_FUNCTION_40_9(v158[18]);
      v52 = v156;
      v55(v95, v26, v156);
      OUTLINED_FUNCTION_60(15);
      OUTLINED_FUNCTION_30_12();
      v96 = v155;
      sub_23B50D734();
      v155 = v96;
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_22_17();
        v98(v97);
        LODWORD(v152) = 0;
        LOBYTE(v50) = 1;
        OUTLINED_FUNCTION_13_25();
        OUTLINED_FUNCTION_32_11();
      }

      else
      {
        v99 = OUTLINED_FUNCTION_40_9(v158[19]);
        v52 = v156;
        v55(v99, v139, v156);
        OUTLINED_FUNCTION_60(16);
        OUTLINED_FUNCTION_30_12();
        v100 = v155;
        sub_23B50D734();
        v155 = v100;
        if (!v100)
        {
          v104 = OUTLINED_FUNCTION_40_9(v158[20]);
          v55(v104, v132, v156);
          v161 = 17;
          v105 = sub_23B3F04A4();
          OUTLINED_FUNCTION_28_11(&type metadata for UVIndex, &v161, v106, v107, v105);
          v155 = 0;
          v108 = v160;
          v109 = v154 + v158[21];
          *v109 = v159;
          *(v109 + 8) = v108;
          LOBYTE(v159) = 18;
          OUTLINED_FUNCTION_3_8(&qword_27E131E60, &qword_27E131E28, &qword_23B50EFB0);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11(v145, v110, v111, v112, v113);
          v155 = 0;
          v114 = OUTLINED_FUNCTION_33_10(v158[22]);
          v115(v114, v133);
          LOBYTE(v159) = 19;
          OUTLINED_FUNCTION_26_18();
          sub_23B4EC328(v116, v117, &protocol conformance descriptor for Wind);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11(v135, v118, v119, v120, v121);
          v155 = 0;
          OUTLINED_FUNCTION_10_27();
          sub_23B4E8B14();
          LOBYTE(v159) = 20;
          OUTLINED_FUNCTION_25_13();
          sub_23B4EC328(v122, v123, &protocol conformance descriptor for WeatherMetadata);
          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_28_11(v136, v124, v125, v126, v127);
          v155 = 0;
          v128 = OUTLINED_FUNCTION_22_17();
          v129(v128);
          OUTLINED_FUNCTION_9_35();
          sub_23B4E8B14();
          sub_23B4EBECC();
          __swift_destroy_boxed_opaque_existential_1(v153);
          return sub_23B4EBF1C();
        }

        v101 = OUTLINED_FUNCTION_22_17();
        v102(v101);
        LOBYTE(v50) = 1;
        OUTLINED_FUNCTION_13_25();
        OUTLINED_FUNCTION_32_11();
        LODWORD(v152) = v103;
      }
    }
  }

  v56 = v154;
  result = __swift_destroy_boxed_opaque_existential_1(v153);
  if (v50)
  {
    result = (*(v150 + 8))(v56, v143);
    if (v51)
    {
      goto LABEL_6;
    }
  }

  else if (v51)
  {
LABEL_6:

    if ((v52 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (!v52)
  {
LABEL_7:
    if (v53)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = (*(v157 + 8))(v56 + v158[11], v156);
  if (v53)
  {
LABEL_8:
    v58 = v158;
    result = (*(v147 + 8))(v56 + v158[13], v149);
    if ((v54 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v58 = v158;
  if (!v54)
  {
LABEL_9:
    if (v55)
    {
      goto LABEL_10;
    }

LABEL_17:
    if (!v151)
    {
      goto LABEL_21;
    }

    v59 = *(v157 + 8);
LABEL_19:
    v61 = OUTLINED_FUNCTION_39_11(v58[18]);
    result = v59(v61);
    if (v152)
    {
      goto LABEL_23;
    }

    return result;
  }

LABEL_16:
  result = (*(v146 + 8))(v56 + v58[14], v148);
  if ((v55 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v59 = *(v157 + 8);
  v60 = OUTLINED_FUNCTION_39_11(v58[17]);
  result = v59(v60);
  if (v151)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (v152)
  {
    v59 = *(v157 + 8);
LABEL_23:
    v62 = OUTLINED_FUNCTION_39_11(v58[19]);
    return v59(v62);
  }

  return result;
}

uint64_t sub_23B4EBECC()
{
  v1 = OUTLINED_FUNCTION_67();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_65();
  v4(v3);
  return v0;
}

uint64_t sub_23B4EBF1C()
{
  v1 = OUTLINED_FUNCTION_19();
  v2(v1);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t InstantWeather.debugDescription.getter()
{
  BYTE8(v9) = 0;
  sub_23B50D5C4();
  MEMORY[0x23EE9D460](0x3D65746164, 0xE500000000000000);
  v1 = type metadata accessor for InstantWeather(0);
  sub_23B50AD24();
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v2, v3, MEMORY[0x277CC95B8]);
  v4 = sub_23B50D824();
  MEMORY[0x23EE9D460](v4);

  MEMORY[0x23EE9D460](0xD000000000000011, 0x800000023B538A90);
  type metadata accessor for WeatherMetadata(0);
  v5 = sub_23B50D824();
  MEMORY[0x23EE9D460](v5);

  MEMORY[0x23EE9D460](0x7469646E6F63202CLL, 0xEC0000003D6E6F69);
  *&v9 = *(v0 + *(v1 + 36));
  v6 = WeatherCondition.description.getter();
  MEMORY[0x23EE9D460](v6);

  MEMORY[0x23EE9D460](0x7265706D6574202CLL, 0xEE003D6572757461);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E30, &qword_23B511AC0);
  sub_23B3F1C50(&qword_280B42B70, &qword_27E131E30, &qword_23B511AC0, MEMORY[0x277CC8800]);
  v7 = sub_23B50D824();
  MEMORY[0x23EE9D460](v7);

  return *(&v9 + 1);
}

uint64_t InstantWeather.isExpired.getter()
{
  v0 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27();
  v6 = v5 - v4;
  sub_23B50B9D4();
  sub_23B50B994();
  type metadata accessor for InstantWeather(0);
  type metadata accessor for WeatherMetadata(0);
  OUTLINED_FUNCTION_3_50();
  sub_23B4EC328(v7, v8, MEMORY[0x277CC9590]);
  v9 = sub_23B50D114();
  (*(v2 + 8))(v6, v0);
  return v9 & 1;
}

uint64_t sub_23B4EC328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for InstantWeather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4EC450()
{
  result = qword_27E135788;
  if (!qword_27E135788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135788);
  }

  return result;
}

unint64_t sub_23B4EC4A8()
{
  result = qword_27E135790;
  if (!qword_27E135790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135790);
  }

  return result;
}

unint64_t sub_23B4EC500()
{
  result = qword_27E135798;
  if (!qword_27E135798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135798);
  }

  return result;
}

uint64_t WeatherServiceOptions.init(dailyDateInterval:hourlyDateInterval:dailyRelativeRange:hourlyRelativeRange:periodicRelativeRange:marineHourlyRelativeRange:instantQueryOptions:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v44 = a3[1];
  v45 = *a3;
  v43 = *(a3 + 16);
  v41 = a4[1];
  v42 = *a4;
  v40 = *(a4 + 16);
  v47 = a6[1];
  v48 = *a6;
  v46 = *(a6 + 16);
  v10 = sub_23B50AA24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = type metadata accessor for WeatherServiceOptions(0);
  v15 = v14[5];
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v10);
  v19 = a9 + v14[6];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = a9 + v14[7];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 2;
  v21 = v14[8];
  type metadata accessor for WeatherServicePeriodicRelativeRange(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = a9 + v14[9];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 2;
  v27 = v14[10];
  type metadata accessor for InstantWeatherQueryOptions(0);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = v14[11];
  sub_23B50AEF4();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_23B39A5A8(a1, a9, &qword_27E131F00, &unk_23B5257B0);
  sub_23B39A5A8(a2, a9 + v15, &qword_27E131F00, &unk_23B5257B0);
  *v19 = v45;
  *(v19 + 8) = v44;
  *(v19 + 16) = v43;
  *v20 = v42;
  *(v20 + 8) = v41;
  *(v20 + 16) = v40;
  sub_23B39A5A8(a5, a9 + v21, &qword_27E131F58, &qword_23B50F290);
  *v26 = v48;
  *(v26 + 8) = v47;
  *(v26 + 16) = v46;
  sub_23B39A5A8(a7, a9 + v27, &qword_27E131F70, &unk_23B5192B0);
  return sub_23B39A5A8(a8, a9 + v32, &qword_27E131F68, &unk_23B50F2A0);
}

double WeatherServiceOptions.dailyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 24)).n128_u64[0];
  return result;
}

double WeatherServiceOptions.hourlyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 28)).n128_u64[0];
  return result;
}

double WeatherServiceOptions.marineHourlyRelativeRange.getter()
{
  v0 = OUTLINED_FUNCTION_6_28();
  *&result = OUTLINED_FUNCTION_0_57(*(v0 + 36)).n128_u64[0];
  return result;
}

uint64_t static WeatherMetadata.mock()@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131FC0, &qword_23B515170);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_12();
  v51 = v2;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v3);
  v53 = &v47 - v4;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  MEMORY[0x28223BE20](v8);
  v55 = &v47 - v9;
  v10 = sub_23B50AB34();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v49 = v14;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v15);
  v50 = &v47 - v16;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v17);
  v54 = &v47 - v18;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v19);
  v56 = &v47 - v20;
  v21 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_12();
  v57 = v25;
  OUTLINED_FUNCTION_2_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - v27;
  if (qword_27E131C18 != -1)
  {
    swift_once();
  }

  v52 = v7;
  v29 = __swift_project_value_buffer(v21, qword_27E15A730);
  v30 = *(v23 + 16);
  v30(v28, v29, v21);
  if (qword_27E131C20 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v21, qword_27E15A748);
  v32 = v57;
  v30(v57, v31, v21);
  v33 = type metadata accessor for WeatherMetadata(0);
  v34 = v58;
  v47 = v33[8];
  v48 = v28;
  *&v58[v47] = 0;
  v30(v34, v28, v21);
  v30(&v34[v33[5]], v32, v21);
  *&v34[v33[6]] = 0x4042A95810624DD3;
  *&v34[v33[7]] = 0xC05E800000000000;
  v35 = v55;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v35);
  if (v37)
  {
    __break(1u);
    goto LABEL_11;
  }

  v38 = *(v12 + 32);
  v38(v56, v35, v10);
  v39 = v52;
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v39);
  v40 = v53;
  if (v37)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v38(v54, v39, v10);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v40);
  v41 = v51;
  if (v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38(v50, v40, v10);
  sub_23B50AB04();
  result = OUTLINED_FUNCTION_1_43(v41);
  if (!v37)
  {
    v42 = *(v23 + 8);
    v42(v57, v21);
    v42(v48, v21);
    v38(v49, v41, v10);
    type metadata accessor for WeatherAttribution.Storage(0);
    swift_allocObject();
    sub_23B42E3E8();
    v44 = v43;
    v45 = v58;
    v46 = v47;

    *&v45[v46] = v44;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t DayPrecipitationSummary.init(date:precipitationAmount:snowfallAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  (*(v8 + 32))(a4, a1);
  v9 = type metadata accessor for DayPrecipitationSummary(0);
  v10 = *(v9 + 20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v15 = *(v12 + 32);
  v15(a4 + v10, a2, v11);
  v13 = a4 + *(v9 + 24);

  return (v15)(v13, a3, v11);
}

uint64_t DayPrecipitationSummary.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t DayPrecipitationSummary.date.setter()
{
  OUTLINED_FUNCTION_19();
  sub_23B50AD24();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t DayPrecipitationSummary.precipitationAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationSummary(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayPrecipitationSummary.precipitationAmount.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for DayPrecipitationSummary(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DayPrecipitationSummary.precipitationAmount.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPrecipitationSummary(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t DayPrecipitationSummary.snowfallAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DayPrecipitationSummary(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DayPrecipitationSummary.snowfallAmount.setter()
{
  v2 = OUTLINED_FUNCTION_19();
  v3 = *(type metadata accessor for DayPrecipitationSummary(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*DayPrecipitationSummary.snowfallAmount.modify())()
{
  v0 = OUTLINED_FUNCTION_19();
  type metadata accessor for DayPrecipitationSummary(v0);
  return GEOLocationCoordinate2DMake;
}

uint64_t static DayPrecipitationSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_23B50ACD4() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0), type metadata accessor for DayPrecipitationSummary(0), sub_23B3E38E8(&qword_280B42BC0, MEMORY[0x277CC87F0]), (sub_23B50D134()))
  {
    return sub_23B50D134() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B4ED6BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000023B5282C0 == a2;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C6C6166776F6E73 && a2 == 0xEE00746E756F6D41)
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

uint64_t sub_23B4ED7DC(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6C6C6166776F6E73;
}

uint64_t sub_23B4ED844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4ED6BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4ED86C(uint64_t a1)
{
  v2 = sub_23B4EDAD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4ED8A8(uint64_t a1)
{
  v2 = sub_23B4EDAD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DayPrecipitationSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1357A0, &qword_23B525818);
  OUTLINED_FUNCTION_5();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EDAD4();
  sub_23B50D974();
  v17[1] = 0;
  sub_23B50AD24();
  sub_23B402DA8(&qword_280B42B50, MEMORY[0x277CC9580]);
  sub_23B50D7F4();
  if (!v2)
  {
    v11 = type metadata accessor for DayPrecipitationSummary(0);
    v12 = *(v11 + 20);
    v17[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
    sub_23B3E38E8(&qword_280B42BD0, MEMORY[0x277CC87D8]);
    OUTLINED_FUNCTION_2_2(v3 + v12, v17);
    v13 = *(v11 + 24);
    v16 = 2;
    OUTLINED_FUNCTION_2_2(v3 + v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_23B4EDAD4()
{
  result = qword_27E1357A8;
  if (!qword_27E1357A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357A8);
  }

  return result;
}

uint64_t DayPrecipitationSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E28, &qword_23B50EFB0);
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
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1357B0, &qword_23B525820);
  OUTLINED_FUNCTION_5();
  v36 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for DayPrecipitationSummary(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EDAD4();
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
  sub_23B3E38E8(&qword_27E131E60, MEMORY[0x277CC87F8]);
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
  sub_23B4EDFE0(v28, v32);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_23B4EE044(v28);
}

uint64_t sub_23B4EDFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayPrecipitationSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4EE044(uint64_t a1)
{
  v2 = type metadata accessor for DayPrecipitationSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DayPrecipitationSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4EE1DC()
{
  result = qword_27E1357B8;
  if (!qword_27E1357B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357B8);
  }

  return result;
}

unint64_t sub_23B4EE234()
{
  result = qword_27E1357C0;
  if (!qword_27E1357C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357C0);
  }

  return result;
}

unint64_t sub_23B4EE28C()
{
  result = qword_27E1357C8;
  if (!qword_27E1357C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357C8);
  }

  return result;
}

uint64_t WeatherSeverity.description.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_48();
      goto LABEL_16;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_4_42();
      goto LABEL_16;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_48();
      return sub_23B50AAD4();
    case 4:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      goto LABEL_16;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_5_30();
LABEL_16:
      OUTLINED_FUNCTION_2_12();
      return sub_23B50AAD4();
  }
}

uint64_t WeatherSeverity.accessibilityDescription.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_280B43260 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 2:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_4_42();
      break;
    case 3:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      break;
    case 4:
      if (qword_280B43260 != -1)
      {
LABEL_17:
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

LABEL_13:
      OUTLINED_FUNCTION_3_52();
      break;
    default:
      if (qword_280B43260 != -1)
      {
        OUTLINED_FUNCTION_0_11(&qword_280B43260);
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_5_30();
      break;
  }

  OUTLINED_FUNCTION_2_12();
  return sub_23B50AAD4();
}

WeatherKit::WeatherSeverity_optional __swiftcall WeatherSeverity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherSeverityKind.rawValue.getter()
{
  result = 0x726F6E696DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6574617265646F6DLL;
      break;
    case 2:
      result = 0x657265766573;
      break;
    case 3:
      result = 0x656D6572747865;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

WeatherKit::WeatherSeverityKind_optional __swiftcall WeatherSeverityKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B50D664();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23B4EE928()
{
  result = qword_27E1357D0;
  if (!qword_27E1357D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1357D8, &qword_23B525A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357D0);
  }

  return result;
}

unint64_t sub_23B4EE990()
{
  result = qword_27E1357E0;
  if (!qword_27E1357E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357E0);
  }

  return result;
}

unint64_t sub_23B4EE9F4()
{
  result = qword_27E1357E8;
  if (!qword_27E1357E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357E8);
  }

  return result;
}

_BYTE *sub_23B4EEBC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B4EECA4()
{
  result = qword_27E1357F0;
  if (!qword_27E1357F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357F0);
  }

  return result;
}

unint64_t sub_23B4EECF8()
{
  result = qword_27E1357F8;
  if (!qword_27E1357F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1357F8);
  }

  return result;
}

uint64_t sub_23B4EED70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x686769486863756DLL && a2 == 0xEA00000000007265;
  if (v4 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726568676968 && a2 == 0xE600000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000;
      if (v7 || (sub_23B50D834() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265776F6CLL && a2 == 0xE500000000000000;
        if (v8 || (sub_23B50D834() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65776F4C6863756DLL && a2 == 0xE900000000000072)
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

uint64_t sub_23B4EEF1C(char a1)
{
  result = 0x686769486863756DLL;
  switch(a1)
  {
    case 1:
      result = 0x726568676968;
      break;
    case 2:
      result = 0x6C616D726F6ELL;
      break;
    case 3:
      result = 0x7265776F6CLL;
      break;
    case 4:
      result = 0x65776F4C6863756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4EEFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4EED70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4EEFE4(uint64_t a1)
{
  v2 = sub_23B4EF708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF020(uint64_t a1)
{
  v2 = sub_23B4EF708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF05C(uint64_t a1)
{
  v2 = sub_23B4EF858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF098(uint64_t a1)
{
  v2 = sub_23B4EF858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF0D4(uint64_t a1)
{
  v2 = sub_23B4EF7B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF110(uint64_t a1)
{
  v2 = sub_23B4EF7B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF14C(uint64_t a1)
{
  v2 = sub_23B4EF8AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF188(uint64_t a1)
{
  v2 = sub_23B4EF8AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF1C4(uint64_t a1)
{
  v2 = sub_23B4EF75C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF200(uint64_t a1)
{
  v2 = sub_23B4EF75C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4EF23C(uint64_t a1)
{
  v2 = sub_23B4EF804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4EF278(uint64_t a1)
{
  v2 = sub_23B4EF804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Deviation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135800, &qword_23B525CD0);
  OUTLINED_FUNCTION_5();
  v49 = v4;
  v50 = v3;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v48 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135808, &qword_23B525CD8);
  OUTLINED_FUNCTION_5();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135810, &qword_23B525CE0);
  OUTLINED_FUNCTION_5();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135818, &qword_23B525CE8);
  OUTLINED_FUNCTION_5();
  v40 = v16;
  v41 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_52();
  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135820, &qword_23B525CF0);
  OUTLINED_FUNCTION_5();
  v37 = v20;
  v38 = v19;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135828, &qword_23B525CF8);
  OUTLINED_FUNCTION_5();
  v26 = v25;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v36 - v28;
  v30 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EF708();
  sub_23B50D974();
  v31 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v52 = 1;
      sub_23B4EF858();
      v32 = v39;
      OUTLINED_FUNCTION_3_53(&type metadata for Deviation.HigherCodingKeys, &v52);
      v34 = v40;
      v33 = v41;
      goto LABEL_7;
    case 2:
      v53 = 2;
      sub_23B4EF804();
      v32 = v42;
      OUTLINED_FUNCTION_3_53(&type metadata for Deviation.NormalCodingKeys, &v53);
      v34 = v43;
      v33 = v44;
      goto LABEL_7;
    case 3:
      v54 = 3;
      sub_23B4EF7B0();
      v32 = v45;
      OUTLINED_FUNCTION_3_53(&type metadata for Deviation.LowerCodingKeys, &v54);
      v34 = v46;
      v33 = v47;
      goto LABEL_7;
    case 4:
      v55 = 4;
      sub_23B4EF75C();
      v32 = v48;
      OUTLINED_FUNCTION_3_53(&type metadata for Deviation.MuchLowerCodingKeys, &v55);
      v34 = v49;
      v33 = v50;
LABEL_7:
      (*(v34 + 8))(v32, v33);
      break;
    default:
      v51 = 0;
      sub_23B4EF8AC();
      sub_23B50D764();
      (*(v37 + 8))(v23, v38);
      break;
  }

  return (*v31)(v29, v24);
}

unint64_t sub_23B4EF708()
{
  result = qword_27E135830;
  if (!qword_27E135830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135830);
  }

  return result;
}

unint64_t sub_23B4EF75C()
{
  result = qword_27E135838;
  if (!qword_27E135838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135838);
  }

  return result;
}

unint64_t sub_23B4EF7B0()
{
  result = qword_27E135840;
  if (!qword_27E135840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135840);
  }

  return result;
}

unint64_t sub_23B4EF804()
{
  result = qword_27E135848;
  if (!qword_27E135848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135848);
  }

  return result;
}

unint64_t sub_23B4EF858()
{
  result = qword_27E135850;
  if (!qword_27E135850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135850);
  }

  return result;
}

unint64_t sub_23B4EF8AC()
{
  result = qword_27E135858;
  if (!qword_27E135858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135858);
  }

  return result;
}

uint64_t Deviation.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

uint64_t Deviation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135860, &qword_23B525D00);
  OUTLINED_FUNCTION_5();
  v64 = v3;
  v65 = v4;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52();
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135868, &qword_23B525D08);
  OUTLINED_FUNCTION_5();
  v62 = v7;
  v63 = v8;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52();
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135870, &qword_23B525D10);
  OUTLINED_FUNCTION_5();
  v60 = v12;
  v61 = v11;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52();
  v66 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135878, &qword_23B525D18);
  OUTLINED_FUNCTION_5();
  v58 = v16;
  v59 = v15;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135880, &qword_23B525D20);
  OUTLINED_FUNCTION_5();
  v57 = v21;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E135888, &unk_23B525D28);
  OUTLINED_FUNCTION_5();
  v68 = v26;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B4EF708();
  v30 = v71;
  sub_23B50D964();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v20;
  v56 = v24;
  v71 = v19;
  v31 = v69;
  v32 = v70;
  v33 = v29;
  sub_23B50D744();
  result = sub_23B40D8C8();
  if (v36 == v37 >> 1)
  {
    v38 = v68;
LABEL_9:
    v47 = sub_23B50D5F4();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v49 = &type metadata for Deviation;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v33, v25);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
  }

  else
  {
    v53 = *(v35 + v36);
    v39 = sub_23B40D8C4();
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v54 = v39;
    if (v41 != v43 >> 1)
    {
      v38 = v68;
      v33 = v29;
      goto LABEL_9;
    }

    v44 = v67;
    v45 = v68;
    switch(v53)
    {
      case 1:
        v73 = 1;
        sub_23B4EF858();
        v31 = v71;
        OUTLINED_FUNCTION_1_44(&type metadata for Deviation.HigherCodingKeys, &v73);
        swift_unknownObjectRelease();
        v51 = v58;
        v50 = v59;
        goto LABEL_15;
      case 2:
        v74 = 2;
        sub_23B4EF804();
        v31 = v66;
        OUTLINED_FUNCTION_1_44(&type metadata for Deviation.NormalCodingKeys, &v74);
        swift_unknownObjectRelease();
        v51 = v60;
        v50 = v61;
        goto LABEL_15;
      case 3:
        v75[0] = 3;
        sub_23B4EF7B0();
        OUTLINED_FUNCTION_1_44(&type metadata for Deviation.LowerCodingKeys, v75);
        swift_unknownObjectRelease();
        v50 = v62;
        v51 = v63;
LABEL_15:
        (*(v51 + 8))(v31, v50);
        break;
      case 4:
        v75[1] = 4;
        sub_23B4EF75C();
        v39 = v29;
        sub_23B50D674();
        swift_unknownObjectRelease();
        (*(v65 + 8))(v32, v64);
        break;
      default:
        v72 = 0;
        sub_23B4EF8AC();
        v46 = v56;
        OUTLINED_FUNCTION_1_44(&type metadata for Deviation.MuchHigherCodingKeys, &v72);
        swift_unknownObjectRelease();
        (*(v57 + 8))(v46, v55);
        break;
    }

    (*(v45 + 8))(v39, v25);
    *v44 = v53;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}