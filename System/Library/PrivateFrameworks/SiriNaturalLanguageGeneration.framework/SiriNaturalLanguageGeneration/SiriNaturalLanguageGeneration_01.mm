_BYTE *storeEnumTagSinglePayload for Siri_Nlg_ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680CB984);
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

uint64_t sub_2680CB9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2680E18FC();
  OUTLINED_FUNCTION_22();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      v10 = ((v9 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v10 = -2;
    }

    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_2680CBAB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2680E18FC();
  OUTLINED_FUNCTION_22();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }
}

void sub_2680CBB54(uint64_t a1)
{
  sub_2680E18FC();
  if (v1 <= 0x3F)
  {
    sub_2680CBBFC(319, &qword_28024A168, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2680CBBFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2680CBC4C(char a1, char a2)
{
  v2 = 0x726F74636146;
  if (a1)
  {
    OUTLINED_FUNCTION_25();
    if (v4 == 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6E6F6973726556;
    }

    if (v4 == 1)
    {
      v7 = (v3 - 32) | 0x8000000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x726F74636146;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_9_1();
    if (v9 == 1)
    {
      v2 = v10;
    }

    else
    {
      v2 = v12;
    }

    if (v9 == 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v6 == v2 && v7 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_2680E1F5C();
  }

  return v15 & 1;
}

uint64_t sub_2680CBD2C(char a1, char a2)
{
  v2 = 7496035;
  if (a1)
  {
    OUTLINED_FUNCTION_19();
    if (v3)
    {
      v5 = 1701670760;
    }

    else
    {
      v5 = 0x656E6F6870;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7496035;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_19();
    if (v7)
    {
      v2 = 1701670760;
    }

    else
    {
      v2 = 0x656E6F6870;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE500000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2680E1F5C();
  }

  return v11 & 1;
}

uint64_t sub_2680CBE14(char a1)
{
  sub_2680E1FEC();
  sub_2680CC1D4();
  sub_2680E1B9C();
  return sub_2680E200C();
}

uint64_t sub_2680CBE84(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    OUTLINED_FUNCTION_24();
  }

  sub_2680E1C6C();
}

uint64_t sub_2680CBEF0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_19();
  }

  sub_2680E1C6C();
}

uint64_t sub_2680CBF64(uint64_t a1, char a2)
{
  sub_2680E1FEC();
  sub_2680CC1D4();
  sub_2680E1B9C();
  return sub_2680E200C();
}

uint64_t sub_2680CBFB8(uint64_t a1, char a2)
{
  sub_2680E1FEC();
  if (a2)
  {
    OUTLINED_FUNCTION_19();
  }

  sub_2680E1C6C();

  return sub_2680E200C();
}

uint64_t sub_2680CC040(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2680E1FEC();
  if (v2)
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_9_1();
  }

  else
  {
    OUTLINED_FUNCTION_24();
  }

  sub_2680E1C6C();

  return sub_2680E200C();
}

unint64_t sub_2680CC0C0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2680CC0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680D0E68();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_2680CC148@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2680CC0C0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2680CC178@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2680CC0C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2680CC1A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2680CC0D0(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_2680CC1D4()
{
  result = qword_28024A170;
  if (!qword_28024A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A170);
  }

  return result;
}

unint64_t sub_2680CC22C()
{
  result = qword_28024A178;
  if (!qword_28024A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A178);
  }

  return result;
}

unint64_t sub_2680CC284()
{
  result = qword_28024A180;
  if (!qword_28024A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A180);
  }

  return result;
}

uint64_t sub_2680CC2E8@<X0>(uint64_t a1@<X8>)
{
  sub_2680E18EC();
  result = type metadata accessor for Siri_Nlg_Capabilities(0);
  *(a1 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_2680CC320@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlg_Model(0);
  sub_2680E18EC();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Siri_Nlg_Capabilities(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_2680CC390@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Siri_Nlg_CATFile(0);
  result = OUTLINED_FUNCTION_17();
  v4 = (a1 + *(v1 + 24));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(v1 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_2680CC3E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  result = OUTLINED_FUNCTION_17();
  v5 = (a2 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_2680CC42C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Siri_Nlg_Content(0);
  result = OUTLINED_FUNCTION_17();
  *(a1 + *(v1 + 24)) = 4;
  return result;
}

uint64_t sub_2680CC470()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C7C8);
  __swift_project_value_buffer(v0, qword_28024C7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E2CB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CONTENTTYPE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTENTTYPE_TEXT";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CONTENTTYPE_KEYWORDS";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CONTENTTYPE_SOURCE_KEYWORDS";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CC6D4()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C7E0);
  __swift_project_value_buffer(v0, qword_28024C7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E2CC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "capabilities";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cat_file";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "vocabulary";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CC8E4()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12_0();
        sub_2680E19AC();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_1_4();
        sub_2680CEBC4(v7, v8, v9, v10, v11, &qword_28024A1F0, v12, v13);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_1_4();
        sub_2680CC9B4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_2680CC9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlg_Model(0);
  type metadata accessor for Siri_Nlg_Capabilities(0);
  sub_2680CF9FC(&qword_28024A210, type metadata accessor for Siri_Nlg_Capabilities, &unk_2680E3520);
  return sub_2680E19EC();
}

uint64_t sub_2680CCA68()
{
  OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_3_4();
  result = sub_2680CCB40(v2, v3, v4, v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_21();
    if (v7)
    {
      type metadata accessor for Siri_Nlg_CATFile(0);
      v8 = sub_2680CF9FC(&qword_28024A1F0, type metadata accessor for Siri_Nlg_CATFile, &unk_2680E33B8);
      OUTLINED_FUNCTION_6_1(v8);
    }

    if (*(*(v1 + 8) + 16))
    {
      OUTLINED_FUNCTION_18();
      sub_2680E1A6C();
    }

    type metadata accessor for Siri_Nlg_Model(0);
    return OUTLINED_FUNCTION_5_2();
  }

  return result;
}

uint64_t sub_2680CCB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B8, qword_2680E2CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Siri_Nlg_Capabilities(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlg_Model(0);
  sub_2680D00DC(a1 + *(v11 + 28), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2680D01B0(v7, &qword_28024A0B8, qword_2680E2CD0);
  }

  sub_2680D014C(v7, v10);
  sub_2680CF9FC(&qword_28024A210, type metadata accessor for Siri_Nlg_Capabilities, &unk_2680E3520);
  sub_2680E1AAC();
  return sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Capabilities);
}

uint64_t sub_2680CCCF4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlg_Capabilities(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B8, qword_2680E2CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A268, &qword_2680E3778);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = *(type metadata accessor for Siri_Nlg_Model(0) + 28);
  v16 = *(v12 + 56);
  sub_2680D00DC(a1 + v15, v14);
  sub_2680D00DC(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_26(v14);
  if (v20)
  {
    OUTLINED_FUNCTION_26(&v14[v16]);
    if (v20)
    {
      sub_2680D01B0(v14, &qword_28024A0B8, qword_2680E2CD0);
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  sub_2680D00DC(v14, v10);
  OUTLINED_FUNCTION_26(&v14[v16]);
  if (v20)
  {
    sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Capabilities);
LABEL_12:
    v21 = &qword_28024A268;
    v22 = &qword_2680E3778;
LABEL_19:
    sub_2680D01B0(v14, v21, v22);
LABEL_20:
    v19 = 0;
    return v19 & 1;
  }

  sub_2680D014C(&v14[v16], v7);
  v23 = *(v4 + 20);
  v24 = v10[v23];
  v25 = v7[v23];
  if (v24 == 2)
  {
    if (v25 == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
LABEL_18:
    sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Capabilities);
    sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Capabilities);
    v21 = &qword_28024A0B8;
    v22 = qword_2680E2CD0;
    goto LABEL_19;
  }

LABEL_22:
  sub_2680E18FC();
  OUTLINED_FUNCTION_0_4();
  sub_2680CF9FC(v27, v28, MEMORY[0x277D216D0]);
  v29 = sub_2680E1BBC();
  sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Capabilities);
  sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Capabilities);
  sub_2680D01B0(v14, &qword_28024A0B8, qword_2680E2CD0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((sub_2680D0A50(*a1, *a2) & 1) == 0 || (sub_2680D0D2C(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_2680E18FC();
  OUTLINED_FUNCTION_0_4();
  sub_2680CF9FC(v17, v18, MEMORY[0x277D216D0]);
  v19 = sub_2680E1BBC();
  return v19 & 1;
}

uint64_t sub_2680CD074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2680E18FC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2680CD0E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_2680E18FC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2680CD1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A260, type metadata accessor for Siri_Nlg_Model, &unk_2680E3650);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CD258(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_280249F80, type metadata accessor for Siri_Nlg_Model, &unk_2680E3688);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CD320(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_280249F80, type metadata accessor for Siri_Nlg_Model, &unk_2680E3688);

  return sub_2680E1A3C();
}

uint64_t sub_2680CD3A4()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C7F8);
  __swift_project_value_buffer(v0, qword_28024C7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2680E2A00;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "dialog_selection";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_2680E1ABC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_2680E1ACC();
}

uint64_t sub_2680CD510()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_1_4();
      sub_2680CD55C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2680CD5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_0();
  result = sub_2680CD610(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_13();
    return sub_2680E18DC();
  }

  return result;
}

uint64_t sub_2680CD610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Siri_Nlg_Capabilities(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_2680E1A4C();
  }

  return result;
}

uint64_t sub_2680CD688()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = *(type metadata accessor for Siri_Nlg_Capabilities(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != 2)
  {
    if (v5 != 2 && ((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_2680E18FC();
  OUTLINED_FUNCTION_0_4();
  sub_2680CF9FC(v7, v8, MEMORY[0x277D216D0]);
  return sub_2680E1BBC() & 1;
}

uint64_t sub_2680CD758@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2680E18FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2680CD7C0(uint64_t a1)
{
  v3 = sub_2680E18FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2680CD878(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A278, type metadata accessor for Siri_Nlg_Capabilities, &unk_2680E34E8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CD918(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_28024A210, type metadata accessor for Siri_Nlg_Capabilities, &unk_2680E3520);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CD9E0(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_28024A210, type metadata accessor for Siri_Nlg_Capabilities, &unk_2680E3520);

  return sub_2680E1A3C();
}

uint64_t sub_2680CDA60()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C810);
  __swift_project_value_buffer(v0, qword_28024C810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E2CC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cat_family";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cat_identifier";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dialog_switch";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CDC68()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_1_4();
        sub_2680CEBC4(v7, v8, v9, v10, v11, &qword_28024A1D0, v12, v13);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_1_4();
        sub_2680CDD48(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_1_4();
        sub_2680CE50C();
        break;
    }
  }

  return result;
}

uint64_t sub_2680CDDAC()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_3_4();
  result = sub_2680CE624();
  if (!v0)
  {
    sub_2680CDEB4(v3, v4, v2, v1);
    OUTLINED_FUNCTION_21();
    if (v6)
    {
      type metadata accessor for Siri_Nlg_DialogSwitch(0);
      sub_2680CF9FC(&qword_28024A1D0, type metadata accessor for Siri_Nlg_DialogSwitch, &unk_2680E3250);
      sub_2680E1A9C();
    }

    type metadata accessor for Siri_Nlg_CATFile(0);
    return OUTLINED_FUNCTION_5_2();
  }

  return result;
}

uint64_t sub_2680CDEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Siri_Nlg_CATFile(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2680E1A8C();
  }

  return result;
}

uint64_t sub_2680CDF2C()
{
  v2 = OUTLINED_FUNCTION_8_1();
  type metadata accessor for Siri_Nlg_CATFile(v2);
  OUTLINED_FUNCTION_11_0();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_2680E1F5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_0();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15(v10);
    v14 = v8 && v12 == v13;
    if (!v14 && (sub_2680E1F5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_2680D07B8(*v1, *v0))
  {
    sub_2680E18FC();
    OUTLINED_FUNCTION_0_4();
    v17 = sub_2680CF9FC(v15, v16, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_10_0(v17) & 1;
  }

  return 0;
}

uint64_t sub_2680CE08C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A280, type metadata accessor for Siri_Nlg_CATFile, &unk_2680E3380);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CE12C(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_28024A1F0, type metadata accessor for Siri_Nlg_CATFile, &unk_2680E33B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CE1F4(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_28024A1F0, type metadata accessor for Siri_Nlg_CATFile, &unk_2680E33B8);

  return sub_2680E1A3C();
}

uint64_t sub_2680CE274()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C828);
  __swift_project_value_buffer(v0, qword_28024C828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E29F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "switch_variable";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CE444()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_1_4();
      sub_2680CEBC4(v3, v4, v5, v6, v7, &qword_28024A1B0, v8, v9);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_4();
      sub_2680CE50C();
    }
  }

  return result;
}

uint64_t sub_2680CE50C()
{
  v0 = OUTLINED_FUNCTION_14();
  v1(v0);
  OUTLINED_FUNCTION_12_0();
  return sub_2680E19CC();
}

uint64_t sub_2680CE55C()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_3_4();
  result = sub_2680CE624();
  if (!v0)
  {
    OUTLINED_FUNCTION_21();
    if (v2)
    {
      type metadata accessor for Siri_Nlg_Dialog(0);
      v3 = sub_2680CF9FC(&qword_28024A1B0, type metadata accessor for Siri_Nlg_Dialog, &unk_2680E30E8);
      OUTLINED_FUNCTION_6_1(v3);
    }

    type metadata accessor for Siri_Nlg_DialogSwitch(0);
    return OUTLINED_FUNCTION_5_2();
  }

  return result;
}

uint64_t sub_2680CE624()
{
  v1 = OUTLINED_FUNCTION_14();
  result = v2(v1);
  if (*(v0 + *(result + 24) + 8))
  {
    return sub_2680E1A8C();
  }

  return result;
}

uint64_t sub_2680CE704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A288, type metadata accessor for Siri_Nlg_DialogSwitch, &unk_2680E3218);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CE7A4(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_28024A1D0, type metadata accessor for Siri_Nlg_DialogSwitch, &unk_2680E3250);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CE86C(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_28024A1D0, type metadata accessor for Siri_Nlg_DialogSwitch, &unk_2680E3250);

  return sub_2680E1A3C();
}

uint64_t sub_2680CE92C()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C840);
  __swift_project_value_buffer(v0, qword_28024C840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E29F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "switch_case";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CEAFC()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_1_4();
      sub_2680CEBC4(v3, v4, v5, v6, v7, &qword_28024A190, v8, v9);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_4();
      sub_2680CE50C();
    }
  }

  return result;
}

uint64_t sub_2680CEBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_2680CF9FC(a6, a7, a8);
  return sub_2680E19DC();
}

uint64_t sub_2680CEC60()
{
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_3_4();
  result = sub_2680CE624();
  if (!v0)
  {
    OUTLINED_FUNCTION_21();
    if (v2)
    {
      type metadata accessor for Siri_Nlg_Content(0);
      v3 = sub_2680CF9FC(&qword_28024A190, type metadata accessor for Siri_Nlg_Content, &unk_2680E2F80);
      OUTLINED_FUNCTION_6_1(v3);
    }

    type metadata accessor for Siri_Nlg_Dialog(0);
    return OUTLINED_FUNCTION_5_2();
  }

  return result;
}

uint64_t sub_2680CED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v7 = OUTLINED_FUNCTION_8_1();
  v8(v7);
  OUTLINED_FUNCTION_11_0();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15(v10);
    v14 = v14 && v12 == v13;
    if (!v14 && (sub_2680E1F5C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (a4(*v5, *v4))
  {
    sub_2680E18FC();
    OUTLINED_FUNCTION_0_4();
    v17 = sub_2680CF9FC(v15, v16, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_10_0(v17) & 1;
  }

  return 0;
}

uint64_t sub_2680CEE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A290, type metadata accessor for Siri_Nlg_Dialog, &unk_2680E30B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CEF08(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_28024A1B0, type metadata accessor for Siri_Nlg_Dialog, &unk_2680E30E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CEFD0(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_28024A1B0, type metadata accessor for Siri_Nlg_Dialog, &unk_2680E30E8);

  return sub_2680E1A3C();
}

uint64_t sub_2680CF090()
{
  v0 = sub_2680E1ADC();
  __swift_allocate_value_buffer(v0, qword_28024C858);
  __swift_project_value_buffer(v0, qword_28024C858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A250, &qword_2680E3768);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A258, &qword_2680E3770) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2680E29F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2680E1ABC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2680E1ACC();
}

uint64_t sub_2680CF258()
{
  OUTLINED_FUNCTION_2_4();
  while (1)
  {
    OUTLINED_FUNCTION_13();
    result = sub_2680E197C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12_0();
      sub_2680E19BC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_1_4();
      sub_2680CF2C0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_2680CF2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlg_Content(0);
  sub_2680D0E68();
  return sub_2680E199C();
}

uint64_t sub_2680CF334()
{
  OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_3_4();
  result = sub_2680CF3AC(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(*v1 + 16))
    {
      OUTLINED_FUNCTION_18();
      sub_2680E1A7C();
    }

    type metadata accessor for Siri_Nlg_Content(0);
    return OUTLINED_FUNCTION_5_2();
  }

  return result;
}

uint64_t sub_2680CF3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Siri_Nlg_Content(0);
  if (*(a1 + *(result + 24)) != 4)
  {
    sub_2680D0E68();
    return sub_2680E1A5C();
  }

  return result;
}

uint64_t sub_2680CF438()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = *(type metadata accessor for Siri_Nlg_Content(v2) + 24);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_2680D075C(*v1, *v0))
  {
    sub_2680E18FC();
    OUTLINED_FUNCTION_0_4();
    v8 = sub_2680CF9FC(v6, v7, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_10_0(v8) & 1;
  }

  return 0;
}

uint64_t sub_2680CF4E4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_2680E1FEC();
  a1(0);
  sub_2680CF9FC(a2, a3, a4);
  sub_2680E1B9C();
  return sub_2680E200C();
}

uint64_t sub_2680CF58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_2680E18FC();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_2680CF5F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  sub_2680E18FC();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_2680CF694(uint64_t a1, uint64_t a2)
{
  v4 = sub_2680CF9FC(&qword_28024A298, type metadata accessor for Siri_Nlg_Content, &unk_2680E2F48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2680CF734@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_2680E1ADC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_2680CF7D0(uint64_t a1)
{
  v2 = sub_2680CF9FC(&qword_28024A190, type metadata accessor for Siri_Nlg_Content, &unk_2680E2F80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2680CF898(uint64_t a1, uint64_t a2)
{
  sub_2680CF9FC(&qword_28024A190, type metadata accessor for Siri_Nlg_Content, &unk_2680E2F80);

  return sub_2680E1A3C();
}

uint64_t sub_2680CF914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2680E1FEC();
  sub_2680E1B9C();
  return sub_2680E200C();
}

uint64_t sub_2680CF9FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2680D0078()
{
  result = qword_28024A240;
  if (!qword_28024A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024A248, qword_2680E3728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A240);
  }

  return result;
}

uint64_t sub_2680D00DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A0B8, qword_2680E2CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680D014C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_Capabilities(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680D01B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2680D0208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_Dialog(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v24 - v9);
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
        sub_2680D0E10();
        sub_2680D0E10();
        v16 = *(v4 + 24);
        v17 = (v10 + v16);
        v18 = *(v10 + v16 + 8);
        v19 = (v7 + v16);
        v20 = v19[1];
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_2680E1F5C() & 1) == 0))
          {
LABEL_19:
            sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Dialog);
            sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Dialog);
            goto LABEL_20;
          }
        }

        else if (v20)
        {
          goto LABEL_19;
        }

        if ((sub_2680D04A0(*v10, *v7) & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_2680E18FC();
        sub_2680CF9FC(&qword_28024A270, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_2680E1BBC();
        sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Dialog);
        sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_Dialog);
        if (v22)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_20:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_2680D04A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_Content(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_24:
    v22 = 0;
    return v22 & 1;
  }

  if (!v10 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v11 = 0;
  while (1)
  {
    result = sub_2680D0E10();
    if (v11 == v10)
    {
      break;
    }

    result = sub_2680D0E10();
    v13 = *(v4 + 24);
    v14 = v9[v13];
    v15 = v7[v13];
    if (v14 == 4)
    {
      if (v15 != 4)
      {
        goto LABEL_23;
      }
    }

    else if (v14 != v15)
    {
      goto LABEL_23;
    }

    v16 = *v9;
    v17 = *v7;
    v18 = *(*v9 + 16);
    if (v18 != *(*v7 + 16))
    {
LABEL_23:
      sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Content);
      sub_2680D0DB8(v9, type metadata accessor for Siri_Nlg_Content);
      goto LABEL_24;
    }

    if (v18)
    {
      v19 = v16 == v17;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = (v16 + 32);
      v21 = (v17 + 32);
      while (v18)
      {
        if (*v20 != *v21)
        {
          goto LABEL_23;
        }

        ++v20;
        ++v21;
        if (!--v18)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      break;
    }

LABEL_19:
    sub_2680E18FC();
    sub_2680CF9FC(&qword_28024A270, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v22 = sub_2680E1BBC();
    sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_Content);
    sub_2680D0DB8(v9, type metadata accessor for Siri_Nlg_Content);
    if ((v22 & 1) != 0 && ++v11 != v10)
    {
      continue;
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2680D075C(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2680D07B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_DialogSwitch(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v24 - v9);
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
        sub_2680D0E10();
        sub_2680D0E10();
        v16 = *(v4 + 24);
        v17 = (v10 + v16);
        v18 = *(v10 + v16 + 8);
        v19 = (v7 + v16);
        v20 = v19[1];
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_2680E1F5C() & 1) == 0))
          {
LABEL_19:
            sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_DialogSwitch);
            sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_DialogSwitch);
            goto LABEL_20;
          }
        }

        else if (v20)
        {
          goto LABEL_19;
        }

        if ((sub_2680D0208(*v10, *v7) & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_2680E18FC();
        sub_2680CF9FC(&qword_28024A270, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v22 = sub_2680E1BBC();
        sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_DialogSwitch);
        sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_DialogSwitch);
        if (v22)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_20:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_2680D0A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlg_CATFile(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v30 - v9);
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
        sub_2680D0E10();
        sub_2680D0E10();
        v16 = *(v4 + 24);
        v17 = (v10 + v16);
        v18 = *(v10 + v16 + 8);
        v19 = (v7 + v16);
        v20 = v19[1];
        if (v18)
        {
          if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_2680E1F5C() & 1) == 0))
          {
LABEL_28:
            sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_CATFile);
            sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_CATFile);
            goto LABEL_29;
          }
        }

        else if (v20)
        {
          goto LABEL_28;
        }

        v22 = *(v4 + 28);
        v23 = (v10 + v22);
        v24 = *(v10 + v22 + 8);
        v25 = (v7 + v22);
        v26 = v25[1];
        if (v24)
        {
          if (!v26)
          {
            goto LABEL_28;
          }

          v27 = *v23 == *v25 && v24 == v26;
          if (!v27 && (sub_2680E1F5C() & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (v26)
        {
          goto LABEL_28;
        }

        if ((sub_2680D07B8(*v10, *v7) & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_2680E18FC();
        sub_2680CF9FC(&qword_28024A270, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = sub_2680E1BBC();
        sub_2680D0DB8(v7, type metadata accessor for Siri_Nlg_CATFile);
        sub_2680D0DB8(v10, type metadata accessor for Siri_Nlg_CATFile);
        if (v28)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_29:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t sub_2680D0D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2680E1F5C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2680D0DB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2680D0E10()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3(v2);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_2680D0E68()
{
  result = qword_28024A2A0;
  if (!qword_28024A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A2A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_2680E18DC();
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return sub_2680E1A9C();
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return sub_2680E1BBC();
}

uint64_t OUTLINED_FUNCTION_16()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_2680E18EC();
}

uint64_t NLGEntityType.rawValue.getter()
{
  v1 = 1701670760;
  if (*v0 != 1)
  {
    v1 = 0x656E6F6870;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7496035;
  }
}

uint64_t static NLGDialogGenerators.alternativeQuestion(between:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2680D11F8(a1, v8);
  sub_2680D11F8(a2, v7);
  v5 = type metadata accessor for VerbPhraseQuestionGenerator();
  swift_allocObject();
  result = sub_2680C8330(v8, v7, sub_2680C9218, 0);
  a3[3] = v5;
  a3[4] = &off_2878F38F0;
  *a3 = result;
  return result;
}

void *static NLGDialogGenerators.alternativeQuestion(between:and:)@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v7 = v4;
  v5 = type metadata accessor for ExecutionDestinationQuestionGenerator();
  swift_allocObject();
  result = sub_2680C8630(&v8, &v7, sub_2680C9218, 0);
  a3[3] = v5;
  a3[4] = &off_2878F38E0;
  *a3 = result;
  return result;
}

SiriNaturalLanguageGeneration::NLGEntityType_optional __swiftcall NLGEntityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2680E1EFC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2680D1378@<X0>(uint64_t *a1@<X8>)
{
  result = NLGEntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static NLGDialogGeneratorError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_27;
      }

      if (v3 != v6 || v2 != v5)
      {
        v37 = OUTLINED_FUNCTION_1_5();
        v10 = OUTLINED_FUNCTION_4_5(v37, v38);
        v39 = OUTLINED_FUNCTION_2_5();
        v41 = OUTLINED_FUNCTION_0_5(v39, v40, 1u);
        v43 = OUTLINED_FUNCTION_0_5(v41, v42, 1u);
        sub_2680D162C(v43, v44, 1u);
        v17 = OUTLINED_FUNCTION_2_5();
        v19 = 1;
        goto LABEL_26;
      }

      v54 = 1;
      v66 = OUTLINED_FUNCTION_1_5();
      v68 = OUTLINED_FUNCTION_0_5(v66, v67, 1u);
      v70 = OUTLINED_FUNCTION_0_5(v68, v69, 1u);
      sub_2680D162C(v70, v71, 1u);
      v72 = OUTLINED_FUNCTION_1_5();
      sub_2680D162C(v72, v73, 1u);
      return v54;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_27;
      }

      v20 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = OUTLINED_FUNCTION_4_5(v20, v2);
        v22 = OUTLINED_FUNCTION_2_5();
        v24 = OUTLINED_FUNCTION_0_5(v22, v23, 2u);
        v26 = OUTLINED_FUNCTION_0_5(v24, v25, 2u);
        sub_2680D162C(v26, v27, 2u);
        v17 = OUTLINED_FUNCTION_2_5();
        v19 = 2;
        goto LABEL_26;
      }

      v55 = OUTLINED_FUNCTION_0_5(v20, v2, 2u);
      v57 = OUTLINED_FUNCTION_0_5(v55, v56, 2u);
      sub_2680D162C(v57, v58, 2u);
      v59 = OUTLINED_FUNCTION_1_5();
      v61 = 2;
      goto LABEL_32;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_27;
      }

      v28 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = OUTLINED_FUNCTION_4_5(v28, v2);
        v30 = OUTLINED_FUNCTION_2_5();
        v32 = OUTLINED_FUNCTION_0_5(v30, v31, 3u);
        v34 = OUTLINED_FUNCTION_0_5(v32, v33, 3u);
        sub_2680D162C(v34, v35, 3u);
        v17 = OUTLINED_FUNCTION_2_5();
        v19 = 3;
        goto LABEL_26;
      }

      v62 = OUTLINED_FUNCTION_0_5(v28, v2, 3u);
      v64 = OUTLINED_FUNCTION_0_5(v62, v63, 3u);
      sub_2680D162C(v64, v65, 3u);
      v59 = OUTLINED_FUNCTION_1_5();
      v61 = 3;
      goto LABEL_32;
    default:
      if (*(a2 + 16))
      {
LABEL_27:
        v46 = OUTLINED_FUNCTION_2_5();
        v48 = OUTLINED_FUNCTION_0_5(v46, v47, v7);
        v50 = OUTLINED_FUNCTION_0_5(v48, v49, v4);
        sub_2680D162C(v50, v51, v4);
        v52 = OUTLINED_FUNCTION_2_5();
        sub_2680D162C(v52, v53, v7);
        return 0;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v74 = OUTLINED_FUNCTION_0_5(v8, v2, 0);
        v76 = OUTLINED_FUNCTION_0_5(v74, v75, 0);
        sub_2680D162C(v76, v77, 0);
        v59 = OUTLINED_FUNCTION_1_5();
        v61 = 0;
LABEL_32:
        sub_2680D162C(v59, v60, v61);
        return 1;
      }

      v10 = OUTLINED_FUNCTION_4_5(v8, v2);
      v11 = OUTLINED_FUNCTION_2_5();
      v13 = OUTLINED_FUNCTION_0_5(v11, v12, 0);
      v15 = OUTLINED_FUNCTION_0_5(v13, v14, 0);
      sub_2680D162C(v15, v16, 0);
      v17 = OUTLINED_FUNCTION_2_5();
      v19 = 0;
LABEL_26:
      sub_2680D162C(v17, v18, v19);
      return v10 & 1;
  }
}

uint64_t sub_2680D1614(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2680D162C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t sub_2680D1648()
{
  result = qword_28024A2A8;
  if (!qword_28024A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A2A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLGDialogGenerators(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2680D1764);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2680D17AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2680D17EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLGDialogScorerType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2680D18DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2680D19A8);
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2680D19FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_2680D1A3C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2)
{

  return sub_2680E1F5C();
}

uint64_t NLGCATIdentifier.identifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x26D610FD0](35, 0xE100000000000000);
  MEMORY[0x26D610FD0](v1, v2);
  return v4;
}

SiriNaturalLanguageGeneration::NLGCATIdentifier __swiftcall NLGCATIdentifier.init(_:_:)(Swift::String a1, Swift::String a2)
{
  *v2 = a1;
  v2[1] = a2;
  result.useCase = a2;
  result.family = a1;
  return result;
}

uint64_t NLGCATIdentifier.family.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NLGCATIdentifier.useCase.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall NLGCATIdentifier.init(_:)(SiriNaturalLanguageGeneration::NLGCATIdentifier_optional *__return_ptr retstr, Swift::String a2)
{
  v20[0] = 35;
  v20[1] = 0xE100000000000000;
  v19[2] = v20;
  v3 = sub_2680D1F00(0x7FFFFFFFFFFFFFFFLL, 1, sub_2680CA7CC, v19, a2._countAndFlagsBits, a2._object);
  v4 = v3;
  if (v3[2] == 2)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[7];

    v9 = MEMORY[0x26D610F90](v5, v6, v7, v8);
    v11 = v10;

    if (v4[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v12 = v4[8];
      v13 = v4[9];
      v14 = v4[10];
      v15 = v4[11];

      v16 = MEMORY[0x26D610F90](v12, v13, v14, v15);
      v18 = v17;

      retstr->value.family._countAndFlagsBits = v9;
      retstr->value.family._object = v11;
      retstr->value.useCase._countAndFlagsBits = v16;
      retstr->value.useCase._object = v18;
    }
  }

  else
  {

    retstr->value.family = 0u;
    retstr->value.useCase = 0u;
  }
}

uint64_t static NLGCATIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2680E1F5C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2680E1F5C();
    }
  }

  return result;
}

uint64_t NLGCATIdentifier.hash(into:)(uint64_t a1)
{
  sub_2680E1C6C();

  return sub_2680E1C6C();
}

uint64_t NLGCATIdentifier.hashValue.getter()
{
  sub_2680E1FEC();
  sub_2680E1C6C();
  sub_2680E1C6C();
  return sub_2680E200C();
}

uint64_t sub_2680D1E54(uint64_t a1)
{
  sub_2680E1FEC();
  sub_2680E1C6C();
  sub_2680E1C6C();
  return sub_2680E200C();
}

uint64_t sub_2680D1EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2680E1F5C() & 1;
  }
}

uint64_t sub_2680D1F00(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_2680E1D1C();
    OUTLINED_FUNCTION_1_6();
    sub_2680D4D08();
    v16 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v31 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v32 = (v16 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v16;
    }

LABEL_41:
    sub_2680D4D08();
    v16 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v42 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_6();
      v18 = sub_2680E1CFC();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_0_6();
      v17 = sub_2680E1C7C();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_2680E1D1C();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2680D4D08();
      v42 = v28;
    }

    v13 = *(v42 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v42 + 24) >> 1)
    {
      sub_2680D4D08();
      v42 = v29;
    }

    *(v42 + 16) = v12;
    v27 = (v42 + 32 * v13);
    v27[4] = v41;
    v27[5] = v37;
    v27[6] = v36;
    v27[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_0_6();
    v17 = sub_2680E1C7C();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_2680E1D1C();
        OUTLINED_FUNCTION_1_6();
        v16 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v31 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_2680D4D08();
      v16 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2680D228C()
{
  result = qword_28024A2B0;
  if (!qword_28024A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A2B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29SiriNaturalLanguageGeneration22NLGDialogProviderErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2680D2370(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680D23C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2680D2420(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2680D245C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2680D249C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_1_6()
{
}

void *sub_2680D2684()
{
  type metadata accessor for UserDefaultsDialogRecorder();
  swift_allocObject();
  result = sub_2680D89C0(50, 0x6948676F6C616944, 0xED000079726F7473);
  qword_28024A2B8 = result;
  return result;
}

uint64_t static NLGDialogSelectors.randomOriginal()()
{
  v3[3] = MEMORY[0x277D846F8];
  v3[4] = MEMORY[0x277D84700];
  OUTLINED_FUNCTION_1_7();
  static NLGDialogSelectors.randomOriginal(randomNumberGenerator:dialogRecorder:)(v3, v2, v0);
  sub_2680C5824(v2, &qword_28024A2C8, &qword_2680E3BD8);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t static NLGDialogSelectors.randomOriginal(randomNumberGenerator:dialogRecorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2680C5758(a1, v15);
  sub_2680D2C50(a2, &v10);
  if (v11)
  {
    sub_2680C2CD8(&v10, &v12);
  }

  else if (qword_280249EC8 == -1)
  {
    v5 = qword_28024A2B8;
    v13 = type metadata accessor for UserDefaultsDialogRecorder();
    v14 = &off_2878F42E0;
    *&v12 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_0_7(&qword_280249EC8);
    v8 = v11;
    v9 = qword_28024A2B8;
    v13 = type metadata accessor for UserDefaultsDialogRecorder();
    v14 = &off_2878F42E0;
    *&v12 = v9;

    if (v8)
    {
      sub_2680C5824(&v10, &qword_28024A2C8, &qword_2680E3BD8);
    }
  }

  v6 = type metadata accessor for RandomOriginalDialogSelector();
  swift_allocObject();
  result = sub_2680C0BF4(v15, &v12);
  a3[3] = v6;
  a3[4] = &off_2878F3848;
  *a3 = result;
  return result;
}

uint64_t static NLGDialogSelectors.highestScoring(using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  Selector = type metadata accessor for IdentifiedDialogOrFirstSelector();
  inited = swift_initStaticObject();
  type metadata accessor for HighestScoringDialogSelector();
  v6 = swift_allocObject();
  v6[2] = inited;
  v6[5] = Selector;
  v6[6] = &off_2878F3838;
  sub_2680C5758(a1, v11);
  v7 = type metadata accessor for DialogScorerSelector();
  v8 = swift_allocObject();

  v9 = sub_2680D2CC0(v11, v6, v8, type metadata accessor for HighestScoringDialogSelector, &off_2878F3810, &unk_2878F40C8, sub_2680D3044);
  a2[3] = v7;
  a2[4] = &off_2878F3820;

  *a2 = v9;
  return result;
}

uint64_t static NLGDialogSelectors.highestScoringOriginal(using:)()
{
  OUTLINED_FUNCTION_1_7();
  static NLGDialogSelectors.highestScoringOriginal(using:dialogRecorder:)(v0, v3, v1);
  return sub_2680C5824(v3, &qword_28024A2C8, &qword_2680E3BD8);
}

uint64_t static NLGDialogSelectors.highestScoringOriginal(using:dialogRecorder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2680D2C50(a2, &v13);
  if (v14)
  {
    sub_2680C2CD8(&v13, &v15);
  }

  else if (qword_280249EC8 == -1)
  {
    v5 = qword_28024A2B8;
    v16 = type metadata accessor for UserDefaultsDialogRecorder();
    v17 = &off_2878F42E0;
    *&v15 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_0_7(&qword_280249EC8);
    v11 = v14;
    v12 = qword_28024A2B8;
    v16 = type metadata accessor for UserDefaultsDialogRecorder();
    v17 = &off_2878F42E0;
    *&v15 = v12;

    if (v11)
    {
      sub_2680C5824(&v13, &qword_28024A2C8, &qword_2680E3BD8);
    }
  }

  type metadata accessor for HighestScoringOriginalDialogSelector();
  v6 = swift_allocObject();
  sub_2680C2CD8(&v15, v6 + 16);
  *(v6 + 56) = 0;
  sub_2680C5758(a1, &v15);
  v7 = type metadata accessor for DialogScorerSelector();
  v8 = swift_allocObject();

  v9 = sub_2680D2CC0(&v15, v6, v8, type metadata accessor for HighestScoringOriginalDialogSelector, &off_2878F3800, &unk_2878F40A0, sub_2680C58B4);
  a3[3] = v7;
  a3[4] = &off_2878F3820;

  *a3 = v9;
  return result;
}

uint64_t NLGDialogSelectorError.hashValue.getter()
{
  sub_2680E1FEC();
  MEMORY[0x26D611340](0);
  return sub_2680E200C();
}

uint64_t sub_2680D2C10(uint64_t a1)
{
  sub_2680E1FEC();
  MEMORY[0x26D611340](0);
  return sub_2680E200C();
}

uint64_t sub_2680D2C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2C8, &qword_2680E3BD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680D2CC0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[3] = a4(0);
  v21[4] = a5;
  v21[0] = a2;
  sub_2680C5758(a1, a3 + 16);
  sub_2680C5758(v21, a3 + 56);
  sub_2680C5758(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2D8, &qword_2680E3CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2E0, &qword_2680E3CF8);
  if (swift_dynamicCast())
  {
    sub_2680C2CD8(v16, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v13 + 8))(v17, v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    *(a3 + 104) = v17[0];
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    OUTLINED_FUNCTION_1_7();
    sub_2680C5824(v16, &qword_28024A2E8, &qword_2680E3D00);
    *(a3 + 104) = 2;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 36;
  type metadata accessor for SELFLogger();
  swift_allocObject();
  *(a3 + 96) = sub_2680D9F38(&unk_2680E4200, 0, sub_2680D9E08, 0, 36, a7, v14);
  return a3;
}

unint64_t sub_2680D2EB0()
{
  result = qword_28024A2D0;
  if (!qword_28024A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A2D0);
  }

  return result;
}

_BYTE *sub_2680D2F58(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2680D2FF4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_7(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2680D3080(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2F8, &unk_2680E3D10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  v4 = sub_2680D3214();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  sub_2680E176C();
  v8 = sub_2680E175C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {

    sub_2680C5824(v3, &qword_28024A2F8, &unk_2680E3D10);
    return 0;
  }

  else
  {
    v10 = sub_2680E172C();
    v12 = v11;
    (*(*(v8 - 8) + 8))(v3, v8);
    v13[0] = v6;
    v13[1] = v7;

    MEMORY[0x26D610FD0](45, 0xE100000000000000);

    MEMORY[0x26D610FD0](v10, v12);

    return v13[0];
  }
}

uint64_t sub_2680D3214()
{
  v0 = sub_2680E179C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2F0, &qword_2680E3D08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_2680E17AC();
  sub_2680E178C();
  (*(v1 + 8))(v3, v0);
  v7 = sub_2680E173C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2680C5824(v6, &qword_28024A2F0, &qword_2680E3D08);
    return 0;
  }

  else
  {
    v8 = sub_2680E172C();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  return v8;
}

uint64_t sub_2680D33C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2680D83B8(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2680D3420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2680D83B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

double sub_2680D3478@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2680D83B8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2680D4E84(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double NLGDialogBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  return result;
}

double NLGDialog.source.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t static NLGDialogSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_2680E1F5C() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_2680E1F5C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_2680E1F5C();
}

double NLGDialogBuilder.init()()
{
  result = 0.0;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_2680D3660(uint64_t a1)
{
  v2 = v1;
  sub_2680D3478(25705, 0xE200000000000000, a1, &v122);
  if (v123)
  {
    if (OUTLINED_FUNCTION_5_3(v4, v5, v6, MEMORY[0x277D837D0], v7, v8, v9, v10, v110, v116, v122))
    {
      v11 = v110;
      v12 = v116;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  sub_2680D3AB8(v11, v12);

  sub_2680D3478(0x746E65746E6F63, 0xE700000000000000, a1, &v122);
  if (!v123)
  {
    sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
    goto LABEL_12;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A308, &unk_2680E3D30);
  if ((OUTLINED_FUNCTION_5_3(v13, v14, v15, v13, v16, v17, v18, v19, v110, v116, v122) & 1) == 0)
  {
LABEL_12:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12_1(0x746E697270, v20, v21, v22, v23, v24, v25, v26, v110, v116, v122);
  if (v123)
  {
    if (OUTLINED_FUNCTION_5_3(v27, v28, v29, MEMORY[0x277D837D0], v30, v31, v32, v33, v111, v117, v122))
    {
      v34 = v111;
      v35 = v117;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
  }

  v34 = 0;
  v35 = 0xE000000000000000;
LABEL_15:
  sub_2680D4370();
  v36 = v44;
  v45 = *(v44 + 16);
  if (v45 >= *(v44 + 24) >> 1)
  {
    sub_2680D4370();
    v36 = v105;
  }

  *(v36 + 16) = v45 + 1;
  v46 = v36 + 16 * v45;
  *(v46 + 32) = v34;
  *(v46 + 40) = v35;
  OUTLINED_FUNCTION_12_1(0x6B61657073, v37, v38, v39, v40, v41, v42, v43, v111, v117, v122);

  if (!v123)
  {
    sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_5_3(v47, v48, v49, MEMORY[0x277D837D0], v50, v51, v52, v53, v110, v116, v122) & 1) == 0)
  {
LABEL_21:
    v54 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_22;
  }

  v54 = v110;
  v55 = v116;
LABEL_22:
  v56 = *(v36 + 16);
  if (v56 >= *(v36 + 24) >> 1)
  {
    OUTLINED_FUNCTION_14_0();
    v36 = v106;
  }

  *(v36 + 16) = v56 + 1;
  v57 = v36 + 16 * v56;
  *(v57 + 32) = v54;
  *(v57 + 40) = v55;
LABEL_25:
  sub_2680D3478(0x6E6F6974706163, 0xE700000000000000, a1, &v122);
  if (!v123)
  {
    sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
    goto LABEL_45;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A308, &unk_2680E3D30);
  if (OUTLINED_FUNCTION_5_3(v58, v59, v60, v58, v61, v62, v63, v64, v110, v116, v122))
  {
    OUTLINED_FUNCTION_12_1(0x746E697270, v65, v66, v67, v68, v69, v70, v71, v112, v118, v122);
    if (v123)
    {
      if (OUTLINED_FUNCTION_5_3(v72, v73, v74, MEMORY[0x277D837D0], v75, v76, v77, v78, v113, v119, v122))
      {
        v79 = v113;
        v80 = v119;
        goto LABEL_33;
      }
    }

    else
    {
      sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
    }

    v79 = 0;
    v80 = 0xE000000000000000;
LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2680D4370();
      v36 = v107;
    }

    v88 = *(v36 + 16);
    if (v88 >= *(v36 + 24) >> 1)
    {
      sub_2680D4370();
      v36 = v108;
    }

    *(v36 + 16) = v88 + 1;
    v89 = v36 + 16 * v88;
    *(v89 + 32) = v79;
    *(v89 + 40) = v80;
    OUTLINED_FUNCTION_12_1(0x6B61657073, v81, v82, v83, v84, v85, v86, v87, v113, v119, v122);

    if (v123)
    {
      if (OUTLINED_FUNCTION_5_3(v90, v91, v92, MEMORY[0x277D837D0], v93, v94, v95, v96, v114, v120, v122))
      {
        v97 = v115;
        v98 = v121;
LABEL_42:
        v99 = *(v36 + 16);
        if (v99 >= *(v36 + 24) >> 1)
        {
          OUTLINED_FUNCTION_14_0();
          v36 = v109;
        }

        *(v36 + 16) = v99 + 1;
        v100 = v36 + 16 * v99;
        *(v100 + 32) = v97;
        *(v100 + 40) = v98;
        goto LABEL_45;
      }
    }

    else
    {
      sub_2680C5824(&v122, &qword_28024A300, &unk_2680E3D20);
    }

    v97 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_42;
  }

LABEL_45:
  *&v122 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F90, &unk_2680E29E0);
  sub_2680C6D84();
  v101 = sub_2680E1BAC();
  v103 = v102;

  *(v2 + 32) = v101;
  *(v2 + 40) = v103;
}

uint64_t sub_2680D3AB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2680D3B00(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_2680D3B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2680D3B90(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_2680D3BD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = v1[10];
  v8 = v1[11];
  v1[10] = *a1;
  v1[11] = v2;
  v1[12] = v3;
  v1[13] = v4;
  v1[14] = v5;
  v1[15] = v6;

  sub_2680D4424(v7, v8);
}

void sub_2680D3C80(void *a1@<X8>)
{
  v2 = v1;
  if (!v1[5] && !v1[7])
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v3 = sub_2680E1B3C();
    __swift_project_value_buffer(v3, qword_28024C7A8);
    v4 = sub_2680E1B1C();
    v5 = sub_2680E1DBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      OUTLINED_FUNCTION_16_0(&dword_2680BC000, v7, v8, "Text and keywords are both empty");
      MEMORY[0x26D611870](v6, -1, -1);
    }
  }

  if (v2[3])
  {
    v23 = v2[3];
    v24 = v2[2];
  }

  else
  {
    v23 = 0xE000000000000000;
    v24 = 0;
  }

  if (v2[5])
  {
    v9 = v2[4];
    v10 = v2[5];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  if (v2[7])
  {
    v11 = v2[6];
    v12 = v2[7];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  if (v2[9])
  {
    v13 = v2[8];
    v14 = v2[9];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v27 = &unk_2878F4800;
  v28 = &off_2878F4858;
  v15 = swift_allocObject();
  *&v26 = v15;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = v14;
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  a1[3] = &unk_2878F4778;
  a1[4] = &off_2878F4838;
  v22 = swift_allocObject();
  *a1 = v22;
  v22[2] = v24;
  v22[3] = v23;
  sub_2680C2CD8(&v26, (v22 + 4));
  v22[9] = v16;
  v22[10] = v17;
  v22[11] = v18;
  v22[12] = v19;
  v22[13] = v20;
  v22[14] = v21;

  sub_2680D4518(v16, v17, v18, v19, v20, v21);
}

void *NLGDialogBuilder.deinit()
{

  sub_2680D4424(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t NLGDialogBuilder.__deallocating_deinit()
{
  NLGDialogBuilder.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

double NLGScoredDialogBuilder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 44) = 0u;
  *(v0 + 60) = 1;
  return result;
}

double NLGScoredDialogBuilder.init()()
{
  result = 0.0;
  *(v0 + 44) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 60) = 1;
  return result;
}

uint64_t sub_2680D3F88(uint64_t a1)
{
  sub_2680C5758(a1, v3);
  swift_beginAccess();
  sub_2680D4568(v3, v1 + 16);
  swift_endAccess();
}

uint64_t sub_2680D3FDC(float a1)
{
  *(v1 + 56) = a1;
  *(v1 + 60) = 0;
}

void sub_2680D3FEC(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_2680D45D8(v1 + 16, &v16);
  if (v17)
  {
    sub_2680C2CD8(&v16, v18);
    if (*(v1 + 60) == 1)
    {
      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280249E70);
      }

      v4 = sub_2680E1B3C();
      __swift_project_value_buffer(v4, qword_28024C7A8);
      v5 = sub_2680E1B1C();
      v6 = sub_2680E1DBC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        OUTLINED_FUNCTION_16_0(&dword_2680BC000, v8, v9, "Score is empty, defaulting to 0");
        MEMORY[0x26D611870](v7, -1, -1);
      }
    }

    sub_2680C2CD8(v18, &v16);
    if (*(v2 + 60))
    {
      v10 = 0.0;
    }

    else
    {
      v10 = *(v2 + 56);
    }

    *(a1 + 24) = &unk_2878F46F8;
    *(a1 + 32) = &off_2878F4820;
    v11 = swift_allocObject();
    *a1 = v11;
    sub_2680C2CD8(&v16, v11 + 16);
    *(v11 + 56) = v10;
  }

  else
  {
    sub_2680C5824(&v16, &qword_28024A2C0, &qword_2680E3BD0);
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v12 = sub_2680E1B3C();
    __swift_project_value_buffer(v12, qword_28024C7A8);
    v13 = sub_2680E1B1C();
    v14 = sub_2680E1DBC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2680BC000, v13, v14, "Dialog is empty", v15, 2u);
      MEMORY[0x26D611870](v15, -1, -1);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t NLGScoredDialogBuilder.__deallocating_deinit()
{
  sub_2680C5824(v0 + 16, &qword_28024A2C0, &qword_2680E3BD0);

  return MEMORY[0x2821FE8D8](v0, 61, 7);
}

void sub_2680D42A8()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A330, &qword_2680E3EC8);
      v7 = OUTLINED_FUNCTION_15_0(v6);
      OUTLINED_FUNCTION_7_1(v7);
      OUTLINED_FUNCTION_13_0(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_8();
        sub_2680D7958(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A338, &qword_2680E3ED0);
    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4370()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A350, &qword_2680E4020);
      v6 = OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_6_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_8();
        sub_2680D797C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2680D4424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2680D4474()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2680D44BC()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

void sub_2680D4518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_2680D4568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2C0, &qword_2680E3BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680D45D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A2C0, &qword_2680E3BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2680D4648()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 60, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2680D470C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2680D474C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2680D4A08()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A340, &qword_2680E3ED8);
      v6 = OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_6_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_8();
        sub_2680D799C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A348, &unk_2680E3EE0);
    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4ACC()
{
  OUTLINED_FUNCTION_11_1();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F58, &qword_2680E3EC0);
      v7 = OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_7_1(v7);
      OUTLINED_FUNCTION_6_2(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_8();
        sub_2680D797C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4B84()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A318, &qword_2680E3EA8);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_6_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_8();
        sub_2680D79E4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4C40()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A320, &unk_2680E3EB0);
      v7 = OUTLINED_FUNCTION_15_0(v6);
      OUTLINED_FUNCTION_7_1(v7);
      OUTLINED_FUNCTION_13_0(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_8();
        sub_2680D889C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A328, &qword_2680E4010);
    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4D08()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A358, &unk_2680E3EF0);
      v6 = OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_7_1(v6);
      OUTLINED_FUNCTION_6_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_1_8();
        sub_2680D7A04(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2680D4DBC()
{
  OUTLINED_FUNCTION_11_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_6(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_2_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A310, &unk_2680E3E98);
      v7 = OUTLINED_FUNCTION_15_0(v6);
      OUTLINED_FUNCTION_7_1(v7);
      OUTLINED_FUNCTION_13_0(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_1_8();
        sub_2680D889C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F50, &unk_2680E2970);
    OUTLINED_FUNCTION_8_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2680D4E84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_arrayInitWithCopy();
}

double OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2680D3478(a1, 0xE500000000000000, v11, &a11);
}

void OUTLINED_FUNCTION_14_0()
{

  sub_2680D4370();
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_allocObject();
}

uint64_t sub_2680D5044(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_2680D7B64(0, v6, 0);
  v8 = v35;
  v28 = v4;
  v29 = v5;
  v26 = a2;
  v27 = a1;
  if (v6)
  {
    v9 = a1 + 32;
    v10 = (a2 + 32);
    v11 = v6;
    while (v4)
    {
      result = sub_2680C5758(v9, &v33);
      if (!v5)
      {
        goto LABEL_23;
      }

      v12 = *v10;
      sub_2680C2CD8(&v33, &v31);
      *&v32[24] = v12;
      sub_2680C57BC(&v31, v30, &qword_28024A370, &qword_2680E3FB8);
      sub_2680C2CD8(v30, &v33);
      *&v34[24] = v12;
      result = sub_2680C5824(&v31, &qword_28024A370, &qword_2680E3FB8);
      v35 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_2680D7B64((v13 > 1), v14 + 1, 1);
        v8 = v35;
      }

      *(v8 + 16) = v14 + 1;
      v15 = (v8 + 48 * v14);
      v16 = v33;
      v17 = *v34;
      *(v15 + 60) = *&v34[12];
      --v5;
      v15[2] = v16;
      v15[3] = v17;
      --v4;
      ++v10;
      v9 += 40;
      if (!--v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_11:
    v18 = v27 + 40 * v6 + 32;
    while (v28 != v6)
    {
      if (v6 >= v28)
      {
        goto LABEL_24;
      }

      result = sub_2680C5758(v18, v30);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v29 == v6)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        return v8;
      }

      if (v6 >= v29)
      {
        goto LABEL_26;
      }

      v19 = *(v26 + 32 + 4 * v6);
      sub_2680C2CD8(v30, &v31);
      *&v32[24] = v19;
      v33 = v31;
      *v34 = *v32;
      *&v34[12] = *&v32[12];
      sub_2680C57BC(&v33, v30, &qword_28024A370, &qword_2680E3FB8);
      v20 = *&v34[24];
      sub_2680C2CD8(v30, &v31);
      *&v32[24] = v20;
      result = sub_2680C5824(&v33, &qword_28024A370, &qword_2680E3FB8);
      v35 = v8;
      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_2680D7B64((v21 > 1), v22 + 1, 1);
        v8 = v35;
      }

      *(v8 + 16) = v22 + 1;
      v23 = (v8 + 48 * v22);
      v24 = v31;
      v25 = *v32;
      *(v23 + 60) = *&v32[12];
      v23[2] = v24;
      v23[3] = v25;
      ++v6;
      v18 += 40;
    }

    return v8;
  }

  return result;
}

uint64_t sub_2680D52FC(void (*a1)(_OWORD *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = *(a3 + 16);
  }

  else
  {
    v10 = *(a4 + 16);
  }

  v38 = MEMORY[0x277D84F90];
  sub_2680D7B64(0, v10, 0);
  v11 = v38;
  v31 = v9;
  v32 = v8;
  v29 = a3;
  v30 = v10;
  v28 = a4;
  if (v10)
  {
    v12 = a3 + 32;
    v13 = a4 + 32;
    while (v8)
    {
      sub_2680D5D2C(v12, &v35);
      if (!v9)
      {
        goto LABEL_25;
      }

      __dst[0] = v35;
      __dst[1] = v36[0];
      *(&__dst[1] + 12) = *(v36 + 12);
      sub_2680C5758(v13, &__dst[3]);
      a1(__src, __dst);
      if (v5)
      {
        goto LABEL_29;
      }

      sub_2680C5824(__dst, &qword_28024A368, &qword_2680E3FB0);
      v38 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2680D7B64((v14 > 1), v15 + 1, 1);
        v11 = v38;
      }

      *(v11 + 16) = v15 + 1;
      v16 = (v11 + 48 * v15);
      v17 = __src[0];
      v18 = __src[1];
      *(v16 + 60) = *(&__src[1] + 12);
      --v9;
      v16[2] = v17;
      v16[3] = v18;
      --v8;
      v13 += 40;
      v12 += 48;
      --v10;
      v5 = 0;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    result = sub_2680C5824(__dst, &qword_28024A368, &qword_2680E3FB0);
  }

  else
  {
LABEL_12:
    v19 = v30;
    v20 = v28 + 40 * v30 + 32;
    for (i = v29 + 48 * v30 + 32; ; i += 48)
    {
      if (v32 == v19)
      {
        return v11;
      }

      if (v19 >= v32)
      {
        goto LABEL_26;
      }

      sub_2680D5D2C(i, &v35);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_27;
      }

      if (v31 == v19)
      {
        sub_2680D5D88(&v35);
        return v11;
      }

      if (v19 >= v31)
      {
        goto LABEL_28;
      }

      __src[0] = v35;
      __src[1] = v36[0];
      *(&__src[1] + 12) = *(v36 + 12);
      sub_2680C5758(v20, &__src[3]);
      memcpy(__dst, __src, 0x58uLL);
      a1(__src, __dst);
      if (v5)
      {
        break;
      }

      v5 = 0;
      sub_2680C5824(__dst, &qword_28024A368, &qword_2680E3FB0);
      v38 = v11;
      v22 = *(v11 + 16);
      v23 = *(v11 + 24);
      if (v22 >= v23 >> 1)
      {
        sub_2680D7B64((v23 > 1), v22 + 1, 1);
        v11 = v38;
      }

      *(v11 + 16) = v22 + 1;
      v24 = (v11 + 48 * v22);
      v25 = __src[0];
      v26 = __src[1];
      *(v24 + 60) = *(&__src[1] + 12);
      v24[2] = v25;
      v24[3] = v26;
      ++v19;
      v20 += 40;
    }

    sub_2680C5824(__dst, &qword_28024A368, &qword_2680E3FB0);
  }

  __break(1u);
  return result;
}

uint64_t sub_2680D561C@<X0>(char *a1@<X8>)
{
  sub_2680C5758(v1 + 16, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A378, &qword_2680E3FC0);
  type metadata accessor for TFIDFScorer();
  result = swift_dynamicCast();
  if (result)
  {

    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2680D56A4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = OUTLINED_FUNCTION_0_8();
    sub_2680D7A44(v5, v6, v7);
    v8 = v31;
    v9 = a1 + 32;
    do
    {
      v10 = v4(v9);
      v12 = v11;
      v31 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2680D7A44((v13 > 1), v14 + 1, 1);
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 40;
      --v3;
    }

    while (v3);
    v1 = v30;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v16 = sub_2680BD870(v8, *(v1 + 72));

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_0_8();
    sub_2680D7A64(v18, v19, v20);
    v21 = v31;
    v22 = *(v31 + 16);
    v23 = 48;
    do
    {
      v24 = *(v16 + v23);
      v25 = *(v31 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_2680D7A64((v25 > 1), v22 + 1, 1);
      }

      *(v31 + 16) = v22 + 1;
      *(v31 + 4 * v22 + 32) = v24;
      v23 += 24;
      ++v22;
      --v17;
    }

    while (v17);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v27 = sub_2680D5044(v26, v21);

  v28 = sub_2680E04A8(v27);

  return v28;
}

uint64_t sub_2680D5894()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_2680D594C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22[0] = MEMORY[0x277D84F90];
    sub_2680D7B64(0, v3, 0);
    v4 = v22[0];
    v5 = a1 + 32;
    do
    {
      sub_2680C5758(v5, &v26);
      *&v27[24] = 0;
      v22[0] = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2680D7B64((v6 > 1), v7 + 1, 1);
        v4 = v22[0];
      }

      *(v4 + 16) = v7 + 1;
      v8 = (v4 + 48 * v7);
      v9 = v26;
      v10 = *v27;
      *(v8 + 60) = *&v27[12];
      v8[2] = v9;
      v8[3] = v10;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      sub_2680C57BC(v13, &v26, &qword_28024A360, &unk_2680E4610);
      v14 = *&v27[24];
      sub_2680C2CD8(&v26, v22);
      v25 = v14;
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = (*(v16 + 8))(a1, v15, v16);
      MEMORY[0x28223BE20](v17);
      v21[2] = v22;
      v18 = sub_2680D52FC(sub_2680D5D0C, v21, v4, v17);

      sub_2680C5824(v22, &qword_28024A360, &unk_2680E4610);
      v13 += 48;
      v4 = v18;
      --v12;
    }

    while (v12);
  }

  else
  {
    v18 = v4;
  }

  v19 = sub_2680E04A8(v18);

  return v19;
}

uint64_t sub_2680D5B68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2680C57BC(a1, v14, &qword_28024A368, &qword_2680E3FB0);
  sub_2680C5758(v14, a3);
  sub_2680D5D88(v14);
  sub_2680C57BC(a1, v12, &qword_28024A368, &qword_2680E3FB0);
  v6 = *&v12[10];
  sub_2680D5D88(v12);
  v7 = *(a2 + 40);
  v8 = a1[9];
  v9 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v8);
  v10 = v6 + (v7 * (*(v9 + 16))(v8, v9));
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  *(a3 + 40) = v10;
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_2680D5C74()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *(*sub_2680D5DF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *(*a5)(void *__return_ptr, uint64_t)))(void *__return_ptr, uint64_t)
{
  v7 = sub_2680E1B0C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4;
  sub_2680E1AFC();
  sub_2680E1DDC();
  v12 = sub_2680E1AEC();
  v13 = v15[1];
  a5(&v16, v12);
  if (v13)
  {
    sub_2680E1DCC();
    sub_2680E1AEC();
    swift_willThrow();
  }

  else
  {
    a5 = v16;
    sub_2680E1DCC();
    sub_2680E1AEC();
  }

  (*(v8 + 8))(v10, v7);
  return a5;
}

uint64_t sub_2680D5FA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A388, &qword_2680E4018);
    v2 = sub_2680E1EEC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2680D4E84(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2680D8834(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2680D8834(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2680D8834(v31, v32);
    result = sub_2680E1E2C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_2680D8834(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_2680D626C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3B8, &qword_2680E4058);
    v2 = sub_2680E1EEC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_2680D8834(&v22, v24);
    sub_2680D8834(v24, v25);
    sub_2680D8834(v25, &v23);
    result = sub_2680D83B8(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      result = sub_2680D8834(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_2680D8834(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2680D64B8@<X0>(uint64_t x8_0@<X8>)
{
  if (qword_280249ED0 != -1)
  {
    swift_once();
  }

  return sub_2680DE7F8(x8_0);
}

uint64_t sub_2680D6528(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_4();
  v83 = v16;
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v17);
  v79 = &v65 - v18;
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = *a2;
  v77 = a2[1];
  v78 = v22;
  v23 = a2[2];
  v75 = a2[3];
  v76 = v23;
  v24 = *(v3 + 16);

  v24(a1);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  v85 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_2680C5824(v11, &qword_28024A080, &unk_2680E2B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3A0, &qword_2680E4040);
    v26 = *(v14 + 80);
    v68 = v14[9];
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2680E2A00;
    v82 = v14[2];
    (v82)(v27 + ((v26 + 32) & ~v26), a1, v85);
  }

  else
  {
    (v14[4])(v21, v11, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3A0, &qword_2680E4040);
    v28 = v14[9];
    v26 = *(v14 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2680E29F0;
    v30 = v29 + ((v26 + 32) & ~v26);
    v81 = v14;
    v82 = a1;
    v31 = v14[2];
    a1 = (v14 + 2);
    (v31)(v30, v21, v85);
    v68 = v28;
    v32 = v82;
    v82 = v31;
    (v31)(v28 + v30, v32, v85);
    v14 = v81;
    v33 = v21;
    v27 = v29;
    v81[1](v33, v85);
  }

  v34 = sub_2680D3080(a3);
  v37 = v83;
  if (!v35)
  {
    v34 = sub_2680D3214();
    if (!v35)
    {

      sub_2680D87E0();
      swift_allocError();
      *v63 = 0;
      v63[1] = 0;
      goto LABEL_32;
    }
  }

  v38 = v35;
  v66 = *(v27 + 16);
  if (!v66)
  {

    goto LABEL_30;
  }

  v74 = v34;
  v39 = 0;
  v40 = v26;
  v41 = 0;
  v65 = v27;
  v67 = v27 + ((v40 + 32) & ~v40);
  v80 = v14 + 2;
  v81 = v14 + 1;
  *&v36 = 136315650;
  v69 = v36;
  v42 = v79;
  while (1)
  {
    v70 = v41;
    (v82)(v42, v67 + v68 * v41, v85);
    if (!v39)
    {
      break;
    }

LABEL_9:
    v41 = v70 + 1;
    (*v81)(v42, v85);
    if (v41 == v66)
    {

      if (v39)
      {
        a1 = sub_2680C6160();

        return a1;
      }

LABEL_30:
      sub_2680D87E0();
      swift_allocError();
      *v62 = xmmword_2680E2760;
LABEL_32:
      swift_willThrow();
      return a1;
    }
  }

  v43 = 0;
  v44 = 0;
  while (1)
  {
    v45 = v43;
    if (!v39)
    {
      break;
    }

LABEL_26:
    v43 = 1;
    v44 = 1u;
    if (v45)
    {
      goto LABEL_9;
    }
  }

  a1 = *(&unk_2878F36A0 + v44 + 32);
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v46 = sub_2680E1B3C();
  __swift_project_value_buffer(v46, qword_28024C7A8);
  (v82)(v37, v42, v85);

  v47 = sub_2680E1B1C();
  v48 = sub_2680E1DAC();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v72 = v5;
    v50 = v49;
    v71 = swift_slowAlloc();
    v84[0] = v71;
    *v50 = v69;
    v51 = v74;
    *(v50 + 4) = sub_2680DF818(v74, v38, v84);
    *(v50 + 12) = 2080;
    v52 = a1;
    if (a1)
    {
      v53 = 1852797802;
    }

    else
    {
      v53 = 7235938;
    }

    if (a1)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE300000000000000;
    }

    v55 = sub_2680DF818(v53, v54, v84);

    *(v50 + 14) = v55;
    *(v50 + 22) = 2080;
    sub_2680D8844();
    v56 = sub_2680E1F4C();
    v58 = v57;
    v73 = *v81;
    v73(v83, v85);
    v59 = sub_2680DF818(v56, v58, v84);

    *(v50 + 24) = v59;
    v60 = v52;
    _os_log_impl(&dword_2680BC000, v47, v48, "Trying to load %s %s model from %s", v50, 0x20u);
    a1 = v71;
    swift_arrayDestroy();
    v37 = v83;
    OUTLINED_FUNCTION_12();
    v5 = v72;
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v73 = *v81;
    v73(v37, v85);
    v51 = v74;
    v60 = a1;
  }

  v84[0] = v78;
  v84[1] = v77;
  v84[2] = v76;
  v84[3] = v75;
  v42 = v79;
  v61 = sub_2680D6D64(v79, v84, v51, v38, v60);
  if (!v5)
  {
    v39 = v61;
    goto LABEL_26;
  }

  v73(v42, v85);

  return a1;
}

uint64_t sub_2680D6C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  v7 = (a2 + 56);
  if (!v6)
  {
    return v15;
  }

  while (1)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 - 2);
    v14[0] = *(v7 - 3);
    v14[1] = v10;
    v14[2] = v8;
    v14[3] = v9;

    v11 = sub_2680D6528(a1, v14, a3);
    if (v3)
    {
      break;
    }

    v12 = v11;

    sub_2680D84E4(v12);
    v7 += 4;
    if (!--v6)
    {
      return v15;
    }
  }
}

uint64_t sub_2680D6D64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v62 = a5;
  v68 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v65 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v59 = v8;
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v9);
  v58 = &v58 - v10;
  OUTLINED_FUNCTION_2_7();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v58 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - v18;
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x28223BE20](v19);
  v64 = &v58 - v20;
  v22 = *a2;
  v21 = a2[1];
  v23 = a2[2];
  v24 = a2[3];
  v60 = v23;
  v25 = sub_2680E1C2C();
  v27 = v26;
  v28 = v25 == 0x73752D6E65 && v26 == 0xE500000000000000;
  if (v28 || (v29 = v25, (sub_2680E1F5C() & 1) != 0))
  {

    v27 = 0xE200000000000000;
    v29 = 28261;
  }

  sub_2680E162C();
  v66 = v22;
  v67 = v21;

  MEMORY[0x26D610FD0](0x696D6166676C6E2ELL, 0xEA0000000000796CLL);
  sub_2680E162C();

  v30 = *(v65 + 8);
  v31 = v68;
  v30(v14, v68);
  v66 = v60;
  v67 = v24;

  MEMORY[0x26D610FD0](1735159342, 0xE400000000000000);
  v32 = v61;
  sub_2680E162C();

  v30(v17, v31);
  v66 = v29;
  v67 = v27;
  MEMORY[0x26D610FD0](0x2E676C6E2ELL, 0xE500000000000000);
  v33 = v62;
  if (v62)
  {
    v34 = 1852797802;
  }

  else
  {
    v34 = 7235938;
  }

  if (v62)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  MEMORY[0x26D610FD0](v34, v35);

  v36 = v64;
  sub_2680E162C();

  v30(v32, v31);
  v37 = sub_2680E164C();
  v39 = v38;
  v40 = [objc_opt_self() defaultManager];
  v41 = sub_2680E1BCC();
  v42 = [v40 fileExistsAtPath_];

  if (v42)
  {

    if (v33)
    {
      v43 = v59;
      v44 = OUTLINED_FUNCTION_3_7();
      v45(v44);
      type metadata accessor for SerializedDialogSelectionModel(0);
      swift_allocObject();
      v46 = v63;
      v47 = sub_2680C59B0(v43);
    }

    else
    {
      v43 = v58;
      v55 = OUTLINED_FUNCTION_3_7();
      v56(v55);
      type metadata accessor for SerializedDialogSelectionModel(0);
      swift_allocObject();
      v46 = v63;
      v47 = sub_2680C5D70(v43);
    }

    if (!v46)
    {
      v43 = v47;
    }

    v30(v36, v42);
  }

  else
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v48 = sub_2680E1B3C();
    __swift_project_value_buffer(v48, qword_28024C7A8);

    v49 = sub_2680E1B1C();
    v50 = sub_2680E1DAC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v66 = v52;
      *v51 = 136315138;
      v53 = v30;
      v54 = sub_2680DF818(v37, v39, &v66);

      *(v51 + 4) = v54;
      _os_log_impl(&dword_2680BC000, v49, v50, "No file found at %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();

      v53(v64, v68);
    }

    else
    {

      v30(v36, v68);
    }

    return 0;
  }

  return v43;
}

uint64_t sub_2680D7300()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2680D73BC()
{
  if (qword_280249E78 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v2 = sub_2680D5DF4("DialogEngineExecution", 21, 2, qword_28024C7C0, sub_2680D7744);
    if (v1)
    {
      return v0;
    }

    v3 = v2;
    result = sub_2680D8628(v2);
    if (!result)
    {
      break;
    }

    v5 = result;
    v6 = *(result + 16);
    if (!v6)
    {

      return MEMORY[0x277D84F90];
    }

    v12 = MEMORY[0x277D84F90];
    sub_2680D7B24(0, v6, 0);
    v7 = 0;
    v0 = v12;
    while (v7 < *(v5 + 16))
    {
      v10 = *(v5 + 8 * v7 + 32);
      sub_2680D777C(&v10, v11);
      v12 = v0;
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2680D7B24((v8 > 1), v9 + 1, 1);
        v0 = v12;
      }

      ++v7;
      *(v0 + 16) = v9 + 1;
      sub_2680C2CD8(v11, v0 + 40 * v9 + 32);
      if (v6 == v7)
      {

        return v0;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_2680D7590(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v16 = [objc_allocWithZone(MEMORY[0x277D05290]) init];
  v17 = sub_2680E165C();
  sub_2680D86EC(v17, v18, v16, &selRef_setTemplateDir_);
  sub_2680D8694(a1, a2, v16);

  MEMORY[0x26D610FD0](35, 0xE100000000000000);
  MEMORY[0x26D610FD0](a5, a6);
  sub_2680D86EC(a3, a4, v16, &selRef_setCatId_);
  v19 = sub_2680D5FA8(a7);
  sub_2680D8758(v19, v16, &selRef_setParameters_);
  v20 = sub_2680D5FA8(a9);
  sub_2680D8758(v20, v16, &selRef_setGlobalParameters_);
  [v16 setSwitchFallthrough_];
  v21 = [v16 execute];
  if (v21)
  {
    v22 = v21;

    *a8 = v22;
  }

  else
  {
    sub_2680D87E0();
    swift_allocError();
    *v23 = 0xD000000000000016;
    v23[1] = 0x80000002680E50E0;
    swift_willThrow();
  }
}

uint64_t sub_2680D777C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for NLGDialogBuilder();
  swift_initStackObject();
  NLGDialogBuilder.init()();
  sub_2680D3478(25705, 0xE200000000000000, v3, &v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      sub_2680D3AB8(v5, v6);
    }
  }

  else
  {
    sub_2680C5824(&v7, &qword_28024A300, &unk_2680E3D20);
  }

  sub_2680D3478(0x746E65746E6F63, 0xE700000000000000, v3, &v7);
  if (!v8)
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A308, &unk_2680E3D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2680D3478(0x746E697270, 0xE500000000000000, v5, &v7);

  if (!v8)
  {
LABEL_10:
    sub_2680C5824(&v7, &qword_28024A300, &unk_2680E3D20);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    sub_2680D3B00(v5, v6);
  }

LABEL_11:
  sub_2680D3C80(a2);
}

char *sub_2680D7958(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_2680D797C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_2680D799C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_2680D79BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_2680D79E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

char *sub_2680D7A04(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_9(a3, result);
  }

  return result;
}

void *sub_2680D7A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D7BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2680D7A44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D7CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2680D7A64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D7DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2680D7A84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D8038(a1, a2, a3, *v3, &qword_28024A390, &qword_2680E4028, &qword_28024A398, &unk_2680E4030);
  *v3 = result;
  return result;
}

void *sub_2680D7AC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D7EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2680D7AE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D8038(a1, a2, a3, *v3, &qword_28024A310, &unk_2680E3E98, &qword_280249F50, &unk_2680E2970);
  *v3 = result;
  return result;
}

void *sub_2680D7B24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D8038(a1, a2, a3, *v3, &qword_28024A320, &unk_2680E3EB0, &qword_28024A328, &qword_2680E4010);
  *v3 = result;
  return result;
}

char *sub_2680D7B64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D8170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2680D7B84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2680D8284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2680D7BA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3D0, &unk_2680E4070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F90, &unk_2680E29E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2680D7CD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A350, &qword_2680E4020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2680D7DDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3B0, &qword_2680E4050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_2680D7EDC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3C0, &qword_2680E4060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3C8, &qword_2680E4068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2680D8038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || &a4[5 * v14 + 4] <= v16 + 4)
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2680D8170(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3A8, &qword_2680E4048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2680D8284(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3D8, &unk_2680E4080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A360, &unk_2680E4610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2680D83B8(uint64_t a1, uint64_t a2)
{
  sub_2680E1FEC();
  sub_2680E1C6C();
  v4 = sub_2680E200C();

  return sub_2680D8430(a1, a2, v4);
}

unint64_t sub_2680D8430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2680E1F5C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_2680D84E4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2680D85C0(v4 + v3);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A328, &qword_2680E4010);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v6 = *(v5 + 16);
  v7 = __OFADD__(v6, v3);
  v8 = v6 + v3;
  if (!v7)
  {
    *(v5 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2680D85C0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_2680D4C40();
    *v1 = v5;
  }
}

uint64_t sub_2680D8628(void *a1)
{
  v1 = [a1 response];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A308, &unk_2680E3D30);
  v3 = sub_2680E1D3C();

  return v3;
}

void sub_2680D8694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2680E1BCC();
  [a3 setLocale_];
}

void sub_2680D86EC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2680E1BCC();

  [a3 *a4];
}

void sub_2680D8758(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_2680E1B4C();

  [a2 *a3];
}

unint64_t sub_2680D87E0()
{
  result = qword_28024A380;
  if (!qword_28024A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A380);
  }

  return result;
}

_OWORD *sub_2680D8834(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2680D8844()
{
  result = qword_280249F88;
  if (!qword_280249F88)
  {
    sub_2680E167C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280249F88);
  }

  return result;
}

uint64_t sub_2680D88E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2680D9C60(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_2680D9BF4(result, v3, a2);
      OUTLINED_FUNCTION_4_7();

      return OUTLINED_FUNCTION_5_5();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2680D8968()
{
  swift_beginAccess();

  v1 = sub_2680E0374(v0);

  return v1;
}

void *sub_2680D89C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = a1;
  sub_2680D8E88();
  return v3;
}

void sub_2680D89EC(void *a1)
{
  v2 = v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = OUTLINED_FUNCTION_3_8();
  v6(v5, v4);
  if (v41)
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = OUTLINED_FUNCTION_3_8();
    v10 = v9(v8, v7);
    v12 = v11;
    swift_beginAccess();
    sub_2680D9A00(sub_2680D4B84);
    v13 = *(*(v1 + 16) + 16);
    sub_2680D9A74(v13, sub_2680D4B84);
    v14 = *(v1 + 16);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + (v13 << 6);
    *(v15 + 32) = v40;
    *(v15 + 40) = v41;
    *(v15 + 48) = v42;
    *(v15 + 64) = v43;
    *(v15 + 72) = v44;
    *(v15 + 80) = v10;
    *(v15 + 88) = v12;
    *(v1 + 16) = v14;
    swift_endAccess();
    v16 = *(sub_2680D8968() + 16);

    v17 = *(v2 + 40);
    if (v17 >= v16)
    {
LABEL_25:
      sub_2680D9494();
      OUTLINED_FUNCTION_6_3();
      return;
    }

    v18 = *(*(v2 + 16) + 16);
    v19 = v18 - v17;
    if (__OFSUB__(v18, v17))
    {
      __break(1u);
    }

    else if (qword_280249E70 == -1)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_6_0(&qword_280249E70);
LABEL_5:
    v20 = sub_2680E1B3C();
    __swift_project_value_buffer(v20, qword_28024C7A8);
    v21 = sub_2680E1B1C();
    v22 = sub_2680E1DAC();
    if (os_log_type_enabled(v21, v22))
    {
      v12 = OUTLINED_FUNCTION_8_3();
      *v12 = 134217984;
      *(v12 + 4) = v19;
      _os_log_impl(&dword_2680BC000, v21, v22, "Dropping %ld oldest entries", v12, 0xCu);
      OUTLINED_FUNCTION_12();
    }

    v23 = *(v2 + 16);
    v24 = *(v23 + 16);
    v25 = v24 - v17;
    if (__OFSUB__(v24, v17))
    {
      __break(1u);
    }

    else
    {

      sub_2680D88E8(v25, v23);
      OUTLINED_FUNCTION_4_7();
      if ((v17 & 1) == 0)
      {
LABEL_9:
        v26 = OUTLINED_FUNCTION_5_5();
        sub_2680D9B24(v26, v27, v28, v29);
        v31 = v30;
        goto LABEL_23;
      }

      sub_2680E1F7C();
      swift_unknownObjectRetain_n();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        swift_unknownObjectRelease();
        v37 = MEMORY[0x277D84F90];
      }

      v38 = *(v37 + 16);

      if (!__OFSUB__(v17 >> 1, v12))
      {
        if (v38 == (v17 >> 1) - v12)
        {
          v31 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v31)
          {
LABEL_24:
            *(v2 + 16) = v31;

            goto LABEL_25;
          }

          v31 = MEMORY[0x277D84F90];
LABEL_23:
          swift_unknownObjectRelease();
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v32 = sub_2680E1B3C();
  __swift_project_value_buffer(v32, qword_28024C7A8);
  oslog = sub_2680E1B1C();
  v33 = sub_2680E1DBC();
  if (os_log_type_enabled(oslog, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2680BC000, oslog, v33, "Only catSwitch type dialogs supported", v34, 2u);
    OUTLINED_FUNCTION_12();
  }

  OUTLINED_FUNCTION_6_3();
}

void sub_2680D8D8C()
{
  v1 = v0;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v2 = sub_2680E1B3C();
  __swift_project_value_buffer(v2, qword_28024C7A8);
  v3 = sub_2680E1B1C();
  v4 = sub_2680E1DAC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2680BC000, v3, v4, "Clearing history", v5, 2u);
    OUTLINED_FUNCTION_12();
  }

  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F90];

  sub_2680D9494();
}

void sub_2680D8E88()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v3 = OUTLINED_FUNCTION_7_2();
  v4 = [v2 persistentDomainForName_];

  if (!v4)
  {
LABEL_17:
    if (qword_280249E70 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v5 = sub_2680E1B5C();

  sub_2680D3478(v1[3], v1[4], v5, &v27);

  if (!*(&v28 + 1))
  {
    sub_2680D9ABC(&v27);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F90, &unk_2680E29E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = v31;
  v8 = *(v31 + 16);
  v9 = v31 + 40;
  v10 = MEMORY[0x277D84F90];
  v26 = v31 + 40;
LABEL_5:
  for (i = (v9 + 16 * v6); ; i += 2)
  {
    if (v8 == v6)
    {

      swift_beginAccess();
      v1[2] = v10;

      goto LABEL_17;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v13 = *(i - 1);
    v12 = *i;

    sub_2680D91B8(v13, v12, &v27);
    v14 = v27;
    v31 = v28;
    v32 = v29;
    v33 = v30;
    if (*(&v27 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2680D4B84();
        v10 = v19;
      }

      v15 = *(v10 + 16);
      if (v15 >= *(v10 + 24) >> 1)
      {
        sub_2680D4B84();
        v10 = v20;
      }

      ++v6;
      v28 = v32;
      v29 = v33;
      v27 = v31;
      *(v10 + 16) = v15 + 1;
      v16 = (v10 + (v15 << 6));
      v16[2] = v14;
      v17 = v27;
      v18 = v29;
      v16[4] = v28;
      v16[5] = v18;
      v16[3] = v17;
      v9 = v26;
      goto LABEL_5;
    }

    ++v6;
  }

  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_6_0(&qword_280249E70);
LABEL_18:
  v21 = sub_2680E1B3C();
  __swift_project_value_buffer(v21, qword_28024C7A8);

  v22 = sub_2680E1B1C();
  v23 = sub_2680E1DAC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_8_3();
    *v24 = 134217984;
    v25 = *(sub_2680D8968() + 16);

    *(v24 + 4) = v25;

    _os_log_impl(&dword_2680BC000, v22, v23, "Loaded %ld dialogs from history", v24, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }
}

void sub_2680D91B8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[0] = 35;
  v44[1] = 0xE100000000000000;
  v43 = v44;

  v6 = sub_2680D1F00(0x7FFFFFFFFFFFFFFFLL, 1, sub_2680CA7CC, v42, a1, a2);
  if (v6[2] != 4)
  {

    if (qword_280249E70 == -1)
    {
LABEL_8:
      v34 = sub_2680E1B3C();
      __swift_project_value_buffer(v34, qword_28024C7A8);
      OUTLINED_FUNCTION_3_8();

      v35 = sub_2680E1B1C();
      v36 = sub_2680E1DBC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_8_3();
        v38 = swift_slowAlloc();
        v44[0] = v38;
        *v37 = 136315138;
        v39 = sub_2680DF818(a1, a2, v44);

        *(v37 + 4) = v39;
        _os_log_impl(&dword_2680BC000, v35, v36, "Unparsable entry: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {
      }

      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      goto LABEL_12;
    }

LABEL_14:
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
    goto LABEL_8;
  }

  if (!v6[2])
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];

  v11 = MEMORY[0x26D610F90](v7, v8, v9, v10);
  v40 = v12;
  v41 = v11;

  if (v6[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v6[8];
  v14 = v6[9];
  v15 = v6[10];
  v16 = v6[11];

  v17 = MEMORY[0x26D610F90](v13, v14, v15, v16);
  v19 = v18;

  if (v6[2] < 3uLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v6[12];
  v21 = v6[13];
  v22 = v6[14];
  v23 = v6[15];

  v24 = MEMORY[0x26D610F90](v20, v21, v22, v23);
  v26 = v25;

  if (v6[2] >= 4uLL)
  {
    v27 = v6[16];
    v28 = v6[17];
    v29 = v6[18];
    v30 = v6[19];

    v31 = MEMORY[0x26D610F90](v27, v28, v29, v30);
    v33 = v32;

    *a3 = v41;
    *(a3 + 8) = v40;
    *(a3 + 16) = v17;
    *(a3 + 24) = v19;
    *(a3 + 32) = v24;
    *(a3 + 40) = v26;
    *(a3 + 48) = v31;
    *(a3 + 56) = v33;
LABEL_12:
    OUTLINED_FUNCTION_6_3();
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_2680D9494()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3E0, &qword_2680E4150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680E2A00;
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v26 = inited;
    v27 = v2;
    v30 = MEMORY[0x277D84F90];

    sub_2680D7A44(0, v7, 0);
    v8 = v30;
    v9 = (v6 + 48);
    do
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[4];
      v14 = v9[5];
      v28 = *(v9 - 2);
      v29 = *(v9 - 1);

      OUTLINED_FUNCTION_2_8();
      MEMORY[0x26D610FD0](v10, v11);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x26D610FD0](v12, v13);
      OUTLINED_FUNCTION_2_8();
      MEMORY[0x26D610FD0](v15, v14);
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2680D7A44((v16 > 1), v17 + 1, 1);
      }

      *(v30 + 16) = v17 + 1;
      v18 = v30 + 16 * v17;
      *(v18 + 32) = v28;
      *(v18 + 40) = v29;
      v9 += 8;
      --v7;
    }

    while (v7);

    v2 = v27;
    inited = v26;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280249F90, &unk_2680E29E0);
  *(inited + 48) = v8;
  v19 = MEMORY[0x277D837D0];
  sub_2680E1B7C();
  sub_2680E1B4C();
  OUTLINED_FUNCTION_3_8();

  v20 = OUTLINED_FUNCTION_7_2();
  [v2 setPersistentDomain:v19 forName:v20];

  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v21 = sub_2680E1B3C();
  __swift_project_value_buffer(v21, qword_28024C7A8);

  v22 = sub_2680E1B1C();
  v23 = sub_2680E1DAC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_8_3();
    *v24 = 134217984;
    v25 = *(sub_2680D8968() + 16);

    *(v24 + 4) = v25;

    _os_log_impl(&dword_2680BC000, v22, v23, "Saved %ld dialogs to history", v24, 0xCu);
    OUTLINED_FUNCTION_12();
  }

  else
  {
  }
}

uint64_t sub_2680D97C4()
{

  return v0;
}

uint64_t sub_2680D97EC()
{
  sub_2680D97C4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2680D9858(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2680D9898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2680D9964@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t sub_2680D99B8()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2680D9A00(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2680D9A74(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2680D9ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A300, &unk_2680E3D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2680D9B24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A318, &qword_2680E3EA8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 64);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t sub_2680D9BF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2680D9C60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void OUTLINED_FUNCTION_2_8()
{

  JUMPOUT(0x26D610FD0);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_2680E1BCC();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_slowAlloc();
}

uint64_t sub_2680D9D50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_18_0();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2680D9D78()
{
  OUTLINED_FUNCTION_8_4();
  [objc_msgSend(objc_opt_self() sharedStream)];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_8();

  return v1();
}

uint64_t sub_2680D9E08()
{
  sub_2680E188C();
  if (sub_2680E187C())
  {
    sub_2680E185C();

    sub_2680E18AC();
  }

  return OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2680D9E78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_2680E16CC();
  v6 = [v4 derivedIdentifierForComponentName:a1 fromSourceIdentifier:v5];

  if (v6)
  {
    sub_2680E16DC();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_2680E16FC();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t sub_2680D9F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return v7;
}

uint64_t sub_2680D9F50(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A408, &qword_2680E41C0);
  v9 = OUTLINED_FUNCTION_10_2(v8);
  MEMORY[0x28223BE20](v9);
  v10 = *a1;
  if (!*(a2 + 16))
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v11 = sub_2680E1B3C();
    __swift_project_value_buffer(v11, qword_28024C7A8);
    v12 = sub_2680E1B1C();
    v13 = sub_2680E1DAC();
    if (os_log_type_enabled(v12, v13))
    {
      *OUTLINED_FUNCTION_2_3() = 0;
      OUTLINED_FUNCTION_26_0(&dword_2680BC000, v14, v15, "SELF logging called with no candidates generated");
      OUTLINED_FUNCTION_12_2();
    }
  }

  sub_2680E1D6C();
  v16 = sub_2680E1D8C();
  OUTLINED_FUNCTION_25_0(v16);
  sub_2680DCCF0(a3, v24, &qword_280249F30, &qword_2680E41B0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v4;
  *(v17 + 40) = v10;
  *(v17 + 48) = a2;
  v18 = v24[1];
  *(v17 + 56) = v24[0];
  *(v17 + 72) = v18;
  *(v17 + 88) = v25;

  v19 = OUTLINED_FUNCTION_20_0();
  sub_2680DA2A8(v19, v20, v21, v22, v17);
}

uint64_t sub_2680DA110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  v8 = swift_task_alloc();
  *(v7 + 16) = v8;
  *v8 = v7;
  v8[1] = sub_2680DA1C8;

  return sub_2680DAB2C();
}

uint64_t sub_2680DA1C8()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_9();
  *v2 = v1;

  OUTLINED_FUNCTION_4_8();

  return v3();
}

uint64_t sub_2680DA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A408, &qword_2680E41C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_2680DCCF0(a3, v24 - v10, &qword_28024A408, &qword_2680E41C0);
  v12 = sub_2680E1D8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2680C5824(v11, &qword_28024A408, &qword_2680E41C0);
  }

  else
  {
    sub_2680E1D7C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2680E1D5C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2680E1C3C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_2680C5824(a3, &qword_28024A408, &qword_2680E41C0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2680C5824(a3, &qword_28024A408, &qword_2680E41C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2680DA58C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A408, &qword_2680E41C0);
  v7 = OUTLINED_FUNCTION_10_2(v6);
  MEMORY[0x28223BE20](v7);
  if (!*(a1 + 16))
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v8 = sub_2680E1B3C();
    __swift_project_value_buffer(v8, qword_28024C7A8);
    v9 = sub_2680E1B1C();
    v10 = sub_2680E1DAC();
    if (os_log_type_enabled(v9, v10))
    {
      *OUTLINED_FUNCTION_2_3() = 0;
      OUTLINED_FUNCTION_26_0(&dword_2680BC000, v11, v12, "SELF logging called with no dialogs");
      OUTLINED_FUNCTION_12_2();
    }
  }

  type metadata accessor for NLGScoredDialogBuilder();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_0(inited);
  *(v14 + 60) = 1;
  sub_2680D3F88(a2);

  sub_2680D3FEC(v29);

  if (!v30)
  {
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v15 = sub_2680E1B3C();
    __swift_project_value_buffer(v15, qword_28024C7A8);
    v16 = sub_2680E1B1C();
    v17 = sub_2680E1DBC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_2_3();
      *v18 = 0;
      _os_log_impl(&dword_2680BC000, v16, v17, "Failed to produce NLGScoredDialog", v18, 2u);
      OUTLINED_FUNCTION_12();
    }
  }

  sub_2680E1D6C();
  v19 = sub_2680E1D8C();
  OUTLINED_FUNCTION_25_0(v19);
  sub_2680DCCF0(v29, v27, &qword_280249F30, &qword_2680E41B0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = v3;
  v21 = v27[1];
  *(v20 + 48) = v27[0];
  *(v20 + 64) = v21;
  *(v20 + 80) = v28;

  v22 = OUTLINED_FUNCTION_20_0();
  sub_2680DA2A8(v22, v23, v24, v25, v20);

  return sub_2680C5824(v29, &qword_280249F30, &qword_2680E41B0);
}

uint64_t sub_2680DA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[25] = a4;
  return MEMORY[0x2822009F8](sub_2680DA84C);
}

uint64_t sub_2680DA84C()
{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2680C5758(v3, v0 + 80);
      type metadata accessor for NLGScoredDialogBuilder();
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_19_0(inited);
      *(v6 + 60) = 1;
      sub_2680D3F88(v0 + 80);

      sub_2680D3FEC(v0 + 160);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
      if (*(v0 + 184))
      {
        sub_2680C58BC((v0 + 160), v0 + 120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2680D4DBC();
          v4 = v8;
        }

        v7 = *(v4 + 16);
        if (v7 >= *(v4 + 24) >> 1)
        {
          sub_2680D4DBC();
          v4 = v9;
        }

        *(v4 + 16) = v7 + 1;
        sub_2680C58BC((v0 + 120), v4 + 40 * v7 + 32);
      }

      else
      {
        sub_2680C5824(v0 + 160, &qword_280249F30, &qword_2680E41B0);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 224) = v4;
  *(v0 + 77) = 3;
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_2680DAA30;
  OUTLINED_FUNCTION_15_1();

  return sub_2680DAB2C();
}

uint64_t sub_2680DAA30()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_9();
  *v2 = v1;

  OUTLINED_FUNCTION_4_8();

  return v3();
}

uint64_t sub_2680DAB2C()
{
  OUTLINED_FUNCTION_8_4();
  v3 = v2;
  *(v1 + 40) = v4;
  *(v1 + 48) = v0;
  *(v1 + 32) = v5;
  v6 = sub_2680E1C0C();
  OUTLINED_FUNCTION_10_2(v6);
  *(v1 + 56) = swift_task_alloc();
  v7 = sub_2680E16FC();
  *(v1 + 64) = v7;
  *(v1 + 72) = *(v7 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3E8, &qword_2680E41A8);
  OUTLINED_FUNCTION_10_2(v8);
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 160) = *v3;
  v9 = OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2680DAC7C()
{
  v79 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 64);
  v4 = (*(*(v0 + 48) + 32))();
  v6 = v5;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v7 = 0x280249000uLL;
  v8 = &loc_2680E2000;
  if (!v6)
  {
    goto LABEL_4;
  }

  v9 = *(v0 + 104);
  v10 = *(v0 + 64);

  sub_2680E16AC();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2680C5824(*(v0 + 104), &qword_28024A3E8, &qword_2680E41A8);
LABEL_4:
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v11 = sub_2680E1B3C();
    __swift_project_value_buffer(v11, qword_28024C7A8);

    v12 = sub_2680E1B1C();
    v13 = sub_2680E1DBC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v78 = v15;
      *v14 = 136315138;
      *(v0 + 16) = v4;
      *(v0 + 24) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3F8, &qword_2680E41B8);
      v16 = sub_2680E1C1C();
      v18 = sub_2680DF818(v16, v17, &v78);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2680BC000, v12, v13, "UUID could not be calculated from: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_12();
    }

    else
    {
    }

    goto LABEL_14;
  }

  v20 = *(v0 + 112);
  v19 = *(v0 + 120);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 88);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);
  v26 = *(v0 + 48);
  sub_2680C5824(v19, &qword_28024A3E8, &qword_2680E41A8);

  (*(v25 + 32))(v23, v21, v24);
  v75 = *(v25 + 16);
  v75(v19, v23, v24);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v24);
  v27 = *(v26 + 56);
  v7 = 0x280249000uLL;
  v27(v23);
  sub_2680C5824(v20, &qword_28024A3E8, &qword_2680E41A8);
  sub_2680DCB1C(v22, v20);
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v28 = sub_2680E1B3C();
  __swift_project_value_buffer(v28, qword_28024C7A8);
  v29 = OUTLINED_FUNCTION_21_0();
  (v75)(v29);
  v30 = sub_2680E1B1C();
  v31 = sub_2680E1DAC();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);
  v36 = *(v0 + 64);
  v35 = *(v0 + 72);
  if (v32)
  {
    v76 = *(v0 + 88);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v78 = v38;
    *v37 = 136315138;
    sub_2680DCB8C();
    v39 = sub_2680E1F4C();
    v41 = v40;
    v42 = *(v35 + 8);
    v42(v33, v36);
    v43 = sub_2680DF818(v39, v41, &v78);
    v7 = 0x280249000;

    *(v37 + 4) = v43;
    _os_log_impl(&dword_2680BC000, v30, v31, "Request ID %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    v8 = &loc_2680E2000;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12_2();

    v42(v76, v36);
  }

  else
  {

    v44 = *(v35 + 8);
    v44(v33, v36);
    v44(v34, v36);
    v8 = &loc_2680E2000;
  }

LABEL_14:
  v45 = *(v0 + 112);
  v46 = *(v0 + 32);
  v47 = *(v0 + 40);
  LOBYTE(v78) = *(v0 + 160);
  v48 = sub_2680DBFF8(&v78, v46, v47, v45);
  *(v0 + 128) = v48;
  if (v48)
  {
    v49 = v48;
    if (*(v7 + 3696) != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v50 = sub_2680E1B3C();
    __swift_project_value_buffer(v50, qword_28024C7A8);
    v51 = v49;
    v52 = sub_2680E1B1C();
    v53 = sub_2680E1DAC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v78 = v55;
      *v54 = v8[307];
      v56 = sub_2680DCA4C(v51);
      if (v57 >> 60 == 15)
      {
        v58 = 0;
        v59 = 0;
      }

      else
      {
        v65 = v56;
        v66 = v57;
        sub_2680E1BFC();
        v67 = sub_2680E1BEC();
        if (v68)
        {
          v58 = v67;
        }

        else
        {
          v58 = 0x6544726F7272653CLL;
        }

        if (v68)
        {
          v59 = v68;
        }

        else
        {
          v59 = 0xEF3E676E69646F63;
        }

        sub_2680DCAB0(v65, v66);
      }

      if (v59)
      {
        v69 = v58;
      }

      else
      {
        v69 = 0xD000000000000016;
      }

      if (v59)
      {
        v70 = v59;
      }

      else
      {
        v70 = 0x80000002680E51F0;
      }

      v71 = sub_2680DF818(v69, v70, &v78);

      *(v54 + 4) = v71;
      _os_log_impl(&dword_2680BC000, v52, v53, "    Sending SELF generation event:     %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_1_9();
    v77 = v72;
    v63 = swift_task_alloc();
    *(v0 + 136) = v63;
    *v63 = v0;
    v64 = sub_2680DB42C;
    goto LABEL_37;
  }

  v60 = sub_2680DB800(*(v0 + 120), *(v0 + 112));
  *(v0 + 144) = v60;
  if (v60)
  {
    v51 = v60;
    OUTLINED_FUNCTION_1_9();
    v77 = v61;
    v62 = swift_task_alloc();
    *(v0 + 152) = v62;
    *v62 = v0;
    OUTLINED_FUNCTION_3_9();
LABEL_37:
    v63[1] = v64;

    return v77(v51);
  }

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16_1();

  OUTLINED_FUNCTION_4_8();

  return v74();
}

uint64_t sub_2680DB42C()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_9();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2680DB510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_23_0();

  v13 = sub_2680DB800(*(v12 + 120), *(v12 + 112));
  *(v12 + 144) = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_1_9();
    a9 = v14;
    v15 = swift_task_alloc();
    *(v12 + 152) = v15;
    *v15 = v12;
    OUTLINED_FUNCTION_3_9();
    *(v16 + 8) = v17;
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_16_1();

    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_15_1();
  }

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_2680DB664()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_9();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2680DB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_23_0();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16_1();

  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_15_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void *sub_2680DB800(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3E8, &qword_2680E41A8);
  v4 = OUTLINED_FUNCTION_10_2(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v71 = v5 - v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v65 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = sub_2680E16FC();
  OUTLINED_FUNCTION_0_1();
  v72 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_1();
  v66 = v24 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v65 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v65 - v30;
  v32 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v32)
  {
    v33 = v32;
    v70 = a1;
    v67 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v67)
    {
      v34 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v34)
      {
        v35 = v34;
        sub_2680DCCF0(v73, v20, &qword_28024A3E8, &qword_2680E41A8);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
        v37 = v67;
        if (EnumTagSinglePayload == 1)
        {
          sub_2680C5824(v20, &qword_28024A3E8, &qword_2680E41A8);
        }

        else
        {
          v51 = v72;
          v52 = OUTLINED_FUNCTION_21_0();
          v53(v52);
          sub_2680DC718();
          (*(v51 + 16))(v29, v31, v21);
          v54 = sub_2680DBF5C(v29);
          [v37 setUuid_];

          (*(v51 + 8))(v31, v21);
        }

        v55 = v70;
        [v37 setComponent_];
        v56 = v55;
        v57 = v68;
        sub_2680DCCF0(v56, v68, &qword_28024A3E8, &qword_2680E41A8);
        if (__swift_getEnumTagSinglePayload(v57, 1, v21) == 1)
        {
          sub_2680C5824(v57, &qword_28024A3E8, &qword_2680E41A8);
          v58 = v35;
        }

        else
        {
          v59 = v72;
          v60 = v66;
          (*(v72 + 32))(v66, v57, v21);
          sub_2680DC718();
          v61 = OUTLINED_FUNCTION_11_2();
          v62(v61);
          v63 = sub_2680DBF5C(v29);
          v58 = v35;
          [v35 setUuid_];

          (*(v59 + 8))(v60, v21);
          v37 = v67;
        }

        [v58 setComponent_];
        [v33 setSource_];
        [v33 setTarget_];

        return v33;
      }

      v33 = v67;
    }

    a1 = v70;
  }

  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v38 = sub_2680E1B3C();
  __swift_project_value_buffer(v38, qword_28024C7A8);
  sub_2680DCCF0(a1, v16, &qword_28024A3E8, &qword_2680E41A8);
  sub_2680DCCF0(v73, v13, &qword_28024A3E8, &qword_2680E41A8);
  v39 = sub_2680E1B1C();
  v40 = sub_2680E1DBC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v73;
    *v41 = 136315394;
    sub_2680DCCF0(v16, v10, &qword_28024A3E8, &qword_2680E41A8);
    if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
    {
      sub_2680C5824(v10, &qword_28024A3E8, &qword_2680E41A8);
      v42 = 0xE300000000000000;
      v43 = 6369134;
    }

    else
    {
      v43 = sub_2680E16BC();
      v42 = v44;
      (*(v72 + 8))(v10, v21);
    }

    sub_2680C5824(v16, &qword_28024A3E8, &qword_2680E41A8);
    v45 = sub_2680DF818(v43, v42, &v74);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = v71;
    sub_2680DCCF0(v13, v71, &qword_28024A3E8, &qword_2680E41A8);
    if (__swift_getEnumTagSinglePayload(v46, 1, v21) == 1)
    {
      sub_2680C5824(v46, &qword_28024A3E8, &qword_2680E41A8);
      v47 = 0xE300000000000000;
      v48 = 6369134;
    }

    else
    {
      v48 = sub_2680E16BC();
      v47 = v49;
      (*(v72 + 8))(v46, v21);
    }

    sub_2680C5824(v13, &qword_28024A3E8, &qword_2680E41A8);
    v50 = sub_2680DF818(v48, v47, &v74);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_2680BC000, v39, v40, "    Unable to create RequestLink schemas for SELF for requestId: %s,     and loggingGenerationId: %s", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    sub_2680C5824(v13, &qword_28024A3E8, &qword_2680E41A8);
    sub_2680C5824(v16, &qword_28024A3E8, &qword_2680E41A8);
  }

  return 0;
}

id sub_2680DBF5C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2680E16CC();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_2680E16FC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *sub_2680DBFF8(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v68 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3E8, &qword_2680E41A8);
  v8 = OUTLINED_FUNCTION_10_2(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = sub_2680E16FC();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = *a1;
  v22 = [objc_allocWithZone(MEMORY[0x277D58C30]) init];
  if (v22)
  {
    v23 = v22;
    v69 = [objc_allocWithZone(MEMORY[0x277D58C38]) init];
    if (v69)
    {
      sub_2680DCCF0(a4, v10, &qword_28024A3E8, &qword_2680E41A8);
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_2680C5824(v10, &qword_28024A3E8, &qword_2680E41A8);
        sub_2680DC718();
        sub_2680E16EC();
        v24 = sub_2680DBF5C(v17);
        v25 = v69;
        [v69 setNlgId_];
      }

      else
      {
        (*(v13 + 32))(v20, v10, v11);
        sub_2680DC718();
        (*(v13 + 16))(v17, v20, v11);
        v30 = sub_2680DBF5C(v17);
        v25 = v69;
        [v69 setNlgId_];

        (*(v13 + 8))(v20, v11);
      }

      [v23 setEventMetadata_];
      v67 = [objc_allocWithZone(MEMORY[0x277D58C58]) init];
      v31 = [objc_allocWithZone(MEMORY[0x277D58C48]) init];
      v32 = v31;
      switch(v21)
      {
        case 1:
          if (v31)
          {
            v33 = 2;
            goto LABEL_19;
          }

          break;
        case 2:
          if (v31)
          {
            v33 = 0;
            goto LABEL_19;
          }

          break;
        case 3:
          break;
        default:
          if (v31)
          {
            v33 = 1;
LABEL_19:
            [v31 setDialogScorerType_];
          }

          break;
      }

      v34 = [objc_allocWithZone(MEMORY[0x277D58C40]) init];
      v35 = v34;
      if (v34)
      {
        if (HIDWORD(*(a2 + 16)))
        {
          __break(1u);
          JUMPOUT(0x2680DC680);
        }

        [v34 setCount_];
      }

      v36 = [objc_allocWithZone(MEMORY[0x277D58C50]) init];
      sub_2680DCCF0(v68, &v70, &qword_280249F30, &qword_2680E41B0);
      if (!v72)
      {
        sub_2680C5824(&v70, &qword_280249F30, &qword_2680E41B0);
LABEL_32:
        v65 = v67;
        [v65 setDialogScorer_];
        [v65 setDialogCandidateStatistics_];
        [v65 setSelectedScoredDialog_];

        [v23 setScoredDialogSelected_];
        return v23;
      }

      v68 = v32;
      sub_2680C58BC(&v70, v75);
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v37 = OUTLINED_FUNCTION_11_2();
      v38(v37);
      __swift_project_boxed_opaque_existential_1(v74, v74[3]);
      v39 = OUTLINED_FUNCTION_11_2();
      v40(v39);
      v41 = *(&v70 + 1);
      v43 = v71;
      v42 = v72;
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      if (v41)
      {
        if (!v36)
        {
          v63 = OUTLINED_FUNCTION_11_2();
          OUTLINED_FUNCTION_24_0(v63, v64);
          goto LABEL_31;
        }

        v44 = v36;
        v45 = OUTLINED_FUNCTION_11_2();
        sub_2680DC9F4(v45, v46, v44);

        v47 = v44;
        sub_2680DC99C(v43, v42, v47);
        v48 = OUTLINED_FUNCTION_11_2();
        OUTLINED_FUNCTION_24_0(v48, v49);
      }

      else if (!v36)
      {
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        v32 = v68;
        goto LABEL_32;
      }

      v50 = v76;
      v51 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v52 = *(v51 + 8);
      v53 = v36;
      v52(&v70, v50, v51);
      v54 = v72;
      v55 = v73;
      __swift_project_boxed_opaque_existential_1(&v70, v72);
      v56 = (*(v55 + 8))(v54, v55);
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(&v70);
      sub_2680DC938(v56, v58, v53);

      v59 = v76;
      v60 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v61 = *(v60 + 16);
      v62 = v53;
      v61(v59, v60);
      [v62 setScore_];

      goto LABEL_31;
    }
  }

  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v26 = sub_2680E1B3C();
  __swift_project_value_buffer(v26, qword_28024C7A8);
  v27 = sub_2680E1B1C();
  v28 = sub_2680E1DBC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_2_3();
    *v29 = 0;
    _os_log_impl(&dword_2680BC000, v27, v28, "Failed to initialize NLGSchema objects", v29, 2u);
    OUTLINED_FUNCTION_12();
  }

  return 0;
}

void *sub_2680DC690()
{

  return v0;
}

uint64_t sub_2680DC6C0()
{
  sub_2680DC690();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_2680DC718()
{
  result = qword_28024A3F0;
  if (!qword_28024A3F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024A3F0);
  }

  return result;
}

uint64_t sub_2680DC75C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2680DC854;

  return v6(a1);
}

uint64_t sub_2680DC854()
{
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_2_9();
  *v2 = v1;

  OUTLINED_FUNCTION_4_8();

  return v3();
}

void sub_2680DC938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2680E1BCC();

  [a3 setScoredDialogIdentifier_];
}

void sub_2680DC99C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2680E1BCC();
  [a3 setCatIdentifier_];
}

void sub_2680DC9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2680E1BCC();
  [a3 setCatFamily_];
}

uint64_t sub_2680DCA4C(void *a1)
{
  v1 = [a1 jsonData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2680E169C();

  return v3;
}

uint64_t sub_2680DCAB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2680DCAC4(a1, a2);
  }

  return a1;
}

uint64_t sub_2680DCAC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2680DCB1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A3E8, &qword_2680E41A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2680DCB8C()
{
  result = qword_28024A400;
  if (!qword_28024A400)
  {
    sub_2680E16FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024A400);
  }

  return result;
}

uint64_t sub_2680DCBE4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2680DCC3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v5[1] = sub_2680DA1C8;
  v7 = OUTLINED_FUNCTION_5_6();

  return sub_2680DA828(v7, v8, v1, v2, v3, v9);
}

uint64_t sub_2680DCCF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_21_0();
  v6(v5);
  return a2;
}

uint64_t sub_2680DCD54()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2680DD000;
  v3 = OUTLINED_FUNCTION_5_6();

  return v4(v3);
}

uint64_t sub_2680DCDFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2680DCE34()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2680DA1C8;
  v3 = OUTLINED_FUNCTION_5_6();

  return v4(v3);
}

uint64_t sub_2680DCEDC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2680DCF34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_7_3(v5);
  *v6 = v7;
  v6[1] = sub_2680DD000;
  v8 = OUTLINED_FUNCTION_5_6();

  return sub_2680DA110(v8, v9, v1, v2, v4, v3, v10);
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x26D611870);
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_2680C5824(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_2680C5824(v0, v1, v2);
}

double OUTLINED_FUNCTION_19_0(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 44) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2)
{

  return sub_2680D4424(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2680DD280(uint64_t a1)
{
  v2 = sub_2680E184C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A438, &qword_2680E42B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v26 = a1;
  sub_2680E17CC();
  sub_2680DDC58(&qword_28024A440, MEMORY[0x277D2A2D0]);

  sub_2680E1D2C();
  sub_2680DDC58(&qword_28024A448, MEMORY[0x277D2A2D8]);
  v9 = (v3 + 32);
  v10 = (v3 + 8);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2680E1E0C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
    {
      break;
    }

    (*v9)(v5, v8, v2);
    if (sub_2680E183C())
    {
      v12 = sub_2680E182C();
      v24 = v13;
      (*v10)(v5, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2680D4370();
        v11 = v19;
      }

      v15 = *(v11 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v11 + 24) >> 1)
      {
        v23 = v15 + 1;
        sub_2680D4370();
        v16 = v23;
        v11 = v20;
      }

      *(v11 + 16) = v16;
      v17 = v11 + 16 * v15;
      v18 = v24;
      *(v17 + 32) = v25;
      *(v17 + 40) = v18;
    }

    else
    {
      (*v10)(v5, v2);
    }
  }

  return v11;
}

uint64_t sub_2680DD538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A428, &qword_2680E42A8);
  v4 = sub_2680E17EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2680E4250;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277D2A308], v4);
  v10(v9 + v6, *MEMORY[0x277D2A300], v4);
  v10(v9 + 2 * v6, *MEMORY[0x277D2A2F8], v4);
  v10(v9 + 3 * v6, *MEMORY[0x277D2A2E0], v4);
  v10(v9 + 4 * v6, *MEMORY[0x277D2A2E8], v4);
  sub_2680E181C();
  swift_allocObject();
  v11 = sub_2680E180C();
  v38 = a3;
  v36 = sub_2680E17FC();
  v37 = v11;
  v35 = sub_2680E17DC();
  isUniquelyReferenced_nonNull_native = sub_2680DD280(v35);
  v20 = isUniquelyReferenced_nonNull_native;
  v21 = 0;
  v22 = *(isUniquelyReferenced_nonNull_native + 16);
  v23 = isUniquelyReferenced_nonNull_native + 40;
  v24 = MEMORY[0x277D84F90];
  v34 = isUniquelyReferenced_nonNull_native + 40;
LABEL_6:
  for (i = (v23 + 16 * v21); ; i += 2)
  {
    if (v22 == v21)
    {

      return v24;
    }

    if (v21 >= *(v20 + 16))
    {
      break;
    }

    v26 = *(i - 1);
    v27 = *i;
    v39[0] = v26;
    v39[1] = v27;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v32[2] = v39;

    if (!sub_2680DDBA8(sub_2680CA7CC, v32, v38))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2680D7A44(0, *(v24 + 16) + 1, 1);
        v24 = v40;
      }

      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v33 = v29 + 1;
        isUniquelyReferenced_nonNull_native = sub_2680D7A44((v28 > 1), v29 + 1, 1);
        v30 = v33;
        v24 = v40;
      }

      ++v21;
      *(v24 + 16) = v30;
      v31 = v24 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v27;
      v23 = v34;
      goto LABEL_6;
    }

    ++v21;
  }

  __break(1u);
  swift_once();
  v12 = sub_2680E1B3C();
  __swift_project_value_buffer(v12, qword_28024C7A8);
  MEMORY[0x26D611730](0);
  v13 = sub_2680E1B1C();
  v14 = sub_2680E1DBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    MEMORY[0x26D611730](0);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_2680BC000, v13, v14, "Tokenization failed: %@", v15, 0xCu);
    sub_2680DDB40(v16);
    MEMORY[0x26D611870](v16, -1, -1);
    MEMORY[0x26D611870](v15, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2680DD9C0()
{
  v1 = OBJC_IVAR____TtC29SiriNaturalLanguageGeneration16MorphunTokenizer_locale;
  v2 = sub_2680E17BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for MorphunTokenizer(uint64_t a1)
{
  result = qword_28024A418;
  if (!qword_28024A418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2680DDAB0(uint64_t a1)
{
  result = sub_2680E17BC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2680DDB40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A430, &qword_2680E42B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_2680DDBA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2680DDC58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2680E17CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2680DDCB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultDialogProvider();
  result = swift_allocObject();
  *(result + 16) = sub_2680D64B8;
  *(result + 24) = 0;
  a1[3] = v2;
  a1[4] = &off_2878F4228;
  *a1 = result;
  return result;
}

void *sub_2680DDD9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A458, &qword_2680E43C0);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2680DFF44();
  sub_2680E202C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v25) = 0;
  v7 = sub_2680E1F0C();
  v9 = v8;
  LOBYTE(__src[0]) = 2;
  sub_2680DFF98();
  OUTLINED_FUNCTION_7_4(&type metadata for SemanticVersion);
  v22 = v26;
  v23 = v25;
  v21 = v27;
  LOBYTE(v25) = 1;
  v10 = sub_2680E1F2C();
  if (v10)
  {
    LOBYTE(__src[0]) = 1;
    OUTLINED_FUNCTION_7_4(&type metadata for SemanticVersion);
    v11 = OUTLINED_FUNCTION_1_10();
    v12(v11);
    v14 = v25;
    v13 = v26;
    v15 = v27;
    v34 = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    v14 = 0;
    v13 = 0;
    v15 = 0;
    v34 = 1;
  }

  v19 = v13;
  v20 = v15;
  __src[0] = v7;
  __src[1] = v9;
  __src[2] = v14;
  __src[3] = v13;
  __src[4] = v15;
  v18 = v34;
  LOBYTE(__src[5]) = v34;
  __src[6] = v23;
  __src[7] = v26;
  __src[8] = v27;
  sub_2680DF8DC(__src, &v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v25 = v7;
  v26 = v9;
  v27 = v14;
  v28 = v19;
  v29 = v20;
  v30 = v18;
  v31 = v23;
  v32 = v22;
  v33 = v21;
  sub_2680DF914(&v25);
  return memcpy(a2, __src, 0x48uLL);
}

unint64_t sub_2680DE054(uint64_t a1, uint64_t a2)
{
  v2 = sub_2680E1EFC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2680DE0B4(char a1)
{
  if (!a1)
  {
    return 0x726F74636146;
  }

  if (a1 == 1)
  {
    return 0xD000000000000023;
  }

  return 0x6E6F6973726556;
}

unint64_t sub_2680DE130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2680DE054(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2680DE160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2680DE0B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2680DE194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2680DE054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2680DE1DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2680DE0A0();
  *a1 = result;
  return result;
}

uint64_t sub_2680DE204(uint64_t a1)
{
  v2 = sub_2680DFF44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2680DE240(uint64_t a1)
{
  v2 = sub_2680DFF44();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2680DE27C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2680DDD9C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

void *sub_2680DE2C8()
{
  type metadata accessor for DialogEngineAssetClient();
  v0 = swift_allocObject();
  result = sub_2680DE308(0);
  qword_28024C870 = v0;
  return result;
}

void *sub_2680DE308(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v1[2] = 0;
  if (a1)
  {
    v1[2] = a1;
  }

  else
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedManager];
    OUTLINED_FUNCTION_17_2();
    v7 = sub_2680E1BCC();
    v8 = [v6 retrieveAssetSet:v7 usages:0];

    if (v8)
    {
      v9 = v2[2];
      v2[2] = v8;
      v10 = v8;

      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280249E70);
      }

      v11 = sub_2680E1B3C();
      __swift_project_value_buffer(v11, qword_28024C7A8);
      v12 = sub_2680E1B1C();
      v13 = sub_2680E1DAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_8_3();
        v15 = OUTLINED_FUNCTION_10_3();
        v33[0] = v15;
        *v14 = 136315138;
        v16 = OUTLINED_FUNCTION_17_2();
        *(v14 + 4) = sub_2680DF818(v16, v17, v18);
        _os_log_impl(&dword_2680BC000, v12, v13, "Initialized asset set for %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();
      }

      v19 = [v5 sharedManager];
      OUTLINED_FUNCTION_17_2();
      v20 = sub_2680E1BCC();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v4;
      v33[4] = sub_2680DFE0C;
      v33[5] = v21;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 1107296256;
      v33[2] = sub_2680DE7B4;
      v33[3] = &block_descriptor;
      v22 = _Block_copy(v33);

      v23 = [v19 observeAssetSet:v20 queue:0 handler:v22];
      _Block_release(v22);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280249E70 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280249E70);
      }

      v24 = sub_2680E1B3C();
      __swift_project_value_buffer(v24, qword_28024C7A8);
      v25 = sub_2680E1B1C();
      v26 = sub_2680E1DBC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_8_3();
        v28 = OUTLINED_FUNCTION_10_3();
        v33[0] = v28;
        *v27 = 136315138;
        v29 = OUTLINED_FUNCTION_17_2();
        *(v27 + 4) = sub_2680DF818(v29, v30, v31);
        _os_log_impl(&dword_2680BC000, v25, v26, "Unable to initialize asset set for %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        OUTLINED_FUNCTION_4_9();
        OUTLINED_FUNCTION_12();
      }
    }
  }

  return v2;
}

void sub_2680DE6A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = [objc_opt_self() sharedManager];
    v3 = sub_2680E1BCC();
    v4 = *(a1 + 16);
    if (v4 && sub_2680DFE2C(v4))
    {
      v5 = sub_2680E1B4C();
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 retrieveAssetSet:v3 usages:v5];

    v7 = *(a1 + 16);
    *(a1 + 16) = v6;
  }
}

uint64_t sub_2680DE7B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2680DE7F8@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v114 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024A080, &unk_2680E2B00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = (v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = v104 - v8;
  v113 = sub_2680E167C();
  OUTLINED_FUNCTION_0_1();
  v112 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v104 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (v104 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = v104 - v22;
  sub_2680DF5E8(v116);
  v109 = v21;
  v110 = v14;
  v108 = v18;
  v111 = v23;
  v24 = *(v3 + 16);
  if (!v24 || (v25 = v24, v26 = sub_2680E1BCC(), v27 = [v25 assetNamed_], v25, v26, !v27))
  {
    v29 = v113;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v113);
    goto LABEL_8;
  }

  v28 = [v27 location];

  v29 = v113;
  if (v28)
  {
    sub_2680E163C();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v111;
  __swift_storeEnumTagSinglePayload(v7, v30, 1, v29);
  sub_2680C8F9C(v7, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v29) == 1)
  {
LABEL_8:
    sub_2680C900C(v9);
    if (qword_280249E70 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280249E70);
    }

    v32 = sub_2680E1B3C();
    __swift_project_value_buffer(v32, qword_28024C7A8);
    sub_2680DF8DC(v116, v120);
    v33 = sub_2680E1B1C();
    v34 = sub_2680E1DAC();
    sub_2680DF914(v116);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_8_3();
      v36 = OUTLINED_FUNCTION_10_3();
      v120[0] = v36;
      *v35 = 136315138;
      v37 = sub_2680DF818(v116[0], v116[1], v120);
      sub_2680DF914(v116);
      *(v35 + 4) = v37;
      OUTLINED_FUNCTION_14_2(&dword_2680BC000, v38, v34, "No updated directory for '%s'");
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      sub_2680DF914(v116);
    }

    goto LABEL_13;
  }

  v42 = *(v112 + 32);
  (v42)(v31, v9, v29);
  sub_2680DF5E8(v120);
  v107 = v42;
  if (qword_280249E70 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280249E70);
  }

  v43 = sub_2680E1B3C();
  __swift_project_value_buffer(v43, qword_28024C7A8);
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_12_0();
  v106 = v44;
  v105 = v45;
  v45();
  v110 = v9;
  v46 = sub_2680E1B1C();
  v47 = sub_2680E1DAC();
  if (OUTLINED_FUNCTION_20_1(v47))
  {
    v48 = OUTLINED_FUNCTION_8_3();
    v49 = OUTLINED_FUNCTION_10_3();
    OUTLINED_FUNCTION_6_5(v49);
    *v48 = 136315138;
    sub_2680D8844();
    v50 = sub_2680E1F4C();
    v52 = v51;
    v53 = OUTLINED_FUNCTION_16_2();
    v7(v53);
    v54 = sub_2680DF818(v50, v52, v115);

    *(v48 + 4) = v54;
    OUTLINED_FUNCTION_14_2(&dword_2680BC000, v55, v47, "Found asset config in %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    v56 = OUTLINED_FUNCTION_16_2();
    v7(v56);
  }

  if (v121)
  {
    sub_2680DF914(v120);
    sub_2680DF914(v116);
    OUTLINED_FUNCTION_11_3();
    v57 = sub_2680E1B1C();
    v58 = sub_2680E1DAC();
    if (OUTLINED_FUNCTION_20_1(v58))
    {
      v59 = OUTLINED_FUNCTION_8_3();
      v60 = OUTLINED_FUNCTION_10_3();
      OUTLINED_FUNCTION_6_5(v60);
      *v59 = 136315138;
      *(v59 + 4) = sub_2680DF818(0xD000000000000019, 0x80000002680E52E0, v115);
      OUTLINED_FUNCTION_14_2(&dword_2680BC000, v61, v58, "Updated %s missing min diff update version");
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_3_10();
    (v7)(v111, v29);
    goto LABEL_13;
  }

  v109 = v7;
  v62 = v120[2];
  v63 = v120[3];
  v65 = v117;
  v64 = v118;
  v66 = v119;
  v67 = v120[4];
  v104[3] = v123;
  v68 = sub_2680C964C(v122, v123, v124, v117, v118, v119);
  v104[4] = v66;
  if ((v68 & 1) == 0)
  {
    sub_2680DF8DC(v116, v115);
    OUTLINED_FUNCTION_11_3();
    v83 = sub_2680E1B1C();
    v84 = sub_2680E1DAC();
    sub_2680DF914(v120);
    sub_2680DF914(v116);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_5(v86);
      *v85 = 136315394;
      v87 = OUTLINED_FUNCTION_19_1();
      v89 = sub_2680DF818(v87, v88, v115);

      *(v85 + 4) = v89;
      *(v85 + 12) = 2080;
      sub_2680DF914(v116);
      v90 = sub_2680C94A4();
      v92 = sub_2680DF818(v90, v91, v115);

      *(v85 + 14) = v92;
      _os_log_impl(&dword_2680BC000, v83, v84, "Updated asset has older version %s <= %s", v85, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
LABEL_32:
      OUTLINED_FUNCTION_12();
LABEL_34:

      OUTLINED_FUNCTION_3_10();
      OUTLINED_FUNCTION_8_5();
      v102();
LABEL_13:
      v39 = 1;
      v40 = v114;
      return __swift_storeEnumTagSinglePayload(v40, v39, 1, v29);
    }

LABEL_33:
    sub_2680DF914(v116);
    goto LABEL_34;
  }

  v104[1] = v65;
  v104[2] = v64;
  if ((sub_2680C9610(v65, v64, v66, v62, v63, v67) & 1) == 0)
  {
    sub_2680DF914(v120);
    sub_2680DF8DC(v116, v115);
    OUTLINED_FUNCTION_11_3();
    v83 = sub_2680E1B1C();
    v93 = sub_2680E1DAC();
    sub_2680DF914(v116);
    if (os_log_type_enabled(v83, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      OUTLINED_FUNCTION_6_5(v95);
      *v94 = 136315394;
      v96 = sub_2680C94A4();
      v98 = sub_2680DF818(v96, v97, v115);

      *(v94 + 4) = v98;
      *(v94 + 12) = 2080;
      sub_2680DF914(v116);
      v99 = OUTLINED_FUNCTION_9_4();
      v101 = sub_2680DF818(v99, v100, v115);

      *(v94 + 14) = v101;
      _os_log_impl(&dword_2680BC000, v83, v93, "Updated asset has newer minimum version %s > %s", v94, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_12_0();
  v105();
  sub_2680DF8DC(v116, v115);
  OUTLINED_FUNCTION_11_3();
  v69 = sub_2680E1B1C();
  v70 = sub_2680E1DAC();
  sub_2680DF914(v120);
  sub_2680DF914(v116);
  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_10_3();
    v110 = swift_slowAlloc();
    OUTLINED_FUNCTION_6_5(v110);
    *v71 = 136315650;
    sub_2680D8844();
    LODWORD(v106) = v70;
    v72 = sub_2680E1F4C();
    v74 = v73;
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_8_5();
    v75();
    v76 = sub_2680DF818(v72, v74, v115);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    v77 = OUTLINED_FUNCTION_19_1();
    v79 = sub_2680DF818(v77, v78, v115);

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    sub_2680DF914(v116);
    v80 = OUTLINED_FUNCTION_9_4();
    v82 = sub_2680DF818(v80, v81, v115);

    *(v71 + 24) = v82;
    _os_log_impl(&dword_2680BC000, v69, v106, "Returning %s (%s > %s)", v71, 0x20u);
    OUTLINED_FUNCTION_11_3();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  else
  {
    sub_2680DF914(v116);

    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_8_5();
    v103();
  }

  v40 = v114;
  OUTLINED_FUNCTION_12_0();
  v107();
  v39 = 0;
  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v29);
}