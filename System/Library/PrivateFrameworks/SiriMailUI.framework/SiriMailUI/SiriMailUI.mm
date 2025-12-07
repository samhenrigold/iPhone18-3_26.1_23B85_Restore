uint64_t sub_267ADC090@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108B0, &qword_267B18AD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v33 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108B8, &qword_267B18AE0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108C0, &qword_267B18AE8);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  sub_267ADC434(v1);
  v13 = *(v1 + 32);
  if (v13)
  {
    v14 = v13;
    v15 = sub_267B17880();
    v16 = sub_267B17880();
    v17 = sub_267B17660();
    if (v15)
    {
      *&v19 = 0.0;
    }

    else
    {
      *&v19 = 150.0;
    }

    v20 = *&v19;
    if (v15)
    {
      v20 = -INFINITY;
    }

    if (v16)
    {
      *&v21 = 0.0;
    }

    else
    {
      *&v21 = 300.0;
    }

    v22 = *&v21;
    if (v16)
    {
      v22 = v20;
    }

    if (v20 > v22)
    {
      v33[2] = v17;
      v33[1] = v18;
      sub_267B17AA0();
      v34 = v5;
      v23 = sub_267B17150();
      v35 = a1;
      v24 = v23;
      v5 = v34;
      sub_267B16B70();
    }

    sub_267B16DB0();
    sub_267ADCBB4(v5, v8, &qword_2802108B0, &qword_267B18AD8);
    memcpy(&v8[*(v36 + 36)], __src, 0x70uLL);
    v25 = sub_267B17880();

    if (v25)
    {
      sub_267B17890();
      v27 = v26;

      if (v27 > 1.0)
      {
        v28 = sub_267B17210();
LABEL_19:
        v29 = v28;
        KeyPath = swift_getKeyPath();
        sub_267ADCBB4(v8, v12, &qword_2802108B8, &qword_267B18AE0);
        v31 = &v12[*(v9 + 36)];
        *v31 = KeyPath;
        v31[1] = v29;
        sub_267ADCC14();
        memset(v37, 0, sizeof(v37));
        v38 = 0;
        sub_267B17390();
        sub_267ADCEDC(v37);
        return sub_267ADCF44(v12);
      }
    }

    else
    {
    }

    v28 = sub_267B17200();
    goto LABEL_19;
  }

  sub_267B17910();
  sub_267ADC630();
  result = sub_267B16DF0();
  __break(1u);
  return result;
}

uint64_t sub_267ADC434(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108E0, &qword_267B1AC40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(a1 + 7);
  v12 = *(a1 + 6);
  v13 = v6;
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210908, &qword_267B18B28);
  sub_267B175E0();
  sub_267ADCFA4();
  sub_267B176A0();
  sub_267ADCE94(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40, MEMORY[0x277CDF1A8]);
  sub_267B17460();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_267ADC630()
{
  result = qword_280211600;
  if (!qword_280211600)
  {
    sub_267B17910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211600);
  }

  return result;
}

uint64_t sub_267ADC6B4(uint64_t a1)
{
  v2 = sub_267B16C80();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16E50();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_267ADC7C8()
{
  sub_267B17910();
  sub_267ADC630();

  return sub_267B16E00();
}

uint64_t sub_267ADC814@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of SiriMailModel._focusedField@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267B16850();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t variable initialization expression of SiriMailModel._state@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5CA08];
  sub_267B16860();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t variable initialization expression of SiriMailModel.snippetService()
{
  v0 = sub_267B169A0();
  MEMORY[0x28223BE20](v0 - 8);
  sub_267B169E0();
  sub_267B16990();
  return sub_267B169D0();
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

uint64_t sub_267ADCA38(uint64_t a1, int a2)
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

uint64_t sub_267ADCA78(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_267ADCAE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267ADCB08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_267ADCB44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_267ADCBB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_267ADCC14()
{
  result = qword_2802108C8;
  if (!qword_2802108C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108C0, &qword_267B18AE8);
    sub_267ADCD14();
    sub_267ADCE94(&qword_2802108F0, &qword_2802108F8, &qword_267B18B20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_267ADCD14()
{
  result = qword_2802108D0;
  if (!qword_2802108D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108B8, &qword_267B18AE0);
    sub_267ADCDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108D0);
  }

  return result;
}

unint64_t sub_267ADCDA0()
{
  result = qword_2802108D8;
  if (!qword_2802108D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108B0, &qword_267B18AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108E0, &qword_267B1AC40);
    sub_267ADCE94(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108D8);
  }

  return result;
}

uint64_t sub_267ADCE94(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_267ADCEDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210900, &qword_267B1AC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADCF44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108C0, &qword_267B18AE8);
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_267ADCFA4()
{
  result = qword_280210910;
  if (!qword_280210910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210910);
  }

  return result;
}

uint64_t sub_267ADCFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108C0, &qword_267B18AE8);
  sub_267ADCC14();
  return swift_getOpaqueTypeConformance2();
}

void sub_267ADD088(void *a1)
{
  [v1 setBaseFont_];
  v3 = [v1 labelView];
  [v3 setFont_];
}

id sub_267ADD108()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CFBC90]) init];
  sub_267ADD444();
  v3 = sub_267B17AF0();
  [v2 setLabelLeadingPadding_];

  v4 = sub_267B17AF0();
  [v2 setTrailingButtonMidlineInsetFromLayoutMargin_];

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ComposeRecipientTextView();
  result = objc_msgSendSuper2(&v7, sel_initWithOptions_, v2);
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_267ADD1FC(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ComposeRecipientTextView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 labelView];
  [v10 setAdjustsFontForContentSizeCategory_];

  v11 = [v9 textView];
  if (v11)
  {
    [v11 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

id sub_267ADD3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeRecipientTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_267ADD444()
{
  result = qword_280210918;
  if (!qword_280210918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280210918);
  }

  return result;
}

void DisambiguateHandlesDataModel.init(contact:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210920, &qword_267B18B50);
  OUTLINED_FUNCTION_0();
  v5 = MEMORY[0x28223BE20](v4);
  v47 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v50 = &v34 - v7;
  type metadata accessor for IndexedHandle(0);
  OUTLINED_FUNCTION_0_0();
  v48 = v9;
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  v13 = sub_267B166C0();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  (*(v14 + 16))(a2, a1, v13);
  v16 = sub_267B166B0();
  v17 = *(v16 + 16);
  if (v17)
  {
    v34 = v15;
    v35 = v13;
    v36 = a1;
    v37 = a2;
    v52 = MEMORY[0x277D84F90];
    sub_267ADE7A8(0, v17, 0);
    v18 = v52;
    v46 = *(v16 + 16);
    sub_267B16680();
    v19 = 0;
    OUTLINED_FUNCTION_6();
    v43 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v44 = v17;
    v41 = v21;
    v42 = v20 + 16;
    v39 = v12;
    v40 = v20;
    v38 = v20 + 32;
    v45 = v16;
    while (v46 != v19)
    {
      if (v19 >= *(v16 + 16))
      {
        goto LABEL_12;
      }

      v23 = v50;
      v22 = v51;
      v24 = *(v51 + 48);
      v25 = v40;
      v26 = v41;
      v27 = *(v40 + 16);
      v27(&v50[v24], v43 + *(v40 + 72) * v19, v41);
      v28 = v47;
      *v47 = v19;
      v29 = *(v22 + 48);
      v30 = &v23[v24];
      v31 = v39;
      (*(v25 + 32))(v28 + v29, v30, v26);
      v27(v31 + *(v49 + 20), v28 + v29, v26);
      *v31 = v19;
      sub_267ADE800(v28);
      v52 = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_267ADE7A8((v32 > 1), v33 + 1, 1);
        v18 = v52;
      }

      *(v18 + 16) = v33 + 1;
      sub_267ADE868(v31, v18 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v33);
      ++v19;
      v16 = v45;
      if (v44 == v19)
      {

        (*(v34 + 8))(v36, v35);
        a2 = v37;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    (*(v15 + 8))(a1, v13);
    v18 = MEMORY[0x277D84F90];
LABEL_10:
    *(a2 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20)) = v18;
  }
}

uint64_t sub_267ADD830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4864657865646E69 && a2 == 0xEE0073656C646E61)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

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

uint64_t sub_267ADD914(char a1)
{
  if (a1)
  {
    return 0x4864657865646E69;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_267ADD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267ADD830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267ADD9A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267ADD900();
  *a1 = result;
  return result;
}

uint64_t sub_267ADD9D0(uint64_t a1)
{
  v2 = sub_267ADE968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267ADDA0C(uint64_t a1)
{
  v2 = sub_267ADE968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguateHandlesDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210928, &qword_267B18B58);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADE968();
  sub_267B17DC0();
  v23 = 0;
  sub_267B166C0();
  OUTLINED_FUNCTION_2();
  v13 = sub_267ADE9BC(v11, v12, MEMORY[0x277D56180]);
  OUTLINED_FUNCTION_9(v3, &v23, v14, v15, v13);
  if (!v2)
  {
    v22 = *(v3 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
    v16 = sub_267ADEA50(&qword_280210948, &qword_280210950, &unk_267B18D10, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_9(&v22, &v21, v17, v18, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t DisambiguateHandlesDataModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_267B166C0();
  OUTLINED_FUNCTION_0_0();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210958, &qword_267B18B68);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for DisambiguateHandlesDataModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADE968();
  sub_267B17DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2();
  sub_267ADE9BC(v15, v16, MEMORY[0x277D56190]);
  sub_267B17CA0();
  (*(v21 + 32))(v14, v8, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
  sub_267ADEA50(&qword_280210968, &qword_280210970, &unk_267B18CE8, MEMORY[0x277D83978]);
  sub_267B17CA0();
  v17 = OUTLINED_FUNCTION_4();
  v18(v17);
  *(v14 + *(v10 + 20)) = v23;
  sub_267ADEAEC(v14, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_267ADEB50(v14);
}

uint64_t sub_267ADDFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

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

uint64_t sub_267ADE0C0(char a1)
{
  sub_267B17D80();
  MEMORY[0x26D600900](a1 & 1);
  return sub_267B17DA0();
}

uint64_t sub_267ADE108(char a1)
{
  if (a1)
  {
    return 0x656C646E6168;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_267ADE138(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109B8, &qword_267B18D88);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADF0A8();
  sub_267B17DC0();
  v12[15] = 0;
  sub_267B17D10();
  if (!v1)
  {
    type metadata accessor for IndexedHandle(0);
    v12[14] = 1;
    sub_267B16680();
    OUTLINED_FUNCTION_3();
    sub_267ADE9BC(v9, v10, MEMORY[0x277D56048]);
    sub_267B17D20();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_267ADE2D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_267B16680();
  OUTLINED_FUNCTION_0_0();
  v27 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109D0, &qword_267B18D90);
  OUTLINED_FUNCTION_0_0();
  v29 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for IndexedHandle(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = (v16 - v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADF0A8();
  sub_267B17DB0();
  if (!v2)
  {
    v26 = v13;
    v18 = v29;
    v19 = v30;
    v33 = 0;
    v20 = v31;
    *v17 = sub_267B17C90();
    v32 = 1;
    OUTLINED_FUNCTION_3();
    sub_267ADE9BC(v21, v22, MEMORY[0x277D56050]);
    v25 = v8;
    sub_267B17CA0();
    (*(v18 + 8))(v12, v20);
    (*(v27 + 32))(v17 + *(v26 + 20), v25, v19);
    sub_267ADE868(v17, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_267ADE5A4(uint64_t a1)
{
  v2 = *v1;
  sub_267B17D80();
  MEMORY[0x26D600900](v2);
  return sub_267B17DA0();
}

uint64_t sub_267ADE5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267ADDFC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267ADE618(uint64_t a1)
{
  v2 = sub_267ADF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267ADE654(uint64_t a1)
{
  v2 = sub_267ADF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267ADE6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267ADDF98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_267ADE6E8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_7();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_7();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_267ADE7A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_280210A00, &qword_267B18DB8, type metadata accessor for IndexedHandle, type metadata accessor for IndexedHandle);
  *v3 = result;
  return result;
}

uint64_t sub_267ADE800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210920, &qword_267B18B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADE868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267ADE8EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_267ADE968()
{
  result = qword_280210930;
  if (!qword_280210930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210930);
  }

  return result;
}

uint64_t sub_267ADE9BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_267ADEA50(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210940, &qword_267B18B60);
    sub_267ADE9BC(a2, type metadata accessor for IndexedHandle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267ADEAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguateHandlesDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267ADEB50(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguateHandlesDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADEBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267B166C0();
  OUTLINED_FUNCTION_6();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_267ADECA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_267B166C0();
  OUTLINED_FUNCTION_6();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

void sub_267ADED48(uint64_t a1)
{
  sub_267B166C0();
  if (v1 <= 0x3F)
  {
    sub_267ADEDCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267ADEDCC(uint64_t a1)
{
  if (!qword_280210988)
  {
    type metadata accessor for IndexedHandle(255);
    v1 = sub_267B17A00();
    if (!v2)
    {
      atomic_store(v1, &qword_280210988);
    }
  }
}

uint64_t sub_267ADEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_267B16680();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_267ADEEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_267B16680();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_267ADEF18(uint64_t a1)
{
  result = sub_267B16680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_267ADEFA4()
{
  result = qword_2802109A0;
  if (!qword_2802109A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109A0);
  }

  return result;
}

unint64_t sub_267ADEFFC()
{
  result = qword_2802109A8;
  if (!qword_2802109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109A8);
  }

  return result;
}

unint64_t sub_267ADF054()
{
  result = qword_2802109B0;
  if (!qword_2802109B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109B0);
  }

  return result;
}

unint64_t sub_267ADF0A8()
{
  result = qword_2802109C0;
  if (!qword_2802109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109C0);
  }

  return result;
}

void *sub_267ADF0FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109F8, &qword_267B18DB0, type metadata accessor for IndexedContact, type metadata accessor for IndexedContact);
  *v3 = result;
  return result;
}

void *sub_267ADF154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109F0, &qword_267B18DA8, MEMORY[0x277D56040], MEMORY[0x277D56040]);
  *v3 = result;
  return result;
}

void *sub_267ADF1AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109E8, &qword_267B18DA0, MEMORY[0x277D5CA58], MEMORY[0x277D5CA58]);
  *v3 = result;
  return result;
}

char *sub_267ADF204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_267ADF3E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_267ADF224(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  a7(0);
  OUTLINED_FUNCTION_6();
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_267ADE6E8(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_267ADF3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109E0, &qword_267B18D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for MailPluginModel.ReadMessagesCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267ADF588(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267ADF654);
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

unint64_t sub_267ADF6A4()
{
  result = qword_280210A08;
  if (!qword_280210A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A08);
  }

  return result;
}

unint64_t sub_267ADF6FC()
{
  result = qword_280210A10;
  if (!qword_280210A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A10);
  }

  return result;
}

unint64_t sub_267ADF754()
{
  result = qword_280210A18;
  if (!qword_280210A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267B17D20();
}

uint64_t DisambiguateHandlesView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for DisambiguateHandlesView(0) + 20));
  sub_267B17910();
  OUTLINED_FUNCTION_1_1();
  sub_267AE103C(v5, v6, MEMORY[0x277D63F50]);
  *v4 = sub_267B16E00();
  v4[1] = v7;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v8 = sub_267B16BA0();
  __swift_project_value_buffer(v8, static Logger.siriMail);
  v9 = sub_267B16B80();
  v10 = sub_267B17A80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267ADA000, v9, v10, "Constructing DisambiguateHandlesView", v11, 2u);
    MEMORY[0x26D600E60](v11, -1, -1);
  }

  return sub_267AE126C(a1, a2, type metadata accessor for DisambiguateHandlesDataModel);
}

uint64_t type metadata accessor for DisambiguateHandlesView(uint64_t a1)
{
  result = qword_280210A30;
  if (!qword_280210A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguateHandlesView.body.getter()
{
  v1 = type metadata accessor for DisambiguateHandlesView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_267AE1084(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_267AE126C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for DisambiguateHandlesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A20, &qword_267B18ED0);
  sub_267ADCE94(&qword_280210A28, &qword_280210A20, &qword_267B18ED0, MEMORY[0x277CE14C0]);
  return sub_267B17710();
}

uint64_t sub_267ADFB98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for DisambiguateHandlesView(0);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A58, "l,");
  v56 = *(v49 - 8);
  v5 = MEMORY[0x28223BE20](v49);
  v54 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v42 - v7;
  v8 = sub_267B165F0();
  MEMORY[0x28223BE20](v8 - 8);
  v48 = sub_267B17810();
  v51 = *(v48 - 8);
  v9 = MEMORY[0x28223BE20](v48);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v52 = sub_267B17740();
  v46 = *(v52 - 8);
  v13 = v46;
  v14 = MEMORY[0x28223BE20](v52);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v45 = &v42 - v17;
  sub_267B17750();
  v19 = sub_267B16690();
  v69 = MEMORY[0x277D837D0];
  v70 = MEMORY[0x277D63F80];
  v67 = v19;
  v68 = v20;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v59 = 0u;
  v58 = 0u;
  sub_267B166A0();
  sub_267B165E0();

  v57[3] = sub_267B176F0();
  v57[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v57);
  sub_267B17700();
  v43 = v12;
  sub_267B17800();
  *&v64 = *(a1 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));
  sub_267AE1084(a1, &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  v21 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v22 = swift_allocObject();
  sub_267AE126C(&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for DisambiguateHandlesView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A60, "~,");
  sub_267ADCE94(&qword_280210A68, &qword_280210940, &qword_267B18B60, MEMORY[0x277D83980]);
  v23 = sub_267B17830();
  v24 = sub_267AE103C(&qword_280210A70, MEMORY[0x277D63E28], MEMORY[0x277D63E20]);
  v67 = v23;
  v68 = v24;
  swift_getOpaqueTypeConformance2();
  sub_267AE103C(&qword_280210A78, type metadata accessor for IndexedHandle, &unk_267B18BF8);
  v25 = v55;
  sub_267B17640();
  v26 = *(v13 + 16);
  v44 = v16;
  v27 = v52;
  v26(v16, v18, v52);
  v47 = *(v51 + 16);
  v28 = v53;
  v29 = v48;
  (v47)(v53, v12, v48);
  v42 = *(v56 + 16);
  v30 = v25;
  v31 = v49;
  v42(v54, v30, v49);
  v32 = v50;
  v26(v50, v16, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A80, &qword_267B18F68);
  (v47)(&v32[*(v33 + 48)], v28, v29);
  v34 = &v32[*(v33 + 64)];
  v35 = v54;
  v42(v34, v54, v31);
  v36 = *(v56 + 8);
  v37 = v31;
  v36(v55, v31);
  v38 = *(v51 + 8);
  v38(v43, v29);
  v39 = *(v46 + 8);
  v40 = v52;
  v39(v45, v52);
  v36(v35, v37);
  v38(v53, v29);
  return (v39)(v44, v40);
}

uint64_t sub_267AE035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v30 = a3;
  v4 = type metadata accessor for IndexedHandle(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for DisambiguateHandlesView(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_267B17830();
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267B16670();
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x277D63F80];
  v47 = v12;
  v48 = v13;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_267B16660();
  v14 = objc_opt_self();
  v15 = sub_267B17960();

  v16 = [v14 localizedStringForLabel_];

  v17 = sub_267B17980();
  v19 = v18;

  v42 = MEMORY[0x277D837D0];
  v43 = MEMORY[0x277D63F80];
  v40 = v17;
  v41 = v19;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_267B17820();
  sub_267AE1084(v26, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  sub_267AE1084(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndexedHandle);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = (v7 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  sub_267AE126C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for DisambiguateHandlesView);
  sub_267AE126C(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for IndexedHandle);
  sub_267AE103C(&qword_280210A70, MEMORY[0x277D63E28], MEMORY[0x277D63E20]);
  v23 = v28;
  sub_267B173B0();

  return (*(v29 + 8))(v11, v23);
}

void sub_267AE074C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for IndexedHandle(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  sub_267AE098C();
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v9 = sub_267B16BA0();
  __swift_project_value_buffer(v9, static Logger.siriMail);
  sub_267AE1084(a2, v8, type metadata accessor for IndexedHandle);
  sub_267AE1084(a2, v6, type metadata accessor for IndexedHandle);
  v10 = sub_267B16B80();
  v11 = sub_267B17A80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    v14 = sub_267B16670();
    v16 = v15;
    sub_267AE1398(v8);
    v17 = sub_267B0BBF4(v14, v16, &v20);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = *v6;
    sub_267AE1398(v6);
    *(v12 + 14) = v18;
    _os_log_impl(&dword_267ADA000, v10, v11, "Tapped contact handle: %s at index=%ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D600E60](v13, -1, -1);
    MEMORY[0x26D600E60](v12, -1, -1);
  }

  else
  {
    sub_267AE1398(v6);

    sub_267AE1398(v8);
  }
}

uint64_t sub_267AE098C()
{
  v1 = sub_267B16600();
  v2 = *(v0 + *(type metadata accessor for DisambiguateHandlesView(0) + 20));
  if (v2)
  {
    v3 = v2;
    v4 = [v1 identifier];
    sub_267B17980();

    if (!sub_267AE42F8(v1))
    {
      sub_267B17930();
    }

    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_1_1();
    sub_267AE103C(v6, v7, MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_267AE0B04@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for DisambiguateHandlesView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267ADFB98(v4, a1);
}

uint64_t sub_267AE0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguateHandlesDataModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_267AE0C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DisambiguateHandlesDataModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_267AE0D18(uint64_t a1)
{
  type metadata accessor for DisambiguateHandlesDataModel(319);
  if (v1 <= 0x3F)
  {
    sub_267AE0D9C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267AE0D9C(uint64_t a1)
{
  if (!qword_280210A40)
  {
    sub_267B17910();
    sub_267AE103C(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_267B16E10();
    if (!v2)
    {
      atomic_store(v1, &qword_280210A40);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t objectdestroyTm()
{
  type metadata accessor for DisambiguateHandlesView(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  sub_267B166C0();
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v1 + v4);
  type metadata accessor for DisambiguateHandlesDataModel(0);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_267AE0FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DisambiguateHandlesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_267AE035C(a1, v6, a2);
}

uint64_t sub_267AE103C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267AE1084(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AE10E4()
{
  type metadata accessor for DisambiguateHandlesView(0);
  OUTLINED_FUNCTION_2_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for IndexedHandle(0) - 8);
  v8 = *(*v7 + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*v7 + 64);
  v11 = v3 | v8;
  sub_267B166C0();
  OUTLINED_FUNCTION_0();
  (*(v12 + 8))(v1 + v4);
  type metadata accessor for DisambiguateHandlesDataModel(0);

  v13 = v1 + v7[7];
  sub_267B16680();
  OUTLINED_FUNCTION_0();
  (*(v14 + 8))(v13 + v9);

  return MEMORY[0x2821FE8E8](v1, v9 + v10, v11 | 7);
}

uint64_t sub_267AE126C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_267AE12CC()
{
  v1 = *(type metadata accessor for DisambiguateHandlesView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for IndexedHandle(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_267AE074C(v0 + v2, v5);
}

uint64_t sub_267AE1398(uint64_t a1)
{
  v2 = type metadata accessor for IndexedHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriMailUI::DisambiguateRecipientsDataModel __swiftcall DisambiguateRecipientsDataModel.init(candidates:contactPickerButtonLabel:)(Swift::OpaquePointer candidates, Swift::String contactPickerButtonLabel)
{
  object = contactPickerButtonLabel._object;
  countAndFlagsBits = contactPickerButtonLabel._countAndFlagsBits;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A88, &qword_267B18F80);
  v5 = MEMORY[0x28223BE20](v48);
  v44 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v47 = &v33 - v7;
  type metadata accessor for IndexedContact(0);
  OUTLINED_FUNCTION_0_0();
  v45 = v9;
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v12 = (v11 - v10);
  v13 = *(candidates._rawValue + 2);
  if (v13)
  {
    v34 = countAndFlagsBits;
    v35 = object;
    v50 = MEMORY[0x277D84F90];
    sub_267ADF0FC(0, v13, 0);
    v14 = v50;
    v43 = *(candidates._rawValue + 2);
    v15 = sub_267B166C0();
    v18 = 0;
    v19 = *(v15 - 1);
    v40 = candidates._rawValue + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v41 = v13;
    v38 = v15;
    v39 = v19 + 16;
    v36 = v19 + 32;
    v37 = v19;
    rawValue = candidates._rawValue;
    while (v43 != v18)
    {
      if (v18 >= *(candidates._rawValue + 2))
      {
        goto LABEL_12;
      }

      v20 = v48;
      v21 = *(v48 + 48);
      v49 = v14;
      v22 = v37;
      v23 = v38;
      v24 = *(v37 + 16);
      v25 = v12;
      v26 = v47;
      v24(&v47[v21], &v40[*(v37 + 72) * v18], v38);
      v27 = v44;
      *v44 = v18;
      v28 = *(v20 + 48);
      v29 = *(v22 + 32);
      v14 = v49;
      v30 = &v26[v21];
      v12 = v25;
      v29(v27 + v28, v30, v23);
      v24(v25 + *(v46 + 20), (v27 + v28), v23);
      *v25 = v18;
      sub_267AE23DC(v27);
      v50 = v14;
      v32 = v14[2];
      v31 = v14[3];
      if (v32 >= v31 >> 1)
      {
        sub_267ADF0FC((v31 > 1), v32 + 1, 1);
        v14 = v50;
      }

      v14[2] = v32 + 1;
      v15 = sub_267AE2444(v25, v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32);
      ++v18;
      candidates._rawValue = rawValue;
      if (v41 == v18)
      {

        countAndFlagsBits = v34;
        object = v35;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
LABEL_10:
    v15 = v14;
    v16 = countAndFlagsBits;
    v17 = object;
  }

  result.contactPickerButtonLabel._object = v17;
  result.contactPickerButtonLabel._countAndFlagsBits = v16;
  result.candidates._rawValue = v15;
  return result;
}

uint64_t type metadata accessor for IndexedContact(uint64_t a1)
{
  result = qword_280210AD0;
  if (!qword_280210AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267AE1788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000267B233C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

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

uint64_t sub_267AE1860(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_267AE18A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE1788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE18D0(uint64_t a1)
{
  v2 = sub_267AE24A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE190C(uint64_t a1)
{
  v2 = sub_267AE24A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguateRecipientsDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A90, &qword_267B18F88);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE24A8();
  sub_267B17DC0();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
  sub_267AE24FC(&qword_280210AA8, &qword_280210AB0, &unk_267B19174, MEMORY[0x277D83948]);
  sub_267B17D20();
  if (!v4)
  {
    v15 = 1;
    sub_267B17CF0();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t DisambiguateRecipientsDataModel.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AB8, &qword_267B18F98);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_267AE24A8();
  sub_267B17DB0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
    sub_267AE24FC(&qword_280210AC0, &qword_280210AC8, &unk_267B1914C, MEMORY[0x277D83978]);
    sub_267B17CA0();
    v4 = v8;
    sub_267B17C70();
    v6 = OUTLINED_FUNCTION_2_1();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_267AE1D24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DisambiguateRecipientsDataModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_267AE1DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

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

uint64_t sub_267AE1E68(char a1)
{
  if (a1)
  {
    return 0x746361746E6F63;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_267AE1E9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AF8, &qword_267B191F0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE28A4();
  sub_267B17DC0();
  v12[15] = 0;
  sub_267B17D10();
  if (!v1)
  {
    type metadata accessor for IndexedContact(0);
    v12[14] = 1;
    sub_267B166C0();
    OUTLINED_FUNCTION_1_2();
    sub_267AE28F8(v9, v10, MEMORY[0x277D56180]);
    sub_267B17D20();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_267AE2034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_267B166C0();
  OUTLINED_FUNCTION_0_0();
  v26 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B08, &qword_267B191F8);
  OUTLINED_FUNCTION_0_0();
  v28 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for IndexedContact(0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE28A4();
  sub_267B17DB0();
  if (!v2)
  {
    v25 = v13;
    v17 = v28;
    v18 = v29;
    v32 = 0;
    v19 = v30;
    *v16 = sub_267B17C90();
    v31 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_267AE28F8(v20, v21, MEMORY[0x277D56190]);
    v24 = v8;
    sub_267B17CA0();
    (*(v17 + 8))(v12, v19);
    (*(v26 + 32))(v16 + *(v25 + 20), v24, v18);
    sub_267AE2444(v16, v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_267AE22E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE1DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE230C(uint64_t a1)
{
  v2 = sub_267AE28A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE2348(uint64_t a1)
{
  v2 = sub_267AE28A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE23B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267AE1D74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267AE23DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A88, &qword_267B18F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267AE2444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedContact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267AE24A8()
{
  result = qword_280210A98;
  if (!qword_280210A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A98);
  }

  return result;
}

uint64_t sub_267AE24FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210AA0, &qword_267B18F90);
    sub_267AE28F8(a2, type metadata accessor for IndexedContact, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_267AE25AC(uint64_t *a1, int a2)
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

uint64_t sub_267AE25EC(uint64_t result, int a2, int a3)
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

uint64_t sub_267AE2660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_267B166C0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_267AE26C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_267B166C0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_267AE2720(uint64_t a1)
{
  result = sub_267B166C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_267AE27A0()
{
  result = qword_280210AE0;
  if (!qword_280210AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AE0);
  }

  return result;
}

unint64_t sub_267AE27F8()
{
  result = qword_280210AE8;
  if (!qword_280210AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AE8);
  }

  return result;
}

unint64_t sub_267AE2850()
{
  result = qword_280210AF0;
  if (!qword_280210AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AF0);
  }

  return result;
}

unint64_t sub_267AE28A4()
{
  result = qword_280210B00;
  if (!qword_280210B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B00);
  }

  return result;
}

uint64_t sub_267AE28F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_267AE2944(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE2A10);
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

unint64_t sub_267AE2A4C()
{
  result = qword_280210B10;
  if (!qword_280210B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B10);
  }

  return result;
}

unint64_t sub_267AE2AA4()
{
  result = qword_280210B18;
  if (!qword_280210B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B18);
  }

  return result;
}

unint64_t sub_267AE2AFC()
{
  result = qword_280210B20;
  if (!qword_280210B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B20);
  }

  return result;
}

void DisambiguateRecipientView.init(model:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_267B17910();
  OUTLINED_FUNCTION_0_1();
  sub_267AE4364(v8, v9, MEMORY[0x277D63F50]);
  v10 = sub_267B16E00();
  v12 = v11;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v13 = sub_267B16BA0();
  __swift_project_value_buffer(v13, static Logger.siriMail);
  v14 = sub_267B16B80();
  v15 = sub_267B17A80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267ADA000, v14, v15, "Constructing DisambiguateRecipientView", v16, 2u);
    MEMORY[0x26D600E60](v16, -1, -1);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v10;
  a4[4] = v12;
}

uint64_t DisambiguateRecipientView.body.getter()
{
  v1 = *(v0 + 1);
  v8 = *v0;
  v6 = *(v0 + 3);
  v7 = v1;
  v2 = swift_allocObject();
  v3 = *(v0 + 1);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v0[4];
  sub_267AE3F18(&v8, v5, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v7, v5);
  sub_267AE3F18(&v6, v5, &qword_280210B28, &qword_267B19308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B30, &qword_267B19310);
  sub_267ADCE94(&qword_280210B38, &qword_280210B30, &qword_267B19310, MEMORY[0x277CE14C0]);
  return sub_267B17710();
}

uint64_t sub_267AE2DF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B50, "j)");
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = sub_267B17740();
  v30 = *(v8 - 8);
  v9 = v30;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v29 = &v27 - v13;
  sub_267B17750();
  v15 = *(a1 + 1);
  v38 = *a1;
  v35 = v38;
  v36 = *(a1 + 3);
  v37 = v15;
  v16 = swift_allocObject();
  v17 = *(a1 + 1);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = a1[4];

  sub_267AE3F18(&v38, v34, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v37, v34);
  sub_267AE3F18(&v36, v34, &qword_280210B28, &qword_267B19308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
  sub_267ADCE94(&qword_280210B58, &qword_280210AA0, &qword_267B18F90, MEMORY[0x277D83980]);
  sub_267AE4364(&qword_280210B60, type metadata accessor for IndexedContact, &unk_267B1905C);
  v27 = v7;
  sub_267B17640();
  v18 = *(v9 + 16);
  v28 = v12;
  v18(v12, v14, v8);
  v19 = *(v3 + 16);
  v20 = v31;
  v21 = v32;
  v19(v31, v7, v32);
  v22 = v33;
  v18(v33, v12, v8);
  v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B68, &qword_267B193D0) + 48)];
  v19(v23, v20, v21);
  v24 = *(v3 + 8);
  v24(v27, v21);
  v25 = *(v30 + 8);
  v25(v29, v8);
  v24(v20, v21);
  return (v25)(v28, v8);
}

uint64_t sub_267AE31F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for IndexedContact(0);
  v28[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28[1] = v6;
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267B165F0();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_267B17790();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B70, &qword_267B193D8);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v12 = v28 - v11;
  v13 = sub_267B16690();
  v54 = MEMORY[0x277D837D0];
  v55 = MEMORY[0x277D63F80];
  *&v53 = v13;
  *(&v53 + 1) = v14;
  v15 = sub_267AE36AC();
  if (v16)
  {
    v17 = MEMORY[0x277D63F80];
    v18 = MEMORY[0x277D837D0];
  }

  else
  {
    v15 = 0;
    v18 = 0;
    v17 = 0;
    v50 = 0;
  }

  *&v49 = v15;
  *(&v49 + 1) = v16;
  v51 = v18;
  v52 = v17;
  memset(v48, 0, 40);
  memset(v47, 0, 40);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_267B166A0();
  sub_267B165E0();

  v34[3] = sub_267B176F0();
  v34[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_267B17700();
  sub_267B17780();
  v19 = *a2;
  v53 = *(a2 + 1);
  v47[0] = v19;
  v49 = *(a2 + 3);
  v20 = v29;
  sub_267AE40DC(a1, v29);
  v21 = (*(v28[0] + 80) + 56) & ~*(v28[0] + 80);
  v22 = swift_allocObject();
  v23 = *(a2 + 1);
  *(v22 + 16) = *a2;
  *(v22 + 32) = v23;
  *(v22 + 48) = a2[4];
  sub_267AE2444(v20, v22 + v21);
  sub_267AE3F18(v47, v48, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v53, v48);
  sub_267AE3F18(&v49, v48, &qword_280210B28, &qword_267B19308);
  v24 = sub_267AE4364(&qword_280210B78, MEMORY[0x277D63D08], MEMORY[0x277D63CF0]);
  sub_267B173B0();

  (*(v31 + 8))(v10, v8);
  v48[0] = v8;
  v48[1] = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v32;
  v26 = sub_267B17350();
  result = (*(v30 + 8))(v12, v25);
  *v33 = v26;
  return result;
}

uint64_t sub_267AE36AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B80, &unk_267B193E0);
  MEMORY[0x28223BE20](v0 - 8);
  v37 = &v37 - v1;
  v47 = sub_267B16640();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v50 = v5;
  MEMORY[0x28223BE20](v6);
  v49 = &v37 - v7;
  v8 = sub_267B16680();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v39 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  result = sub_267B166B0();
  v17 = result;
  v18 = 0;
  v51 = *(result + 16);
  v46 = v10 + 16;
  v45 = *MEMORY[0x277D56008];
  v43 = (v3 + 8);
  v44 = (v3 + 104);
  v41 = (v10 + 8);
  v48 = v10;
  v38 = (v10 + 32);
  v40 = MEMORY[0x277D84F90];
  v42 = result;
  while (1)
  {
    if (v51 == v18)
    {

      if (*(v40 + 16) == 1)
      {
        v35 = v37;
        sub_267AED9B8(v40, v37);

        if (__swift_getEnumTagSinglePayload(v35, 1, v8) != 1)
        {
          v36 = sub_267B16670();
          (*v41)(v35, v8);
          return v36;
        }

        sub_267AE43AC(v35);
      }

      else
      {
      }

      return 0;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    v19 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v20 = *(v48 + 72);
    (*(v48 + 16))(v15, v17 + v19 + v20 * v18, v8);
    v21 = v49;
    sub_267B16650();
    v22 = v15;
    v23 = v50;
    v24 = v18;
    v25 = v47;
    (*v44)(v50, v45, v47);
    sub_267AE4364(&qword_280210B88, MEMORY[0x277D56020], MEMORY[0x277D56038]);
    sub_267B179D0();
    sub_267B179D0();
    v26 = *v43;
    (*v43)(v23, v25);
    v26(v21, v25);
    if (v53 == v52)
    {
      v27 = v24;
      v28 = *v38;
      (*v38)(v39, v22, v8);
      v29 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v29;
      v15 = v22;
      v31 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267ADF154(0, *(v29 + 16) + 1, 1);
        v29 = v54;
      }

      v17 = v42;
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_267ADF154((v32 > 1), v33 + 1, 1);
        v34 = v33 + 1;
        v29 = v54;
      }

      v18 = v27 + 1;
      *(v29 + 16) = v34;
      v40 = v29;
      result = v31(v29 + v19 + v33 * v20, v39, v8);
    }

    else
    {
      result = (*v41)(v22, v8);
      v18 = v24 + 1;
      v15 = v22;
      v17 = v42;
    }
  }

  __break(1u);
  return result;
}

void sub_267AE3B60(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for IndexedContact(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  sub_267AE3D84();
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v9 = sub_267B16BA0();
  __swift_project_value_buffer(v9, static Logger.siriMail);
  sub_267AE40DC(a2, v8);
  sub_267AE40DC(a2, v6);
  v10 = sub_267B16B80();
  v11 = sub_267B17A80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    v14 = sub_267B16690();
    v16 = v15;
    sub_267AE429C(v8);
    v17 = sub_267B0BBF4(v14, v16, &v20);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = *v6;
    sub_267AE429C(v6);
    *(v12 + 14) = v18;
    _os_log_impl(&dword_267ADA000, v10, v11, "Tapped contact: %s at index=%ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D600E60](v13, -1, -1);
    MEMORY[0x26D600E60](v12, -1, -1);
  }

  else
  {
    sub_267AE429C(v6);

    sub_267AE429C(v8);
  }
}

uint64_t sub_267AE3D84()
{
  v1 = sub_267B16600();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 identifier];
    sub_267B17980();

    if (!sub_267AE42F8(v3))
    {
      sub_267B17930();
    }

    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    OUTLINED_FUNCTION_0_1();
    sub_267AE4364(v7, v8, MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AE3F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t sub_267AE3FB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_267AE3FF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267AE40DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AE4140()
{
  v1 = (type metadata accessor for IndexedContact(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7];
  v6 = sub_267B166C0();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_267AE4238()
{
  v1 = *(type metadata accessor for IndexedContact(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  sub_267AE3B60(v0 + 16, v2);
}

uint64_t sub_267AE429C(uint64_t a1)
{
  v2 = type metadata accessor for IndexedContact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267AE42F8(void *a1)
{
  v1 = [a1 userData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B17920();

  return v3;
}

uint64_t sub_267AE4364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267AE43AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B80, &unk_267B193E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MailPluginModel.asEncoreEvent.getter()
{
  v1 = v0;
  v2 = sub_267B16560();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BA0, &qword_267B193F0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  type metadata accessor for MailPluginModel(0);
  OUTLINED_FUNCTION_0();
  v13 = MEMORY[0x28223BE20](v12);
  v38[0] = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v38 - v15;
  v17 = sub_267B16780();
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v38[1] = v1;
  sub_267AE4938(v1, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_12();
      v37 = 28;
      break;
    case 2u:
      OUTLINED_FUNCTION_12();
      v37 = 32;
      break;
    case 3u:
      OUTLINED_FUNCTION_12();
      v37 = 34;
      break;
    default:
      sub_267B16950();
      OUTLINED_FUNCTION_0();
      (*(v24 + 32))(v23, v16);
      (*(v19 + 104))(v23, *MEMORY[0x277D5C928], v17);
      v39[3] = v17;
      v39[4] = sub_267AE6D44(&qword_280210BA8, MEMORY[0x277D5C970], MEMORY[0x277D5C978]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(v19 + 16))(boxed_opaque_existential_1, v23, v17);
      sub_267B16990();
      v26 = sub_267B169A0();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v26);
      sub_267B16550();
      sub_267B16540();
      (*(v4 + 8))(v8, v2);
      v27 = objc_allocWithZone(sub_267B16980());
      v28 = sub_267B16970();
      v29 = OUTLINED_FUNCTION_15();
      v30(v29);
      return v28;
  }

  static Logger.logAndCrash(_:file:line:)(v32, v33, v34, v35, v36, v37);
  __break(1u);
  JUMPOUT(0x267AE48DCLL);
}

uint64_t type metadata accessor for MailPluginModel(uint64_t a1)
{
  result = qword_280210CA0;
  if (!qword_280210CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267AE4938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailPluginModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MailPluginModel.bundleName.getter()
{
  swift_beginAccess();
  v0 = static MailPluginModel.bundleName;

  return v0;
}

uint64_t static MailPluginModel.bundleName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static MailPluginModel.bundleName = a1;
  off_280210B98 = a2;
}

uint64_t MailPluginModel.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_267B16710();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  type metadata accessor for MailPluginModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  sub_267AE4938(v2, v12 - v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267AE5CF8(v13, type metadata accessor for MailPluginModel);
  if (EnumCaseMultiPayload > 1)
  {
    v15 = 0;
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x277D61BE8], v3);
    v15 = sub_267B16700();
    (*(v5 + 8))(v9, v3);
  }

  return v15 & 1;
}

uint64_t sub_267AE4C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7373654D64616572 && a2 == 0xEC00000073656761;
    if (v6 || (sub_267B17D60() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000267B23570 == a2;
      if (v7 || (sub_267B17D60() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x8000000267B23590 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B17D60();

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

uint64_t sub_267AE4DDC(unsigned __int8 a1)
{
  sub_267B17D80();
  MEMORY[0x26D600900](a1);
  return sub_267B17DA0();
}

unint64_t sub_267AE4E24(char a1)
{
  result = 0x7373654D646E6573;
  switch(a1)
  {
    case 1:
      result = 0x7373654D64616572;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267AE4F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

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

uint64_t sub_267AE4FD8(char a1)
{
  if (a1)
  {
    return 0x6554686372616573;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_267AE5008(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B17D60();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267AE5078()
{
  sub_267B17D80();
  MEMORY[0x26D600900](0);
  return sub_267B17DA0();
}

uint64_t sub_267AE50E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE4C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE5108@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267AE4D9C();
  *a1 = result;
  return result;
}

uint64_t sub_267AE5130(uint64_t a1)
{
  v2 = sub_267AE5C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE516C(uint64_t a1)
{
  v2 = sub_267AE5C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE51D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE5008(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267AE5218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267AE4ED4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267AE5244(uint64_t a1)
{
  v2 = sub_267AE5CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE5280(uint64_t a1)
{
  v2 = sub_267AE5CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE52BC(uint64_t a1)
{
  v2 = sub_267AE5D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE52F8(uint64_t a1)
{
  v2 = sub_267AE5D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE5344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE4F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE536C(uint64_t a1)
{
  v2 = sub_267AE5DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE53A8(uint64_t a1)
{
  v2 = sub_267AE5DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE53E4(uint64_t a1)
{
  sub_267B17D80();
  MEMORY[0x26D600900](0);
  return sub_267B17DA0();
}

uint64_t sub_267AE5424(uint64_t a1)
{
  v2 = sub_267AE5E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE5460(uint64_t a1)
{
  v2 = sub_267AE5E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MailPluginModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BB0, &qword_267B193F8);
  OUTLINED_FUNCTION_0_0();
  v79 = v3;
  v80 = v2;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_0();
  v78 = v5;
  v74 = type metadata accessor for DisambiguateHandlesDataModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v77 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BB8, &qword_267B19400);
  OUTLINED_FUNCTION_0_0();
  v71 = v10;
  v72 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  v70 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BC0, &qword_267B19408);
  OUTLINED_FUNCTION_0_0();
  v75 = v14;
  v76 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_0();
  v73 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BC8, &qword_267B19410);
  OUTLINED_FUNCTION_0_0();
  v68 = v18;
  v69 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v67 = sub_267B16950();
  OUTLINED_FUNCTION_0_0();
  v66 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  type metadata accessor for MailPluginModel(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v30 = (v29 - v28);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BD0, &qword_267B19418);
  OUTLINED_FUNCTION_0_0();
  v82 = v31;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE5C50();
  sub_267B17DC0();
  sub_267AE4938(v81, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = *v30;
      LOBYTE(v85) = 1;
      sub_267AE5DF8();
      sub_267B17CC0();
      v85 = v56;
      v88 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C08, &qword_267B19420);
      sub_267AE6BD0(&qword_280210C10, &qword_280210C18, &protocol conformance descriptor for WidgetMessage, MEMORY[0x277D83948]);
      v57 = v83;
      sub_267B17D20();
      if (v57)
      {

        v58 = OUTLINED_FUNCTION_8_0();
        v59(v58);
        v60 = OUTLINED_FUNCTION_13();
        v61(v60);
      }

      LOBYTE(v85) = 1;
      sub_267B17CD0();

      v63 = OUTLINED_FUNCTION_8_0();
      v64(v63);
      v38 = OUTLINED_FUNCTION_13();
      return v39(v38, v40);
    case 2u:
      v41 = *v30;
      v42 = v30[1];
      v43 = v30[2];
      LOBYTE(v85) = 2;
      sub_267AE5D50();
      v44 = v70;
      v45 = v84;
      sub_267B17CC0();
      v85 = v41;
      v86 = v42;
      v87 = v43;
      sub_267AE5DA4();
      v46 = v72;
      sub_267B17D20();
      (*(v71 + 8))(v44, v46);
      v47 = OUTLINED_FUNCTION_11();
      v48(v47, v45);

    case 3u:
      v49 = v77;
      sub_267AE6B1C(v30, v77, type metadata accessor for DisambiguateHandlesDataModel);
      LOBYTE(v85) = 3;
      sub_267AE5CA4();
      v50 = v78;
      v51 = v84;
      sub_267B17CC0();
      OUTLINED_FUNCTION_5();
      sub_267AE6D44(v52, v53, &protocol conformance descriptor for DisambiguateHandlesDataModel);
      v54 = v80;
      sub_267B17D20();
      OUTLINED_FUNCTION_4_0();
      v55(v50, v54);
      sub_267AE5CF8(v49, type metadata accessor for DisambiguateHandlesDataModel);
      v38 = OUTLINED_FUNCTION_11();
      v40 = v51;
      return v39(v38, v40);
    default:
      v33 = v66;
      v34 = v67;
      (*(v66 + 32))(v26, v30, v67);
      LOBYTE(v85) = 0;
      sub_267AE5E4C();
      sub_267B17CC0();
      OUTLINED_FUNCTION_7_0();
      sub_267AE6D44(v35, v36, MEMORY[0x277D5CA88]);
      v37 = v69;
      sub_267B17D20();
      (*(v68 + 8))(v21, v37);
      (*(v33 + 8))(v26, v34);
      v38 = OUTLINED_FUNCTION_11();
      v40 = v84;
      return v39(v38, v40);
  }
}

unint64_t sub_267AE5C50()
{
  result = qword_280210BD8;
  if (!qword_280210BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BD8);
  }

  return result;
}

unint64_t sub_267AE5CA4()
{
  result = qword_280210BE0;
  if (!qword_280210BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BE0);
  }

  return result;
}

uint64_t sub_267AE5CF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_267AE5D50()
{
  result = qword_280210BF0;
  if (!qword_280210BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BF0);
  }

  return result;
}

unint64_t sub_267AE5DA4()
{
  result = qword_280210BF8;
  if (!qword_280210BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BF8);
  }

  return result;
}

unint64_t sub_267AE5DF8()
{
  result = qword_280210C00;
  if (!qword_280210C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C00);
  }

  return result;
}

unint64_t sub_267AE5E4C()
{
  result = qword_280210C20;
  if (!qword_280210C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C20);
  }

  return result;
}

uint64_t MailPluginModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C30, &qword_267B19428);
  OUTLINED_FUNCTION_0_0();
  v113 = v3;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_0();
  v118 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C38, &qword_267B19430);
  OUTLINED_FUNCTION_0_0();
  v110 = v7;
  v111 = v6;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_0();
  v115 = v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C40, &qword_267B19438);
  OUTLINED_FUNCTION_0_0();
  v117 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  v122 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C48, &qword_267B19440);
  OUTLINED_FUNCTION_0_0();
  v108 = v14;
  v109 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_0();
  v114 = v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C50, &qword_267B19448);
  OUTLINED_FUNCTION_0_0();
  v120 = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v102 - v19;
  v121 = type metadata accessor for MailPluginModel(0);
  OUTLINED_FUNCTION_0();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v102 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v102 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v102 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v102 - v34;
  v36 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_267AE5C50();
  v37 = v125;
  sub_267B17DB0();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v107 = v33;
  v104 = v27;
  v105 = v24;
  v103 = v30;
  v106 = v35;
  v38 = v121;
  v125 = v20;
  v39 = sub_267B17CB0();
  v43 = sub_267AE6A58(v39, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_8;
  }

  v102 = 0;
  if (v41 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x267AE69BCLL);
  }

  v48 = *(v40 + v41);
  sub_267AE6AA0(v41 + 1, v42 >> 1, v43, v44, v45, v46, v47, v40, v41, v42);
  v50 = v49;
  v52 = v51;
  swift_unknownObjectRelease();
  v53 = v117;
  if (v50 != v52 >> 1)
  {
LABEL_8:
    v59 = sub_267B17BA0();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C58, &qword_267B19450);
    *v61 = v38;
    v62 = v123;
    v63 = v125;
    sub_267B17C40();
    sub_267B17B90();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D84160], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_0();
    v64(v63, v62);
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v54 = v102;
  v55 = v116;
  switch(v48)
  {
    case 1:
      LOBYTE(v126) = 1;
      sub_267AE5DF8();
      v69 = v123;
      v70 = v125;
      sub_267B17C30();
      if (v54)
      {
        OUTLINED_FUNCTION_4_0();
        v58 = v70;
        v68 = v69;
        goto LABEL_17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C08, &qword_267B19420);
      v128 = 0;
      sub_267AE6BD0(&qword_280210C70, &qword_280210C78, &protocol conformance descriptor for WidgetMessage, MEMORY[0x277D83978]);
      sub_267B17CA0();
      v92 = v126;
      v128 = 1;
      v93 = sub_267B17C50();
      v94 = (v120 + 8);
      v102 = 0;
      v95 = v93;
      v97 = v96;
      swift_unknownObjectRelease();
      v98 = OUTLINED_FUNCTION_15();
      v99(v98);
      (*v94)(v125, v123);
      v100 = v103;
      *v103 = v92;
      v100[1] = v95;
      v100[2] = v97;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v85 = v100;
      goto LABEL_23;
    case 2:
      LOBYTE(v126) = 2;
      sub_267AE5D50();
      OUTLINED_FUNCTION_10();
      v66 = v125;
      sub_267B17C30();
      if (v54)
      {
        OUTLINED_FUNCTION_4_0();
        v58 = v66;
        goto LABEL_14;
      }

      sub_267AE6B7C();
      sub_267B17CA0();
      v71 = v120;
      v102 = 0;
      swift_unknownObjectRelease();
      v77 = OUTLINED_FUNCTION_16();
      v78(v77);
      (*(v71 + 8))(v66, v53);
      v79 = v127;
      v80 = v104;
      *v104 = v126;
      *(v80 + 16) = v79;
      goto LABEL_22;
    case 3:
      LOBYTE(v126) = 3;
      sub_267AE5CA4();
      OUTLINED_FUNCTION_10();
      v67 = v125;
      sub_267B17C30();
      if (v54)
      {
        OUTLINED_FUNCTION_4_0();
        v58 = v67;
        goto LABEL_14;
      }

      type metadata accessor for DisambiguateHandlesDataModel(0);
      OUTLINED_FUNCTION_5();
      sub_267AE6D44(v72, v73, &protocol conformance descriptor for DisambiguateHandlesDataModel);
      v74 = v105;
      sub_267B17CA0();
      v102 = 0;
      swift_unknownObjectRelease();
      v81 = OUTLINED_FUNCTION_8_0();
      v82(v81);
      OUTLINED_FUNCTION_4_0();
      v83(v67, v53);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v85 = v74;
LABEL_23:
      v89 = v106;
      sub_267AE6B1C(v85, v106, v84);
      v91 = v124;
      v55 = v116;
      goto LABEL_24;
    default:
      LOBYTE(v126) = 0;
      sub_267AE5E4C();
      OUTLINED_FUNCTION_10();
      v56 = v125;
      sub_267B17C30();
      if (v54)
      {
        OUTLINED_FUNCTION_4_0();
        v58 = v56;
LABEL_14:
        v68 = v53;
LABEL_17:
        v57(v58, v68);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v124);
      }

      sub_267B16950();
      OUTLINED_FUNCTION_7_0();
      sub_267AE6D44(v75, v76, MEMORY[0x277D5CA98]);
      sub_267B17CA0();
      v102 = 0;
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_14();
      v87(v86);
      OUTLINED_FUNCTION_4_0();
      v88(v56, v53);
      v80 = v107;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v89 = v106;
      sub_267AE6B1C(v80, v106, v90);
      v91 = v124;
LABEL_24:
      OUTLINED_FUNCTION_1_3();
      sub_267AE6B1C(v89, v55, v101);
      result = __swift_destroy_boxed_opaque_existential_1(v91);
      break;
  }

  return result;
}

uint64_t sub_267AE69D0()
{
  swift_beginAccess();
  v0 = static MailPluginModel.bundleName;

  return v0;
}

uint64_t sub_267AE6A58(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_267AE6AA0(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if (result < a9)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a10 >> 1) < result || (a10 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a9)
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

uint64_t sub_267AE6B1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_267AE6B7C()
{
  result = qword_280210C68;
  if (!qword_280210C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C68);
  }

  return result;
}

uint64_t sub_267AE6BD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210C08, &qword_267B19420);
    sub_267AE6D44(a2, type metadata accessor for WidgetMessage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AE6D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267AE6D94(uint64_t a1)
{
  sub_267B16950();
  if (v1 <= 0x3F)
  {
    sub_267AE6E24(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DisambiguateHandlesDataModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267AE6E24(uint64_t a1)
{
  if (!qword_280210CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210C08, &qword_267B19420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210CB8, &qword_267B19538);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280210CB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE7004);
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

_BYTE *storeEnumTagSinglePayload for MailPluginModel.ReadMessagesCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE7134);
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

uint64_t sub_267AE717C(unsigned int *a1, int a2)
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

_BYTE *sub_267AE71CC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x267AE7268);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267AE72A4()
{
  result = qword_280210CC0;
  if (!qword_280210CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CC0);
  }

  return result;
}

unint64_t sub_267AE72FC()
{
  result = qword_280210CC8;
  if (!qword_280210CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CC8);
  }

  return result;
}

unint64_t sub_267AE7354()
{
  result = qword_280210CD0;
  if (!qword_280210CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CD0);
  }

  return result;
}

unint64_t sub_267AE73AC()
{
  result = qword_280210CD8;
  if (!qword_280210CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CD8);
  }

  return result;
}

unint64_t sub_267AE7404()
{
  result = qword_280210CE0;
  if (!qword_280210CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CE0);
  }

  return result;
}

unint64_t sub_267AE745C()
{
  result = qword_280210CE8;
  if (!qword_280210CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CE8);
  }

  return result;
}

unint64_t sub_267AE74B4()
{
  result = qword_280210CF0;
  if (!qword_280210CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CF0);
  }

  return result;
}

unint64_t sub_267AE750C()
{
  result = qword_280210CF8;
  if (!qword_280210CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CF8);
  }

  return result;
}

unint64_t sub_267AE7564()
{
  result = qword_280210D00;
  if (!qword_280210D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D00);
  }

  return result;
}

unint64_t sub_267AE75BC()
{
  result = qword_280210D08;
  if (!qword_280210D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D08);
  }

  return result;
}

unint64_t sub_267AE7614()
{
  result = qword_280210D10;
  if (!qword_280210D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D10);
  }

  return result;
}

unint64_t sub_267AE766C()
{
  result = qword_280210D18;
  if (!qword_280210D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D18);
  }

  return result;
}

unint64_t sub_267AE76C4()
{
  result = qword_280210D20;
  if (!qword_280210D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D20);
  }

  return result;
}

unint64_t sub_267AE771C()
{
  result = qword_280210D28;
  if (!qword_280210D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D28);
  }

  return result;
}

unint64_t sub_267AE7774()
{
  result = qword_280210D30;
  if (!qword_280210D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D30);
  }

  return result;
}

const char *sub_267AE78C8(unsigned __int8 a1)
{
  v1 = "ResponseFramework";
  if (!a1)
  {
    v1 = "SiriMail";
  }

  if (a1 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return "Mail";
  }
}

const char *sub_267AE7910(char a1)
{
  result = "SceneHosting";
  switch(a1)
  {
    case 1:
      result = "SMART";
      break;
    case 2:
      result = "BlackPearl";
      break;
    case 3:
      result = "CatchUp";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall MailUIFeatureFlags.isSceneHostingEnabled()()
{
  v0 = sub_267B16710();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-1] - v5;
  v16 = &type metadata for Features;
  v7 = sub_267AE7B88();
  v17 = v7;
  LOBYTE(v15[0]) = 1;
  v8 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v8 & 1) != 0 && (v16 = &type metadata for Features, v17 = v7, LOBYTE(v15[0]) = 0, v9 = sub_267B16630(), __swift_destroy_boxed_opaque_existential_1(v15), (v9))
  {
    sub_267B166F0();
    sub_267B166E0();
    sub_267B166D0();

    sub_267B16720();

    (*(v1 + 104))(v4, *MEMORY[0x277D61BE8], v0);
    sub_267AE7BDC();
    v10 = sub_267B17950();
    v11 = *(v1 + 8);
    v11(v4, v0);
    v11(v6, v0);
    v12 = v10 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_267AE7B88()
{
  result = qword_280210D38;
  if (!qword_280210D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D38);
  }

  return result;
}

unint64_t sub_267AE7BDC()
{
  result = qword_280210D40;
  if (!qword_280210D40)
  {
    sub_267B16710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D40);
  }

  return result;
}

uint64_t sub_267AE7C44(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_267AE7B88();
  LOBYTE(v4[0]) = a1;
  v2 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE7D78);
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

unint64_t sub_267AE7DB4()
{
  result = qword_280210D48;
  if (!qword_280210D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D48);
  }

  return result;
}

uint64_t MessageDetailView.init(_:numberOfSummaryLines:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a3 = sub_267B16E00();
  *(a3 + 8) = v6;
  sub_267B17550();
  *(a3 + 16) = v28;
  *(a3 + 24) = v29;
  v7 = type metadata accessor for MessageDetailView(0);
  v8 = v7[12];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  sub_267AEB3B4(a1, a3 + v7[6], type metadata accessor for WidgetMessage);
  v9 = type metadata accessor for WidgetMessage(0);
  v10 = (a1 + v9[20]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a3 + v7[8]);
  *v13 = v12;
  v13[1] = v11;
  v14 = (a1 + v9[21]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a3 + v7[9]);
  *v17 = v15;
  v17[1] = v16;
  v18 = (a1 + v9[19]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a3 + v7[10]);
  *v21 = v19;
  v21[1] = v20;
  v22 = *a1;
  v23 = a1[1];

  String.uniqueIdentifier.getter(v22, v23);
  if (qword_280210868 != -1)
  {
    swift_once();
  }

  v24 = qword_280210D58;
  v25 = sub_267B17960();

  v26 = [v24 messageForSearchableItemIdentifier_];

  result = sub_267AEB1F8(a1);
  *(a3 + v7[7]) = v26;
  *(a3 + v7[11]) = a2;
  return result;
}

uint64_t type metadata accessor for MessageDetailView(uint64_t a1)
{
  result = qword_280210DC0;
  if (!qword_280210DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t String.uniqueIdentifier.getter(uint64_t a1, uint64_t a2)
{
  sub_267B164E0();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  sub_267B164D0();
  sub_267ADCFA4();
  v8 = sub_267B17B10();
  (*(v6 + 8))(v3, v2);
  v9 = sub_267AEB36C(v8);
  v11 = v10;

  if (v11)
  {
    return v9;
  }

  return a1;
}

uint64_t MessageDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D60, &qword_267B19C58);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D68, &qword_267B19C60);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MessageDetailView(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D70, &qword_267B19C68);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = *(v2 + *(v12 + 32) + 56);
  v19 = sub_267B17050();
  if (v18)
  {
    *v6 = v19;
    *(v6 + 1) = 0;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DA0, &qword_267B19C80);
    v41 = a1;
    OUTLINED_FUNCTION_3_0();
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    sub_267AEB418(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DA8, &qword_267B19C88);
    OUTLINED_FUNCTION_1_4();
    sub_267ADCE94(v22, v23, &qword_267B19C88, v24);
    sub_267B17710();
    v25 = &qword_280210D60;
    v26 = &qword_267B19C58;
    sub_267AEBA8C(v6, v10, &qword_280210D60, &qword_267B19C58);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_3();
    sub_267ADCE94(v27, v28, v29, v30);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58, v7);
    sub_267B17080();
    v31 = v6;
  }

  else
  {
    *v17 = v19;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D78, &qword_267B19C70) + 44);
    OUTLINED_FUNCTION_3_0();
    v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v33 = swift_allocObject();
    sub_267AEB418(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D80, &qword_267B19C78);
    OUTLINED_FUNCTION_1_4();
    sub_267ADCE94(v34, v35, &qword_267B19C78, v36);
    sub_267B17710();
    v25 = &qword_280210D70;
    v26 = &qword_267B19C68;
    sub_267AEBA8C(v17, v10, &qword_280210D70, &qword_267B19C68);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_3();
    sub_267ADCE94(v37, &qword_280210D70, &qword_267B19C68, v38);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58, v7);
    sub_267B17080();
    v31 = v17;
  }

  return sub_267AEC1D4(v31, v25, v26);
}

uint64_t sub_267AE8644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_267B17730();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v78 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v77 = &v65[-v6];
  v70 = sub_267B172D0();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DF8, &qword_267B19D10) - 8;
  MEMORY[0x28223BE20](v71);
  v9 = &v65[-v8];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E00, &qword_267B19D18);
  v10 = MEMORY[0x28223BE20](v73);
  v75 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v65[-v13];
  MEMORY[0x28223BE20](v12);
  v74 = &v65[-v14];
  v15 = type metadata accessor for MessageDetailView(0);
  v16 = a1 + *(v15 + 24);
  v17 = type metadata accessor for MessageView(0);
  sub_267AEB3B4(v16, v9 + v17[5], type metadata accessor for WidgetMessage);
  v18 = *(v15 + 44);
  v76 = a1;
  v67 = *(a1 + v18);
  v19 = type metadata accessor for WidgetMessage(0);
  v66 = *(v16 + v19[10]);
  v20 = v19[32];
  v21 = (v16 + v19[31]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v16 + v20);
  v25 = *(v16 + v20 + 8);
  v26 = (v16 + v19[33]);
  v28 = *v26;
  v27 = v26[1];
  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  *v9 = sub_267B16E00();
  v9[1] = v29;
  *(v9 + v17[6]) = v67;
  *(v9 + v17[7]) = v66;
  v30 = (v9 + v17[8]);
  *v30 = v22;
  v30[1] = v23;
  v31 = (v9 + v17[9]);
  *v31 = v24;
  v31[1] = v25;
  v32 = (v9 + v17[10]);
  *v32 = v28;
  v32[1] = v27;
  v85 = 0x4030000000000000;
  (*(v69 + 104))(v68, *MEMORY[0x277CE0A58], v70);
  sub_267AEB9E0();
  sub_267B16CC0();
  v33 = (v9 + v17[12]);
  v82 = 0;
  sub_267B17550();
  v34 = v86;
  *v33 = v85;
  v33[1] = v34;
  v35 = (v9 + v17[13]);
  v82 = 0;
  sub_267B17550();
  v36 = v86;
  *v35 = v85;
  v35[1] = v36;
  v37 = (v9 + v17[14]);
  v82 = 0;
  sub_267B17550();
  v38 = v86;
  *v37 = v85;
  v37[1] = v38;
  v39 = v17[15];
  *(v9 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v39) = sub_267B171A0();
  sub_267B16C00();
  v40 = v9 + *(v71 + 44);
  *v40 = v39;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267B19C10;
  LOBYTE(v28) = sub_267B17180();
  *(inited + 32) = v28;
  v46 = sub_267B171C0();
  *(inited + 33) = v46;
  v47 = sub_267B171B0();
  sub_267B171B0();
  if (sub_267B171B0() != v28)
  {
    v47 = sub_267B171B0();
  }

  sub_267B171B0();
  if (sub_267B171B0() != v46)
  {
    v47 = sub_267B171B0();
  }

  v48 = v72;
  sub_267AEBA3C(v9, v72, &qword_280210DF8, &qword_267B19D10);
  v49 = &v48[*(v73 + 36)];
  *v49 = v47;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 1;
  v50 = v74;
  sub_267AEBA3C(v48, v74, &qword_280210E00, &qword_267B19D18);
  v51 = sub_267AE8D90();
  v52 = MEMORY[0x277CE11C8];
  v53 = MEMORY[0x277D63A60];
  v87 = MEMORY[0x277CE11C8];
  v88 = MEMORY[0x277D63A60];
  v85 = v51;
  v54 = sub_267AE92C4();
  v83 = v52;
  v84 = v53;
  v82 = v54;
  v55 = v77;
  sub_267B17720();
  v56 = v75;
  sub_267AEBA8C(v50, v75, &qword_280210E00, &qword_267B19D18);
  v58 = v80;
  v57 = v81;
  v59 = *(v80 + 16);
  v60 = v78;
  v59(v78, v55, v81);
  v61 = v79;
  sub_267AEBA8C(v56, v79, &qword_280210E00, &qword_267B19D18);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E20, &qword_267B19D60);
  v59((v61 + *(v62 + 48)), v60, v57);
  v63 = *(v58 + 8);
  v63(v55, v57);
  sub_267AEC1D4(v50, &qword_280210E00, &qword_267B19D18);
  v63(v60, v57);
  return sub_267AEC1D4(v56, &qword_280210E00, &qword_267B19D18);
}

uint64_t sub_267AE8D90()
{
  v1 = v0;
  v2 = sub_267B176E0();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageDetailView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v10 = *(v9 - 8);
  v34 = v9;
  v35 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  MEMORY[0x28223BE20](v36);
  v14 = &v31 - v13;
  v15 = (v1 + *(v6 + 44));
  v16 = *v15;
  v17 = v15[1];
  sub_267AEB3B4(v1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_267AEB418(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v40[0] = v16;
  v40[1] = v17;
  v37 = v40;
  v38 = 0xD000000000000017;
  v39 = 0x8000000267B23630;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78, MEMORY[0x277CDEFF0]);
  sub_267B175A0();

  v21 = v32;
  v20 = v33;
  (*(v32 + 104))(v4, *MEMORY[0x277D63A88], v33);
  v40[0] = sub_267B17490();
  sub_267B16D30();
  v22 = [objc_opt_self() secondarySystemBackgroundColor];
  v40[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68, MEMORY[0x277CDF028]);
  v23 = v34;
  sub_267B17360();

  (*(v21 + 8))(v4, v20);
  (*(v35 + 8))(v12, v23);
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v26 = *MEMORY[0x277CE1050];
  v27 = sub_267B17530();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  v28 = &v14[*(v36 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
  sub_267B16DC0();
  *v28 = swift_getKeyPath();
  sub_267AEBBA4();
  v29 = sub_267B17350();
  sub_267AEBD84(v14);
  return v29;
}

uint64_t sub_267AE92C4()
{
  v1 = v0;
  v30 = sub_267B176E0();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageDetailView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  v15 = (v1 + *(v6 + 48));
  v16 = *v15;
  v17 = v15[1];
  sub_267AEB3B4(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_267AEB418(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v36[0] = v16;
  v36[1] = v17;
  v34 = v36;
  strcpy(v35, "envelope.open");
  v35[7] = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78, MEMORY[0x277CDEFF0]);
  sub_267B175A0();

  v20 = v30;
  (*(v2 + 104))(v4, *MEMORY[0x277D63A88], v30);
  v36[0] = sub_267B17490();
  sub_267B16D30();
  v21 = [objc_opt_self() secondarySystemBackgroundColor];
  v36[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68, MEMORY[0x277CDF028]);
  v22 = v31;
  sub_267B17360();

  (*(v2 + 8))(v4, v20);
  (*(v32 + 8))(v12, v22);
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_267B17530();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v27 = &v14[*(v33 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
  sub_267B16DC0();
  *v27 = swift_getKeyPath();
  sub_267AEBBA4();
  v28 = sub_267B17350();
  sub_267AEBD84(v14);
  return v28;
}

uint64_t sub_267AE9800@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v48 = sub_267B17730();
  v46 = *(v48 - 8);
  v1 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - v3;
  v43 = sub_267B17790();
  v45 = *(v43 - 8);
  v5 = MEMORY[0x28223BE20](v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v7;
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = sub_267B17870();
  v42 = *(v10 - 8);
  v11 = v42;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v41 = &v35 - v15;
  sub_267AE9BCC(&v35 - v15);
  v39 = v9;
  sub_267AEA37C(v9);
  v37 = v4;
  sub_267AEA740();
  v17 = *(v11 + 16);
  v40 = v14;
  v18 = v16;
  v19 = v10;
  v38 = v10;
  v17(v14, v18, v10);
  v35 = *(v45 + 16);
  v20 = v43;
  v35(v7, v9, v43);
  v21 = v47;
  v22 = *(v46 + 16);
  v22(v47, v4, v48);
  v23 = v44;
  v17(v44, v14, v19);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E88, &qword_267B19DF8);
  v25 = v36;
  v35(&v23[*(v24 + 48)], v36, v20);
  v26 = &v23[*(v24 + 64)];
  v27 = v48;
  v22(v26, v21, v48);
  v28 = *(v46 + 8);
  v29 = v27;
  v28(v37, v27);
  v30 = *(v45 + 8);
  v31 = v20;
  v30(v39, v20);
  v32 = *(v42 + 8);
  v33 = v38;
  v32(v41, v38);
  v28(v47, v29);
  v30(v25, v31);
  return (v32)(v40, v33);
}

uint64_t sub_267AE9BCC@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = sub_267B165C0();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_267B165F0();
  MEMORY[0x28223BE20](v4 - 8);
  v75[3] = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_267B176F0();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EB8, &qword_267B19E18);
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = v75 - v7;
  v8 = sub_267B17000();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = v1 + *(type metadata accessor for MessageDetailView(0) + 24);
  v10 = *(v9 + 24);
  v86 = v9;
  if (v10)
  {
    v11 = *(v9 + 16);
    v12 = v10;
  }

  else
  {
    v11 = *(v9 + *(type metadata accessor for WidgetMessage(0) + 124));
  }

  v113 = v11;
  v114 = v12;
  v75[1] = sub_267ADCFA4();

  v13 = sub_267B17340();
  v15 = v14;
  v17 = v16;
  sub_267B17240();
  v18 = sub_267B172F0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_267AEC140(v13, v15, v17 & 1);

  v115 = MEMORY[0x277CE0BD8];
  v116 = MEMORY[0x277D638E0];
  v25 = swift_allocObject();
  v113 = v25;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22 & 1;
  *(v25 + 40) = v24;
  sub_267B16FF0();
  sub_267B16FE0();
  v75[2] = type metadata accessor for WidgetMessage(0);
  sub_267B16FD0();
  sub_267B16FE0();
  sub_267B17020();
  v26 = sub_267B17330();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = MEMORY[0x277CE0BD8];
  v111 = MEMORY[0x277CE0BD8];
  v34 = MEMORY[0x277D638E0];
  v112 = MEMORY[0x277D638E0];
  v35 = swift_allocObject();
  v110 = v35;
  *(v35 + 16) = v26;
  *(v35 + 24) = v28;
  *(v35 + 32) = v30 & 1;
  *(v35 + 40) = v32;
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  sub_267B17010();
  v36 = sub_267B17330();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v105 = v33;
  v106 = v34;
  v43 = swift_allocObject();
  v104 = v43;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40 & 1;
  *(v43 + 40) = v42;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v91 = sub_267B12470();
  v92 = v44;
  v45 = sub_267B17340();
  v47 = v46;
  v49 = v48;
  v91 = sub_267B174A0();
  v50 = sub_267B17310();
  v52 = v51;
  LOBYTE(v13) = v53;
  sub_267AEC140(v45, v47, v49 & 1);

  sub_267B17290();
  v54 = sub_267B17320();
  v56 = v55;
  LOBYTE(v42) = v57;

  sub_267AEC140(v50, v52, v13 & 1);

  sub_267B17230();
  v58 = sub_267B172F0();
  v60 = v59;
  LOBYTE(v15) = v61;
  v63 = v62;
  sub_267AEC140(v54, v56, v42 & 1);

  v93 = MEMORY[0x277CE0BD8];
  v94 = MEMORY[0x277D638E0];
  v64 = swift_allocObject();
  v91 = v64;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v15 & 1;
  *(v64 + 40) = v63;
  sub_267B165E0();
  v65 = v77;
  sub_267B17700();
  v67 = v82;
  v66 = v83;
  v68 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277D62B38], v84);
  v69 = sub_267AEC278(&qword_280210EC0, MEMORY[0x277D63B20], MEMORY[0x277D63B08]);
  v70 = v76;
  v71 = v81;
  sub_267B17380();
  (*(v66 + 8))(v67, v68);
  (*(v79 + 8))(v65, v71);
  v87 = v71;
  v88 = v69;
  swift_getOpaqueTypeConformance2();
  v72 = v80;
  v73 = sub_267B17350();
  (*(v78 + 8))(v70, v72);
  v89 = MEMORY[0x277CE11C8];
  v90 = MEMORY[0x277D63A60];
  v87 = v73;
  return sub_267B17860();
}

uint64_t sub_267AEA37C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E98, &qword_267B19E08);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - v3;
  v4 = *(type metadata accessor for MessageDetailView(0) + 24);
  v36 = v1;
  v5 = v1 + v4;
  v6 = *(v1 + v4 + 40);
  if (v6)
  {
    v7 = *(v5 + 32);
    v8 = v6;
  }

  else
  {
    v7 = *(v5 + *(type metadata accessor for WidgetMessage(0) + 128));
  }

  __dst[0] = v7;
  __dst[1] = v8;
  sub_267ADCFA4();

  v9 = sub_267B17340();
  v11 = v10;
  v13 = v12;
  sub_267B17260();
  v14 = sub_267B17320();
  v16 = v15;
  v18 = v17;

  sub_267AEC140(v9, v11, v13 & 1);

  sub_267B17220();
  v19 = sub_267B172F0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_267AEC140(v14, v16, v18 & 1);

  v26 = sub_267B17190();
  v68 = v23 & 1;
  v67 = 1;
  v65[0] = v19;
  v65[1] = v21;
  LOBYTE(v65[2]) = v23 & 1;
  v65[3] = v25;
  LOBYTE(v65[4]) = v26;
  memset(&v65[5], 0, 32);
  LOBYTE(v65[9]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EA0, &qword_267B19E10);
  sub_267AEC150();
  v27 = sub_267B17350();
  memcpy(__dst, v65, 0x49uLL);
  v28 = sub_267AEC1D4(__dst, &qword_280210EA0, &qword_267B19E10);
  v29 = MEMORY[0x277CE11C8];
  v30 = MEMORY[0x277D63A60];
  v65[3] = MEMORY[0x277CE11C8];
  v65[4] = MEMORY[0x277D63A60];
  v65[0] = v27;
  MEMORY[0x28223BE20](v28);
  sub_267B17160();
  v31 = v37;
  sub_267B16C60();
  sub_267ADCE94(&qword_280210EB0, &qword_280210E98, &qword_267B19E08, MEMORY[0x277CDD6E0]);
  v32 = v39;
  v33 = sub_267B17350();
  (*(v38 + 8))(v31, v32);
  v63 = v29;
  v64 = v30;
  v61 = 0;
  v62 = v33;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  return sub_267B17780();
}

uint64_t sub_267AEA740()
{
  sub_267AE8D90();
  sub_267AEA8C4();
  return sub_267B17720();
}

uint64_t sub_267AEA7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + *(type metadata accessor for MessageDetailView(0) + 24) + 72))
  {
    type metadata accessor for WidgetMessage(0);
  }

  sub_267ADCFA4();

  v3 = sub_267B17340();
  v5 = v4;
  v7 = v6;
  sub_267B17290();
  v8 = sub_267B17320();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_267AEC140(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_267AEA8C4()
{
  v1 = v0;
  v30 = sub_267B176E0();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MessageDetailView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  v15 = (v1 + *(v6 + 40));
  v16 = *v15;
  v17 = v15[1];
  sub_267AEB3B4(v1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_267AEB418(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v37[0] = v16;
  v37[1] = v17;
  v34 = v37;
  v35 = 0x6873617274;
  v36 = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78, MEMORY[0x277CDEFF0]);
  sub_267B175A0();

  v20 = v30;
  (*(v2 + 104))(v4, *MEMORY[0x277D63A88], v30);
  v37[0] = sub_267B17490();
  sub_267B16D30();
  v21 = [objc_opt_self() secondarySystemBackgroundColor];
  v37[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68, MEMORY[0x277CDF028]);
  v22 = v31;
  sub_267B17360();

  (*(v2 + 8))(v4, v20);
  (*(v32 + 8))(v12, v22);
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_267B17530();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  v27 = &v14[*(v33 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
  sub_267B16DC0();
  *v27 = swift_getKeyPath();
  sub_267AEBBA4();
  v28 = sub_267B17350();
  sub_267AEBD84(v14);
  return v28;
}

uint64_t sub_267AEADF0(id *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  sub_267B17570();

  if (*a1)
  {
    v2 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AEAF58(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AEB04C(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

id sub_267AEB144()
{
  result = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  qword_280210D50 = result;
  return result;
}

void sub_267AEB178()
{
  if (qword_280210860 != -1)
  {
    swift_once();
  }

  v0 = qword_280210D50;
  v1 = [v0 messageRepository];

  qword_280210D58 = v1;
}

uint64_t sub_267AEB1F8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t String.mailMessageID.getter(uint64_t a1, uint64_t a2)
{
  sub_267B164E0();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  sub_267B164D0();
  sub_267ADCFA4();
  v8 = sub_267B17B10();
  (*(v6 + 8))(v3, v2);
  if (*(v8 + 16))
  {
    a1 = *(v8 + 32);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_267AEB36C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_267AEB3B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AEB418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AEB4AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_267AEB560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WidgetMessage(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a3[12];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AEB650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for WidgetMessage(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a4[12];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_267AEB728(uint64_t a1)
{
  sub_267AE0D9C(319);
  if (v1 <= 0x3F)
  {
    sub_267AEB810();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WidgetMessage(319);
      if (v3 <= 0x3F)
      {
        sub_267AEB860();
        if (v4 <= 0x3F)
        {
          sub_267AEB8A4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267AEB810()
{
  if (!qword_280210DD0)
  {
    v0 = sub_267B17590();
    if (!v1)
    {
      atomic_store(v0, &qword_280210DD0);
    }
  }
}

unint64_t sub_267AEB860()
{
  result = qword_280210DD8;
  if (!qword_280210DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280210DD8);
  }

  return result;
}

void sub_267AEB8A4(uint64_t a1)
{
  if (!qword_280210DE0)
  {
    sub_267B16C80();
    v1 = sub_267B16C90();
    if (!v2)
    {
      atomic_store(v1, &qword_280210DE0);
    }
  }
}

unint64_t sub_267AEB900()
{
  result = qword_280210DE8;
  if (!qword_280210DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210DF0, &qword_267B19D08);
    v1 = MEMORY[0x277CE1198];
    sub_267ADCE94(&qword_280210D90, &qword_280210D70, &qword_267B19C68, MEMORY[0x277CE1198]);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210DE8);
  }

  return result;
}

unint64_t sub_267AEB9E0()
{
  result = qword_280210E08;
  if (!qword_280210E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E08);
  }

  return result;
}

uint64_t sub_267AEBA3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_267AEBA8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_267AEBAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267ADCFA4();

  return sub_267B17540();
}

unint64_t sub_267AEBBA4()
{
  result = qword_280210E68;
  if (!qword_280210E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E30, &qword_267B19D70);
    sub_267AEBC5C();
    sub_267ADCE94(&qword_280210E80, &qword_280210E60, &qword_267B19DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E68);
  }

  return result;
}

unint64_t sub_267AEBC5C()
{
  result = qword_280210E70;
  if (!qword_280210E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E50, &qword_267B19D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E28, &qword_267B19D68);
    sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_267ADCE94(&qword_280210E78, &qword_280210E58, &qword_267B19D88, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E70);
  }

  return result;
}

uint64_t sub_267AEBD84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for MessageDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = type metadata accessor for WidgetMessage(0);
  v8 = *(v7 + 36);
  sub_267B16530();
  OUTLINED_FUNCTION_0();
  (*(v9 + 8))(v6 + v8);
  v10 = *(v7 + 56);
  v11 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(v6 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_1();

  v12 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B16C80();
    OUTLINED_FUNCTION_0();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AEC0CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_267AEC140(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_267AEC150()
{
  result = qword_280210EA8;
  if (!qword_280210EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210EA0, &qword_267B19E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210EA8);
  }

  return result;
}

uint64_t sub_267AEC1D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267AEC234()
{
  sub_267AEC140(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AEC278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_267AEB3B4(v0, v1, type metadata accessor for MessageDetailView);
}

uint64_t OUTLINED_FUNCTION_4_1()
{
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_267AEC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snapshot(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AEC4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snapshot(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for MessageListHeaderView(uint64_t a1)
{
  result = qword_280210ED0;
  if (!qword_280210ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267AEC5C4(uint64_t a1)
{
  type metadata accessor for Snapshot(319);
  if (v1 <= 0x3F)
  {
    sub_267AEB8A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_267AEC66C()
{
  v0 = sub_267B16C80();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  type metadata accessor for MessageListHeaderView(0);
  sub_267B06A50(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3C0], v0);
  v9 = sub_267B16C70();
  v10 = *(v2 + 8);
  v10(v6, v0);
  v10(v8, v0);
  if (v9)
  {
    return sub_267B174D0();
  }

  else
  {
    return sub_267B174B0();
  }
}

id sub_267AEC7B4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setNumberStyle_];
  result = [v0 setUsesSignificantDigits_];
  qword_280210EC8 = v0;
  return result;
}

uint64_t sub_267AEC818@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EE0, &qword_267B19E98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EE8, &qword_267B19EA0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v5);
  v46 = &v39 - v6;
  v7 = type metadata accessor for MessageListHeaderView(0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF0, &qword_267B19EA8);
  OUTLINED_FUNCTION_0_0();
  v43 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = sub_267B16500();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v24 = type metadata accessor for WidgetMailbox(0);
  sub_267AED784(v1 + *(v24 + 24), v14, &qword_280210EF8, &qword_267B19EB0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_267AEC1D4(v14, &qword_280210EF8, &qword_267B19EB0);
    *v4 = sub_267B16FA0();
    *(v4 + 1) = 0x4018000000000000;
    v4[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F00, &unk_267B19EB8);
    sub_267AECDB8(v1, &v4[*(v25 + 44)]);
    sub_267AED784(v4, v46, &qword_280210EE0, &qword_267B19E98);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_4(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8);
    OUTLINED_FUNCTION_1_5();
    sub_267ADCE94(v26, &qword_280210EE0, &qword_267B19E98, v27);
    sub_267B17080();
    return sub_267AEC1D4(v4, &qword_280210EE0, &qword_267B19E98);
  }

  else
  {
    (*(v17 + 32))(v23, v14, v15);
    (*(v17 + 16))(v21, v23, v15);
    v29 = v41;
    sub_267AED384(v1, v41);
    v30 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v31 = swift_allocObject();
    sub_267AED5D8(v29, v31 + v30);
    OUTLINED_FUNCTION_1_5();
    sub_267ADCE94(v32, v33, v34, v35);
    v36 = v42;
    sub_267B172E0();

    v37 = v43;
    v38 = v45;
    (*(v43 + 16))(v46, v36, v45);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_4(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8);
    sub_267B17080();
    (*(v37 + 8))(v36, v38);
    return (*(v17 + 8))(v23, v15);
  }
}

uint64_t sub_267AECD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_267B16FA0();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F00, &unk_267B19EB8);
  return sub_267AECDB8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_267AECDB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F18, &qword_267B19EC8);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F20, &qword_267B19ED0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v69 = sub_267B12348();
  v70 = v12;
  sub_267ADCFA4();
  v64 = sub_267B17340();
  v63 = v13;
  v15 = v14;
  v65 = v16;
  KeyPath = swift_getKeyPath();
  sub_267B17250();
  sub_267B17220();
  v60 = sub_267B17270();

  v17 = swift_getKeyPath();
  v18 = v15 & 1;
  LOBYTE(v69) = v18;
  LOBYTE(__src[0]) = 0;
  v59 = sub_267AEC66C();
  v19 = a1 + *(type metadata accessor for Snapshot(0) + 20);
  v20 = 1;
  v21 = *v19 >= 2uLL;
  v67 = v18;
  v66 = v17;
  if (v21 && (*(v19 + 16) & 1) == 0 && *(v19 + 8) >= 1)
  {
    if (qword_280210870 != -1)
    {
      swift_once();
    }

    v22 = qword_280210EC8;
    v23 = sub_267B17A60();
    v24 = [v22 stringForObjectValue_];

    if (v24)
    {
      v25 = sub_267B17980();
      v27 = v26;

      v69 = v25;
      v70 = v27;
      v28 = sub_267B17340();
      v30 = v29;
      v32 = v31;
      type metadata accessor for MessageListHeaderView(0);
      v55 = sub_267B17320();
      v54 = v33;
      v35 = v34;
      sub_267AEC140(v28, v30, v32 & 1);

      sub_267B174F0();
      v36 = v55;
      v37 = v54;
      v57 = sub_267B17300();
      v56 = v38;
      v40 = v39;
      v58 = v41;

      sub_267AEC140(v36, v37, v35 & 1);

      v42 = &v5[*(v3 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F38, &qword_267B19F48);
      sub_267B16DD0();
      *v42 = swift_getKeyPath();
      v43 = v56;
      *v5 = v57;
      *(v5 + 1) = v43;
      v5[16] = v40 & 1;
      *(v5 + 3) = v58;
      sub_267AED80C(v5, v11);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v17 = v66;
    LOBYTE(v18) = v67;
  }

  __swift_storeEnumTagSinglePayload(v11, v20, 1, v3);
  sub_267AED784(v11, v9, &qword_280210F20, &qword_267B19ED0);
  v44 = v64;
  __src[0] = v64;
  v58 = v11;
  v45 = v63;
  __src[1] = v63;
  LOBYTE(__src[2]) = v18;
  *(&__src[2] + 1) = *v83;
  HIDWORD(__src[2]) = *&v83[3];
  v46 = v65;
  v47 = KeyPath;
  __src[3] = v65;
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v82;
  HIDWORD(__src[6]) = *&v82[3];
  v48 = v60;
  __src[7] = v17;
  __src[8] = v60;
  v49 = v59;
  __src[9] = v59;
  __src[10] = 0x3FE999999999999ALL;
  v50 = v61;
  memcpy(v61, __src, 0x58uLL);
  v50[11] = 0;
  *(v50 + 96) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F28, &qword_267B19F38);
  sub_267AED784(v9, v50 + *(v51 + 64), &qword_280210F20, &qword_267B19ED0);
  sub_267AED784(__src, &v69, &qword_280210F30, &qword_267B19F40);
  sub_267AEC1D4(v58, &qword_280210F20, &qword_267B19ED0);
  sub_267AEC1D4(v9, &qword_280210F20, &qword_267B19ED0);
  v69 = v44;
  v70 = v45;
  v71 = v67;
  *v72 = *v83;
  *&v72[3] = *&v83[3];
  v73 = v46;
  v74 = v47;
  v75 = 1;
  v76 = 0;
  *v77 = *v82;
  *&v77[3] = *&v82[3];
  v78 = v66;
  v79 = v48;
  v80 = v49;
  v81 = 0x3FE999999999999ALL;
  return sub_267AEC1D4(&v69, &qword_280210F30, &qword_267B19F40);
}

uint64_t sub_267AED384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AED3E8()
{
  v1 = type metadata accessor for MessageListHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  if (*(v0 + v3 + 16) >= 6uLL)
  {
  }

  v6 = *(type metadata accessor for WidgetMailbox(0) + 24);
  v7 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  if (*(v5 + *(type metadata accessor for Snapshot(0) + 20)) >= 2uLL)
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B16C80();
    OUTLINED_FUNCTION_0();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AED5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AED63C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageListHeaderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267AECD60(v4, a1);
}

uint64_t sub_267AED6AC(uint64_t a1)
{
  v2 = sub_267B16DE0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16EC0();
}

uint64_t sub_267AED784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AED80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F18, &qword_267B19EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267AED880()
{
  result = qword_280210F40;
  if (!qword_280210F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210F48, &unk_267B19F80);
    sub_267ADCE94(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8, MEMORY[0x277CDE598]);
    sub_267ADCE94(&qword_280210F10, &qword_280210EE0, &qword_267B19E98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210F40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDE598];

  return sub_267ADCE94(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_4_2()
{
}

uint64_t sub_267AED9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_267B16680();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_267AEDA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for WidgetMessage(0);
  v6 = v5;
  if (v4)
  {
    sub_267AF3E24(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for WidgetMessage);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_267AEDB18()
{
  v2[3] = &type metadata for Features;
  v2[4] = sub_267AE7B88();
  LOBYTE(v2[0]) = 2;
  v0 = sub_267B16630();
  result = __swift_destroy_boxed_opaque_existential_1(v2);
  byte_280210F50 = v0 & 1;
  return result;
}

void MessageListView.init(mode:messages:numberOfSummaryLines:searchTerm:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v79 = a4;
  v80 = a5;
  v70 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F58, &qword_267B19F90);
  v10 = OUTLINED_FUNCTION_16_0(v9);
  MEMORY[0x28223BE20](v10);
  v81 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v78 = v13;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v77 = v15;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  v76 = v17;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v75 = v19;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v74 = v21;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_1();
  v73 = v23;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v72 = v25;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  v71 = v27;
  OUTLINED_FUNCTION_5_1();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v70 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v70 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v70 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v70 - v41;
  sub_267B17910();
  sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
  *a6 = sub_267B16E00();
  a6[1] = v43;
  v44 = type metadata accessor for MessageListView(0);
  _s10SiriMailUI15MessageListViewV20_interactionDelegate33_BAF068263784C23372CA04067282950407SnippetC0011InteractionH0Vvpfi_0();
  v45 = v44[24];
  *(a6 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  *(a6 + v44[6]) = a1;
  *(a6 + v44[7]) = a2;
  sub_267AEDA60(a2, v42);
  v46 = type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_0_2(v42);
  if (v47)
  {

    sub_267AF3430(v42, &qword_280210F58);
    v48 = 0;
  }

  else
  {
    v48 = v42[v46[18]];

    sub_267AEB1F8(v42);
  }

  *(a6 + v44[8]) = v48;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v40);
  if (v47)
  {
    sub_267AF3430(v40, &qword_280210F58);
    v49 = 0;
  }

  else
  {
    v49 = v40[v46[15]];
    sub_267AEB1F8(v40);
  }

  v50 = v72;
  *(a6 + v44[9]) = v49;
  *(a6 + v44[10]) = v70;
  sub_267AEDA60(a2, v37);
  OUTLINED_FUNCTION_0_2(v37);
  if (v47)
  {
    sub_267AF3430(v37, &qword_280210F58);
    v53 = 0;
    v52 = 0xE000000000000000;
  }

  else
  {
    v51 = &v37[v46[22]];
    v53 = *v51;
    v52 = *(v51 + 1);

    sub_267AEB1F8(v37);
  }

  v54 = (a6 + v44[11]);
  *v54 = v53;
  v54[1] = v52;
  sub_267AEDA60(a2, v34);
  OUTLINED_FUNCTION_0_2(v34);
  if (v47)
  {
    sub_267AF3430(v34, &qword_280210F58);
    v57 = 0;
    v56 = 0xE000000000000000;
  }

  else
  {
    v55 = &v34[v46[23]];
    v57 = *v55;
    v56 = *(v55 + 1);

    sub_267AEB1F8(v34);
  }

  v58 = v78;
  v59 = (a6 + v44[12]);
  *v59 = v57;
  v59[1] = v56;
  sub_267AEDA60(a2, v31);
  OUTLINED_FUNCTION_0_2(v31);
  if (v47)
  {
    sub_267AF3430(v31, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v31);
  }

  OUTLINED_FUNCTION_3_1(v44[13]);
  v60 = v71;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v60);
  v61 = v76;
  if (v47)
  {
    sub_267AF3430(v60, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    sub_267AEB1F8(v60);
  }

  OUTLINED_FUNCTION_3_1(v44[14]);
  sub_267AEDA60(a2, v50);
  OUTLINED_FUNCTION_0_2(v50);
  if (v47)
  {
    sub_267AF3430(v50, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v50);
  }

  OUTLINED_FUNCTION_3_1(v44[15]);
  v62 = v73;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v62);
  if (v47)
  {
    sub_267AF3430(v62, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    sub_267AEB1F8(v62);
  }

  v63 = v74;
  OUTLINED_FUNCTION_3_1(v44[16]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v63);
  if (v47)
  {
    sub_267AF3430(v63, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    sub_267AEB1F8(v63);
  }

  OUTLINED_FUNCTION_3_1(v44[17]);
  v64 = v75;
  sub_267AEDA60(a2, v75);
  OUTLINED_FUNCTION_0_2(v64);
  if (v47)
  {
    sub_267AF3430(v64, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v64);
  }

  v65 = v77;
  OUTLINED_FUNCTION_3_1(v44[18]);
  sub_267AEDA60(a2, v61);
  OUTLINED_FUNCTION_0_2(v61);
  if (v47)
  {
    sub_267AF3430(v61, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v61);
  }

  OUTLINED_FUNCTION_3_1(v44[19]);
  sub_267AEDA60(a2, v65);
  OUTLINED_FUNCTION_0_2(v65);
  if (v47)
  {
    sub_267AF3430(v65, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v65);
  }

  OUTLINED_FUNCTION_3_1(v44[20]);
  sub_267AEDA60(a2, v58);
  OUTLINED_FUNCTION_0_2(v58);
  if (v47)
  {
    sub_267AF3430(v58, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    sub_267AEB1F8(v58);
  }

  OUTLINED_FUNCTION_3_1(v44[21]);
  v66 = v81;
  sub_267AEDA60(a2, v81);

  OUTLINED_FUNCTION_0_2(v66);
  if (v47)
  {
    sub_267AF3430(v81, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v67 = v81;
    OUTLINED_FUNCTION_11_0();
    sub_267AEB1F8(v67);
  }

  OUTLINED_FUNCTION_3_1(v44[22]);
  v68 = (a6 + v44[23]);
  v69 = v80;
  *v68 = v79;
  v68[1] = v69;
}

uint64_t type metadata accessor for MessageListView(uint64_t a1)
{
  result = qword_280210F68;
  if (!qword_280210F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageListView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_267B17050();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F60, &qword_267B19FD0);
  return sub_267AEE3D8(v2, a2 + *(v4 + 44));
}

uint64_t sub_267AEE3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v3 = sub_267B165F0();
  MEMORY[0x28223BE20](v3 - 8);
  v182 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_267B17770();
  v184 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v183 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F98, &qword_267B1A050);
  v185 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v188 = &v167 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FA0, &qword_267B1A058);
  MEMORY[0x28223BE20](v207);
  v210 = (&v167 - v7);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FA8, &qword_267B1A060);
  MEMORY[0x28223BE20](v190);
  v191 = &v167 - v8;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FB0, &qword_267B1A068);
  MEMORY[0x28223BE20](v209);
  v193 = &v167 - v9;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FB8, &qword_267B1A070);
  MEMORY[0x28223BE20](v176);
  v180 = &v167 - v10;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FC0, &qword_267B1A078);
  v11 = MEMORY[0x28223BE20](v187);
  v179 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v178 = &v167 - v13;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FC8, &qword_267B1A080);
  MEMORY[0x28223BE20](v175);
  v177 = &v167 - v14;
  v173 = sub_267B176E0();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD0, &qword_267B1A088);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = &v167 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD8, &qword_267B1A090);
  MEMORY[0x28223BE20](v174);
  v181 = &v167 - v17;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FE0, &qword_267B1A098);
  MEMORY[0x28223BE20](v189);
  v186 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FE8, &qword_267B1A0A0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v208 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v219 = &v167 - v22;
  v23 = type metadata accessor for MessageListView(0);
  v201 = *(v23 - 1);
  MEMORY[0x28223BE20](v23);
  v213 = v24;
  v202 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF0, &qword_267B1A0A8);
  v205 = *(v206 - 8);
  v25 = MEMORY[0x28223BE20](v206);
  v204 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v218 = &v167 - v27;
  *&v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0) - 8;
  MEMORY[0x28223BE20](v215);
  v196 = &v167 - v28;
  *&v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211000, &qword_267B1A0B8);
  MEMORY[0x28223BE20](v197);
  v200 = &v167 - v29;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211008, &qword_267B1A0C0);
  v30 = MEMORY[0x28223BE20](v199);
  v203 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v167 - v33;
  MEMORY[0x28223BE20](v32);
  v220 = &v167 - v34;
  v216 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211010, &qword_267B1A0C8) - 8);
  v35 = MEMORY[0x28223BE20](v216);
  v217 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = (&v167 - v37);
  v39 = type metadata accessor for WidgetMailbox(0);
  v40 = v39[6];
  v41 = sub_267B16500();
  __swift_storeEnumTagSinglePayload(v38 + v40, 1, 1, v41);
  v42 = (a1 + v23[14]);
  v43 = *v42;
  v44 = v42[1];
  v45 = (a1 + v23[15]);
  v46 = *v45;
  v47 = v45[1];
  v48 = (a1 + v23[16]);
  v49 = *v48;
  v50 = v48[1];
  v51 = (a1 + v23[17]);
  v52 = *v51;
  v53 = v51[1];
  v54 = (a1 + v23[18]);
  v55 = *v54;
  v56 = v54[1];
  v57 = (a1 + v23[19]);
  v58 = *v57;
  v59 = v57[1];
  *v38 = 0;
  v38[1] = 0;
  v38[2] = 1;
  v60 = (v38 + v39[7]);
  *v60 = v43;
  v60[1] = v44;
  v61 = (v38 + v39[8]);
  *v61 = v46;
  v61[1] = v47;
  v62 = (v38 + v39[9]);
  *v62 = v49;
  v62[1] = v50;
  v63 = (v38 + v39[10]);
  *v63 = v52;
  v63[1] = v53;
  v64 = (v38 + v39[11]);
  *v64 = v55;
  v64[1] = v56;
  v65 = (v38 + v39[12]);
  *v65 = v58;
  v65[1] = v59;
  v66 = *(a1 + v23[7]);
  v212 = v23;
  v67 = v23[9];
  v214 = a1;
  if (*(a1 + v67))
  {
    v68 = 257;
  }

  else
  {
    v68 = 1;
  }

  v69 = v38 + *(type metadata accessor for Snapshot(0) + 20);
  *v69 = v66;
  *(v69 + 1) = 0;
  *(v69 + 8) = v68;
  v70 = type metadata accessor for MessageListHeaderView(0);
  v71 = *(v70 + 20);

  v72 = v196;

  *(v38 + v71) = sub_267B172B0();
  v73 = *(v70 + 24);
  *(v38 + v73) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v73) = sub_267B171A0();
  v74 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211018, &qword_267B1A0D0) + 36);
  *v74 = v73;
  *(v74 + 8) = 0u;
  *(v74 + 24) = 0u;
  v74[40] = 1;
  LOBYTE(v73) = sub_267B17180();
  v75 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211020, &qword_267B1A0D8) + 36);
  *v75 = v73;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  v75[40] = 1;
  sub_267B17680();
  sub_267B16D20();
  v76 = *(v216 + 11);
  v216 = v38;
  v77 = (v38 + v76);
  v78 = v230;
  *v77 = v229;
  v77[1] = v78;
  v77[2] = v231;
  sub_267B17610();
  v79 = sub_267B171A0();
  v80 = v72 + *(v215 + 44);
  *v80 = v79;
  *(v80 + 8) = 0u;
  v215 = 0u;
  *(v80 + 24) = 0u;
  *(v80 + 40) = 1;
  v81 = sub_267B17180();
  if (qword_280210878 != -1)
  {
    swift_once();
  }

  v82 = byte_280210F50;
  v83 = 0uLL;
  if (byte_280210F50 == 1)
  {
    sub_267B16C00();
    *(&v83 + 1) = v84;
    *(&v86 + 1) = v85;
    v215 = v86;
  }

  v195 = v83;
  v87 = v200;
  sub_267AF3EE4(v72, v200, &qword_280210FF8, &qword_267B1A0B0);
  v88 = v87 + *(v197 + 36);
  *v88 = v81;
  *(v88 + 24) = v195;
  *(v88 + 8) = v215;
  *(v88 + 40) = v82 ^ 1;
  v215 = 0u;
  v89 = sub_267B17190();
  v90 = 0uLL;
  v91 = v214;
  v92 = v202;
  if (((v82 ^ 1) & 1) == 0)
  {
    sub_267B16C00();
    *(&v90 + 1) = v93;
    *(&v95 + 1) = v94;
    v215 = v95;
  }

  v197 = v90;
  v96 = v87;
  v97 = v198;
  sub_267AF3EE4(v96, v198, &qword_280211000, &qword_267B1A0B8);
  v98 = v97 + *(v199 + 36);
  *v98 = v89;
  *(v98 + 24) = v197;
  *(v98 + 8) = v215;
  *(v98 + 40) = v82 ^ 1;
  sub_267AF3EE4(v97, v220, &qword_280211008, &qword_267B1A0C0);
  sub_267AF3E24(v91, v92, type metadata accessor for MessageListView);
  v99 = (*(v201 + 80) + 16) & ~*(v201 + 80);
  v100 = swift_allocObject();
  sub_267AF26D4(v92, v100 + v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211028, &qword_267B1A0E0);
  sub_267AF27A4();
  sub_267B17710();
  v101 = *(v91 + v212[6]);
  if (v101 == 1)
  {
    v131 = (v91 + v212[13]);
    v133 = *v131;
    v132 = v131[1];
    v227 = MEMORY[0x277D837D0];
    v228 = MEMORY[0x277D63F80];
    v225 = v133;
    v226 = v132;
    v224 = 0;
    v222 = 0u;
    v223 = 0u;

    sub_267B165D0();
    v221[3] = sub_267B176F0();
    v221[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v221);
    sub_267B17700();
    v134 = v183;
    sub_267B17760();
    sub_267AF3E24(v91, v92, type metadata accessor for MessageListView);
    v135 = swift_allocObject();
    sub_267AF26D4(v92, v135 + v99);
    v136 = sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0], MEMORY[0x277D63CC8]);
    v137 = v188;
    v138 = v192;
    sub_267B173B0();

    (*(v184 + 8))(v134, v138);
    v139 = v185;
    v140 = v137;
    v141 = v194;
    (*(v185 + 16))(v191, v140, v194);
    swift_storeEnumTagMultiPayload();
    sub_267AF2ABC();
    v225 = v138;
    v226 = v136;
    swift_getOpaqueTypeConformance2();
    v142 = v193;
    sub_267B17080();
    sub_267AF2D08(v142, v210, &qword_280210FB0, &qword_267B1A068);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070, &qword_267B1A0F8, MEMORY[0x277CE1138]);
    v143 = v219;
    sub_267B17080();
    sub_267AF3430(v142, &qword_280210FB0);
    (*(v139 + 8))(v188, v141);
  }

  else if (v101)
  {
    v144 = sub_267B16FB0();
    v145 = v210;
    *v210 = v144;
    v145[1] = 0;
    *(v145 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070, &qword_267B1A0F8, MEMORY[0x277CE1138]);
    v143 = v219;
    sub_267B17080();
  }

  else
  {
    v102 = 1;
    if (*(v91 + v212[8]) == 1)
    {
      v103 = (v91 + v212[11]);
      v104 = v103[1];
      v225 = *v103;
      v226 = v104;
      *&v215 = type metadata accessor for MessageListView;
      sub_267AF3E24(v91, v92, type metadata accessor for MessageListView);
      v105 = swift_allocObject();
      sub_267AF26D4(v92, v105 + v99);
      v201 = sub_267ADCFA4();

      v106 = v168;
      sub_267B175B0();
      v107 = v172;
      v108 = v171;
      v109 = v173;
      (*(v172 + 104))(v171, *MEMORY[0x277D63A90], v173);
      sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
      v110 = v181;
      v111 = v170;
      sub_267B17370();
      (*(v107 + 8))(v108, v109);
      (*(v169 + 8))(v106, v111);
      v112 = v92;
      v113 = (v110 + *(v174 + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
      sub_267B16DC0();
      *v113 = swift_getKeyPath();
      v114 = (v214 + v212[12]);
      v115 = v114[1];
      v225 = *v114;
      v226 = v115;
      sub_267AF3E24(v214, v112, v215);
      v116 = swift_allocObject();
      sub_267AF26D4(v112, v116 + v99);

      v117 = v177;
      sub_267B175B0();
      v118 = (v117 + *(v175 + 36));
      sub_267B16DC0();
      *v118 = swift_getKeyPath();
      sub_267AF3224();
      v119 = sub_267B17350();
      v120 = MEMORY[0x277CE11C8];
      v121 = MEMORY[0x277D63A60];
      v227 = MEMORY[0x277CE11C8];
      v228 = MEMORY[0x277D63A60];
      v225 = v119;
      sub_267AF334C();
      v122 = sub_267B17350();
      *(&v223 + 1) = v120;
      v224 = v121;
      *&v222 = v122;
      v123 = v180;
      sub_267B17720();
      v124 = sub_267B171A0();
      v125 = v123 + *(v176 + 36);
      *v125 = v124;
      *(v125 + 8) = 0u;
      *(v125 + 24) = 0u;
      *(v125 + 40) = 1;
      if (v82)
      {
        v126 = sub_267B171C0();
        v127 = sub_267B171B0();
        sub_267B171B0();
        v128 = sub_267B171B0();
        v129 = v179;
        v130 = v178;
        if (v128 != v126)
        {
          v127 = sub_267B171B0();
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267B19C10;
        v147 = sub_267B17190();
        *(inited + 32) = v147;
        v148 = sub_267B171C0();
        *(inited + 33) = v148;
        v127 = sub_267B171B0();
        sub_267B171B0();
        if (sub_267B171B0() != v147)
        {
          v127 = sub_267B171B0();
        }

        sub_267B171B0();
        if (sub_267B171B0() != v148)
        {
          v127 = sub_267B171B0();
        }

        v129 = v179;
        v130 = v178;
      }

      sub_267AF3430(v117, &qword_280210FC8);
      sub_267AF3430(v181, &qword_280210FD8);
      sub_267AF3EE4(v123, v129, &qword_280210FB8, &qword_267B1A070);
      v149 = v129 + *(v187 + 36);
      *v149 = v127;
      *(v149 + 8) = 0u;
      *(v149 + 24) = 0u;
      *(v149 + 40) = 1;
      sub_267AF3EE4(v129, v130, &qword_280210FC0, &qword_267B1A078);
      sub_267AF3EE4(v130, v186, &qword_280210FC0, &qword_267B1A078);
      v102 = 0;
    }

    v150 = v186;
    __swift_storeEnumTagSinglePayload(v186, v102, 1, v187);
    sub_267AF2D08(v150, v191, &qword_280210FE0, &qword_267B1A098);
    swift_storeEnumTagMultiPayload();
    sub_267AF2ABC();
    v151 = sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0], MEMORY[0x277D63CC8]);
    v225 = v192;
    v226 = v151;
    swift_getOpaqueTypeConformance2();
    v152 = v193;
    sub_267B17080();
    sub_267AF2D08(v152, v210, &qword_280210FB0, &qword_267B1A068);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070, &qword_267B1A0F8, MEMORY[0x277CE1138]);
    v153 = v219;
    sub_267B17080();
    v154 = v152;
    v143 = v153;
    sub_267AF3430(v154, &qword_280210FB0);
    sub_267AF3430(v150, &qword_280210FE0);
  }

  v155 = v217;
  sub_267AF2D08(v216, v217, &qword_280211010, &qword_267B1A0C8);
  v156 = v203;
  sub_267AF2D08(v220, v203, &qword_280211008, &qword_267B1A0C0);
  v157 = v205;
  v158 = *(v205 + 16);
  v159 = v204;
  v160 = v218;
  v161 = v206;
  v158(v204, v218, v206);
  v162 = v208;
  sub_267AF2D08(v143, v208, &qword_280210FE8, &qword_267B1A0A0);
  v163 = v211;
  sub_267AF2D08(v155, v211, &qword_280211010, &qword_267B1A0C8);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110B0, &unk_267B1A100);
  sub_267AF2D08(v156, v163 + v164[12], &qword_280211008, &qword_267B1A0C0);
  v158((v163 + v164[16]), v159, v161);
  sub_267AF2D08(v162, v163 + v164[20], &qword_280210FE8, &qword_267B1A0A0);
  sub_267AF3430(v219, &qword_280210FE8);
  v165 = *(v157 + 8);
  v165(v160, v161);
  sub_267AF3430(v220, &qword_280211008);
  sub_267AF3430(v216, &qword_280211010);
  sub_267AF3430(v162, &qword_280210FE8);
  v165(v159, v161);
  sub_267AF3430(v156, &qword_280211008);
  return sub_267AF3430(v217, &qword_280211010);
}

uint64_t sub_267AEFF04(uint64_t a1)
{
  v2 = type metadata accessor for MessageListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v10[1] = sub_267AF3860(*(a1 + *(v5 + 36)));
  swift_getKeyPath();
  sub_267AF3E24(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageListView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_267AF26D4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_267AF3D54;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211118, &qword_267B1A1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211040, &qword_267B1A0E8);
  sub_267AF3DE0(&qword_280211120, &qword_280211118, &qword_267B1A1D0, MEMORY[0x277D83980]);
  sub_267AF2828();
  return sub_267B17630();
}

uint64_t sub_267AF0100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a2;
  *&v78 = a1;
  v84 = a4;
  *&v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DF8, &qword_267B19D10);
  MEMORY[0x28223BE20](v80);
  v6 = (&v72 - v5);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211130, &qword_267B1A1E0);
  MEMORY[0x28223BE20](v81);
  v83 = &v72 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211050, &qword_267B1A0F0);
  MEMORY[0x28223BE20](v82);
  v77 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211000, &qword_267B1A0B8);
  MEMORY[0x28223BE20](v72);
  v74 = &v72 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211008, &qword_267B1A0C0);
  v13 = MEMORY[0x28223BE20](v73);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E00, &qword_267B19D18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v72 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v72 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = (&v72 - v29);
  if (*(*(a3 + *(type metadata accessor for MessageListView(0) + 28)) + 16) - 1 <= v78)
  {
    sub_267AF0A14(v79, v6);
    v60 = sub_267B171A0();
    sub_267B16C00();
    v61 = v6 + *(v80 + 36);
    *v61 = v60;
    *(v61 + 1) = v62;
    *(v61 + 2) = v63;
    *(v61 + 3) = v64;
    *(v61 + 4) = v65;
    v61[40] = 0;
    if (qword_280210878 != -1)
    {
      swift_once();
    }

    if (byte_280210F50 == 1)
    {
      v66 = sub_267B171C0();
      v67 = sub_267B171B0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_267B19C10;
      v69 = sub_267B17190();
      *(inited + 32) = v69;
      v66 = sub_267B171C0();
      *(inited + 33) = v66;
      v67 = sub_267B171B0();
      sub_267B171B0();
      if (sub_267B171B0() != v69)
      {
        v67 = sub_267B171B0();
      }
    }

    sub_267B171B0();
    if (sub_267B171B0() != v66)
    {
      v67 = sub_267B171B0();
    }

    sub_267AF3EE4(v6, v22, &qword_280210DF8, &qword_267B19D10);
    v70 = &v22[*(v19 + 36)];
    *v70 = v67;
    *(v70 + 8) = 0u;
    *(v70 + 24) = 0u;
    v70[40] = 1;
    sub_267AF3EE4(v22, v25, &qword_280210E00, &qword_267B19D18);
    sub_267AF2D08(v25, v83, &qword_280210E00, &qword_267B19D18);
    swift_storeEnumTagMultiPayload();
    sub_267AF3DE0(&qword_280211048, &qword_280211050, &qword_267B1A0F0, MEMORY[0x277CE14C0]);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    sub_267B17080();
  }

  else
  {
    sub_267AF0A14(v79, v30);
    v31 = sub_267B171A0();
    sub_267B16C00();
    v32 = v30 + *(v80 + 36);
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    v37 = sub_267B171C0();
    v38 = v30 + *(v19 + 36);
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    sub_267B17610();
    v39 = sub_267B171A0();
    v40 = &v11[*(v9 + 36)];
    *v40 = v39;
    *(v40 + 8) = 0u;
    v80 = 0u;
    *(v40 + 24) = 0u;
    v40[40] = 1;
    v41 = sub_267B17180();
    v79 = v19;
    if (qword_280210878 != -1)
    {
      swift_once();
    }

    v42 = byte_280210F50;
    v43 = 0uLL;
    v44 = v74;
    if (byte_280210F50 == 1)
    {
      sub_267B16C00();
      *(&v43 + 1) = v45;
      *(&v47 + 1) = v46;
      v80 = v47;
    }

    v78 = v43;
    v48 = v42 ^ 1;
    sub_267AF3EE4(v11, v44, &qword_280210FF8, &qword_267B1A0B0);
    v49 = v44 + *(v72 + 36);
    *v49 = v41;
    *(v49 + 24) = v78;
    *(v49 + 8) = v80;
    *(v49 + 40) = v48;
    v80 = 0u;
    v50 = sub_267B17190();
    v51 = 0uLL;
    if ((v48 & 1) == 0)
    {
      sub_267B16C00();
      *(&v51 + 1) = v52;
      *(&v54 + 1) = v53;
      v80 = v54;
    }

    v78 = v51;
    sub_267AF3EE4(v44, v17, &qword_280211000, &qword_267B1A0B8);
    v55 = &v17[*(v73 + 36)];
    *v55 = v50;
    *(v55 + 24) = v78;
    *(v55 + 8) = v80;
    v55[40] = v48;
    v56 = v76;
    sub_267AF3EE4(v17, v76, &qword_280211008, &qword_267B1A0C0);
    sub_267AF2D08(v30, v28, &qword_280210E00, &qword_267B19D18);
    v57 = v75;
    sub_267AF2D08(v56, v75, &qword_280211008, &qword_267B1A0C0);
    v58 = v77;
    sub_267AF2D08(v28, v77, &qword_280210E00, &qword_267B19D18);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211138, &qword_267B1A1E8);
    sub_267AF2D08(v57, v58 + *(v59 + 48), &qword_280211008, &qword_267B1A0C0);
    sub_267AF3430(v57, &qword_280211008);
    sub_267AF3430(v28, &qword_280210E00);
    sub_267AF2D08(v58, v83, &qword_280211050, &qword_267B1A0F0);
    swift_storeEnumTagMultiPayload();
    sub_267AF3DE0(&qword_280211048, &qword_280211050, &qword_267B1A0F0, MEMORY[0x277CE14C0]);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    sub_267B17080();
    sub_267AF3430(v58, &qword_280211050);
    sub_267AF3430(v56, &qword_280211008);
    v25 = v30;
  }

  return sub_267AF3430(v25, &qword_280210E00);
}

uint64_t sub_267AF0A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = sub_267B172D0();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessageView(0);
  sub_267AF3E24(a1, a2 + v8[5], type metadata accessor for WidgetMessage);
  v9 = type metadata accessor for MessageListView(0);
  v34 = *(v2 + v9[10]);
  v33 = *(a1 + *(type metadata accessor for WidgetMessage(0) + 40));
  v10 = (v2 + v9[20]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v2 + v9[21]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v2 + v9[22]);
  v17 = v16[1];
  v31 = *v16;
  v32 = v14;
  sub_267B17910();
  sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);

  *a2 = sub_267B16E00();
  a2[1] = v18;
  *(a2 + v8[6]) = v34;
  *(a2 + v8[7]) = v33;
  v19 = (a2 + v8[8]);
  *v19 = v11;
  v19[1] = v12;
  v20 = (a2 + v8[9]);
  v21 = v31;
  *v20 = v32;
  v20[1] = v15;
  v22 = (a2 + v8[10]);
  *v22 = v21;
  v22[1] = v17;
  v37 = 0x4030000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A58], v35);
  sub_267AEB9E0();
  sub_267B16CC0();
  v23 = (a2 + v8[12]);
  v36 = 0;
  sub_267B17550();
  v24 = v38;
  *v23 = v37;
  v23[1] = v24;
  v25 = (a2 + v8[13]);
  v36 = 0;
  sub_267B17550();
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;
  v27 = (a2 + v8[14]);
  v36 = 0;
  sub_267B17550();
  v28 = v38;
  *v27 = v37;
  v27[1] = v28;
  v29 = v8[15];
  *(a2 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_267AF0D14(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211128, &qword_267B1A1D8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_267AF0D80(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF0E74(id *a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v6 = *a1;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF0FE0(id *a1)
{
  v2 = sub_267B17850();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267B165B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for MessageListView(0) + 92));
  v11 = v10[1];
  if (v11)
  {
    sub_267AF1244(*v10, v11);
    sub_267B177A0();
    v12 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_267B17840();

    return (*(v3 + 8))(v5, v2);
  }

  else if (*a1)
  {
    v14 = *a1;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF1244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D0, &qword_267B1A148);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_267B17A50();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_267B17A30();

  v8 = sub_267B17A20();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_267AF1F90(0, 0, v6, &unk_267B1A158, v9);
}

uint64_t sub_267AF1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_267B16AD0();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D8, &qword_267B1A178);
  v5[13] = swift_task_alloc();
  v7 = sub_267B164C0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = sub_267B16B00();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110E0, &qword_267B1A180);
  v5[22] = swift_task_alloc();
  v9 = sub_267B16B30();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  sub_267B17A30();
  v5[26] = sub_267B17A20();
  v11 = sub_267B17A10();
  v5[27] = v11;
  v5[28] = v10;

  return MEMORY[0x2822009F8](sub_267AF15D8, v11, v10);
}

uint64_t sub_267AF15D8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v29 = v0[17];
  v5 = v0[15];
  v30 = v0[16];
  v31 = v0[19];
  v27 = v0[18];
  v28 = v0[14];
  v26 = v0[23];
  v6 = [objc_opt_self() defaultEnvironment];
  v7 = sub_267AF37C8();
  v0[2] = v6;
  v8 = MEMORY[0x277CEB188];
  v0[5] = v7;
  v0[6] = v8;
  sub_267B16AF0();
  (*(v3 + 104))(v4, *MEMORY[0x277CEB068], v31);
  sub_267B16B20();
  v9 = sub_267B16B10();
  v32 = v10;
  v0[29] = v9;
  (*(v2 + 8))(v1, v26);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_267B164B0();
  v11 = *(v5 + 16);
  v11(v29, v27, v28);
  v11(v30, v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110F0, &qword_267B1A188);
  swift_allocObject();
  v12 = sub_267B16B40();
  v0[30] = v12;
  v13 = *(v5 + 8);
  v0[31] = v13;
  v0[32] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v29, v28);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v14 = sub_267B16BA0();
  v0[33] = __swift_project_value_buffer(v14, static Logger.siriMail);
  v15 = sub_267B16B80();
  v16 = sub_267B17A80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267ADA000, v15, v16, "#MoreInMail Searching Mail now...", v17, 2u);
    MEMORY[0x26D600E60](v17, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v0[7] = v12;
  sub_267AF380C();
  sub_267AF1E18();
  v19 = sub_267AF1F50();
  v21 = v20;
  v0[34] = v19;
  v22 = swift_task_alloc();
  v0[35] = v22;
  *v22 = v0;
  v22[1] = sub_267AF1994;
  v24 = v0[12];
  v23 = v0[13];

  return MEMORY[0x28213DAA0](v23, v0 + 7, v24, v19, v21, ObjectType, &type metadata for SearchMailIntent, v32);
}

uint64_t sub_267AF1994()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v5 = v4;

  if (v0)
  {
    v7 = v3[11];
    v6 = v3[12];
    v8 = v3[10];

    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    v9 = v3[27];
    v10 = v3[28];
    v11 = sub_267AF1C8C;
  }

  else
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
    swift_unknownObjectRelease();
    v9 = v3[27];
    v10 = v3[28];
    v11 = sub_267AF1B00;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_267AF1B00()
{

  v4 = *(v0 + 104);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211100, &qword_267B1A190);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_267AF3430(v4, &qword_2802110D8);
  v6 = sub_267B16B80();
  v7 = sub_267B17A80();
  if (os_log_type_enabled(v6, v7))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_19(&dword_267ADA000, v8, v9, "#MoreInMail ✅ succeeded!");
    MEMORY[0x26D600E60](v1, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_2();
  v3(v1, v2);

  OUTLINED_FUNCTION_14_0();

  return v10();
}

uint64_t sub_267AF1C8C()
{

  v4 = *(v0 + 104);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211100, &qword_267B1A190);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_267AF3430(v4, &qword_2802110D8);
  v6 = sub_267B16B80();
  v7 = sub_267B17A80();
  if (os_log_type_enabled(v6, v7))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_19(&dword_267ADA000, v8, v9, "#MoreInMail ✅ succeeded!");
    MEMORY[0x26D600E60](v1, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_2();
  v3(v1, v2);

  OUTLINED_FUNCTION_14_0();

  return v10();
}

uint64_t sub_267AF1E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211108, &qword_267B1A198);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211110, &qword_267B1A1A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_267B16B60();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = sub_267B16B50();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v7);
  sub_267B16AC0();
  return sub_267B16AB0();
}

uint64_t sub_267AF1F50()
{
  sub_267B16A90();
  swift_allocObject();
  return sub_267B16A80();
}

uint64_t sub_267AF1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D0, &qword_267B1A148);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_267AF2D08(a3, v24 - v10, &qword_2802110D0, &qword_267B1A148);
  v12 = sub_267B17A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_267AF3430(v11, &qword_2802110D0);
  }

  else
  {
    sub_267B17A40();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_267B17A10();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_267B179A0() + 32;
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

      sub_267AF3430(a3, &qword_2802110D0);

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

  sub_267AF3430(a3, &qword_2802110D0);
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

uint64_t sub_267AF228C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_267B177C0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a3[24];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AF237C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_267B177C0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a4[24];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_267AF2454(uint64_t a1)
{
  sub_267AE0D9C(319);
  if (v1 <= 0x3F)
  {
    sub_267B177C0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for VRXMode(319);
      if (v3 <= 0x3F)
      {
        sub_267AF2628(319, &qword_280210F78, type metadata accessor for WidgetMessage, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_267AF25D8();
          if (v5 <= 0x3F)
          {
            sub_267AF2628(319, &qword_280210DE0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

void sub_267AF25D8()
{
  if (!qword_280210F80)
  {
    v0 = sub_267B17B00();
    if (!v1)
    {
      atomic_store(v0, &qword_280210F80);
    }
  }
}

void sub_267AF2628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267AF26D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AF2738()
{
  v1 = type metadata accessor for MessageListView(0);
  OUTLINED_FUNCTION_16_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_267AEFF04(v3);
}

unint64_t sub_267AF27A4()
{
  result = qword_280211030;
  if (!qword_280211030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211028, &qword_267B1A0E0);
    sub_267AF2828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211030);
  }

  return result;
}

unint64_t sub_267AF2828()
{
  result = qword_280211038;
  if (!qword_280211038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211040, &qword_267B1A0E8);
    sub_267AF3DE0(&qword_280211048, &qword_280211050, &qword_267B1A0F0, MEMORY[0x277CE14C0]);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211038);
  }

  return result;
}

unint64_t sub_267AF290C()
{
  result = qword_280211060;
  if (!qword_280211060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210DF8, &qword_267B19D10);
    sub_267AF2CA8(&qword_280211068, type metadata accessor for MessageView, &unk_267B1A470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211060);
  }

  return result;
}

unint64_t sub_267AF29C8()
{
  result = qword_280211078;
  if (!qword_280211078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FB0, &qword_267B1A068);
    sub_267AF2ABC();
    sub_267B17770();
    sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0], MEMORY[0x277D63CC8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211078);
  }

  return result;
}

unint64_t sub_267AF2ABC()
{
  result = qword_280211080;
  if (!qword_280211080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FE0, &qword_267B1A098);
    sub_267AF2B6C(&qword_280211088, &qword_280210FC0, &qword_267B1A078, sub_267AF2BEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211080);
  }

  return result;
}

uint64_t sub_267AF2B6C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_15_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267AF2BEC()
{
  result = qword_280211090;
  if (!qword_280211090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FB8, &qword_267B1A070);
    sub_267AF2CA8(&qword_280211098, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211090);
  }

  return result;
}

uint64_t sub_267AF2CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267AF2D08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

uint64_t sub_267AF2E38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267AF2F30;

  return v6(a1);
}

uint64_t sub_267AF2F30()
{
  OUTLINED_FUNCTION_17();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_267AF308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_267AF31B4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MessageListView(0);
  OUTLINED_FUNCTION_16_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_267AF3224()
{
  result = qword_2802110C0;
  if (!qword_2802110C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD8, &qword_267B1A090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD0, &qword_267B1A088);
    sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_267AF3DE0(&qword_280210E80, &qword_280210E60, &qword_267B19DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110C0);
  }

  return result;
}

unint64_t sub_267AF334C()
{
  result = qword_2802110C8;
  if (!qword_2802110C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FC8, &qword_267B1A080);
    sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
    sub_267AF3DE0(&qword_280210E80, &qword_280210E60, &qword_267B19DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110C8);
  }

  return result;
}

uint64_t sub_267AF3430(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_15_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_267AF3484()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AF34C4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_0(v7);
  *v8 = v9;
  v8[1] = sub_267AF357C;

  return sub_267AF1348(a1, v3, v4, v6, v5);
}

uint64_t sub_267AF357C()
{
  OUTLINED_FUNCTION_17();
  v1 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_267AF3660()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267AF3698()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return v4(v3);
}

uint64_t sub_267AF3730()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_1(v1);

  return v4(v3);
}

unint64_t sub_267AF37C8()
{
  result = qword_2802110E8;
  if (!qword_2802110E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802110E8);
  }

  return result;
}

unint64_t sub_267AF380C()
{
  result = qword_2802110F8;
  if (!qword_2802110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110F8);
  }

  return result;
}

uint64_t sub_267AF3860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211128, &qword_267B1A1D8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v38 = v8;
  v39 = &v34 - v7;
  v9 = 0;
  v10 = 0;
  v35 = *(v8 + 80);
  v11 = MEMORY[0x277D84F90];
  v36 = (v35 + 32) & ~v35;
  v12 = MEMORY[0x277D84F90] + v36;
  v37 = *(a1 + 16);
  while (1)
  {
    if (v37 == v10)
    {
      v31 = v11[3];
      if (v31 >= 2)
      {
        v32 = v31 >> 1;
        v30 = __OFSUB__(v32, v9);
        v33 = v32 - v9;
        if (v30)
        {
          goto LABEL_35;
        }

        v11[2] = v33;
      }

      return v11;
    }

    v13 = *(type metadata accessor for WidgetMessage(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10;
    v15 = *(v2 + 48);
    *v5 = v10;
    sub_267AF3E24(v14, v5 + v15, type metadata accessor for WidgetMessage);
    result = sub_267AF3EE4(v5, v39, &qword_280211128, &qword_267B1A1D8);
    if (v9)
    {
      v16 = v11;
    }

    else
    {
      v17 = v11[3];
      if (((v17 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v18 = a1;
      v19 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211140, &qword_267B1A228);
      v21 = *(v38 + 72);
      v22 = v36;
      v16 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v16);
      if (!v21)
      {
        goto LABEL_33;
      }

      v23 = result - v22;
      if (result - v22 == 0x8000000000000000 && v21 == -1)
      {
        goto LABEL_34;
      }

      v25 = v23 / v21;
      v16[2] = v20;
      v16[3] = 2 * (v23 / v21);
      v26 = v16 + v22;
      v27 = v11[3];
      v28 = (v27 >> 1) * v21;
      if (v11[2])
      {
        if (v16 < v11 || v26 >= v11 + v36 + v28)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v16 != v11)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v11[2] = 0;
      }

      v12 = &v26[v28];
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - (v27 >> 1);

      a1 = v18;
    }

    v30 = __OFSUB__(v9--, 1);
    if (v30)
    {
      break;
    }

    result = sub_267AF3EE4(v39, v12, &qword_280211128, &qword_267B1A1D8);
    v12 += *(v38 + 72);
    ++v10;
    v11 = v16;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for MessageListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  sub_267B177C0();
  OUTLINED_FUNCTION_0();
  (*(v6 + 8))(v0 + v3 + v5);

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_10_0();
  v7 = v1[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B16C80();
    OUTLINED_FUNCTION_0();
    (*(v8 + 8))(v0 + v3 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AF3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessageListView(0);
  OUTLINED_FUNCTION_16_0(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_267AF0100(a1, a2, v9, a3);
}

uint64_t sub_267AF3DE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_15_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AF3E24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_267AF3EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

void OUTLINED_FUNCTION_3_1(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_7_2()
{
}

uint64_t OUTLINED_FUNCTION_10_0()
{
}

uint64_t OUTLINED_FUNCTION_11_0()
{
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_267AEDA60(v1, v0);
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

uint64_t sub_267AF40F4(uint64_t a1, int a2)
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

uint64_t sub_267AF4134(uint64_t result, int a2, int a3)
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

uint64_t sub_267AF41AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v128 = a1;
  v111 = sub_267B177D0();
  OUTLINED_FUNCTION_0_0();
  v110 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2(v6 - v5);
  v127 = sub_267B177F0();
  OUTLINED_FUNCTION_0_0();
  v114 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v10 - v9);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211148, &qword_267B1A348);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v12);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211150, &qword_267B1A350);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v14);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211158, &qword_267B1A358);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v16);
  v120 = sub_267B17730();
  OUTLINED_FUNCTION_0_0();
  v118 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v20 - v19);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211160, &unk_267B1A360);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v22);
  v109 = sub_267B176E0();
  OUTLINED_FUNCTION_0_0();
  v108 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD0, &qword_267B1A088);
  OUTLINED_FUNCTION_0_0();
  v107 = v29;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v107 - v31;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211168, &qword_267B1A370);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v34);
  v35 = sub_267B16860();
  OUTLINED_FUNCTION_0_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v41 = v40 - v39;
  v135 = *v2;
  v42 = *(&v135 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v44 = *(v37 + 88);
  v43 = (v37 + 88);
  v45 = v44(v41, v35);
  if (v45 == *MEMORY[0x277D5CA08])
  {
    v46 = (v42 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    *&v130 = v47;
    *(&v130 + 1) = v48;
    v49 = v2[1];
    v133 = v2[2];
    v134 = v49;
    v50 = swift_allocObject();
    OUTLINED_FUNCTION_11_1(v50);

    sub_267AED784(&v135, v129, &qword_280211180, &qword_267B1A3C0);
    sub_267AED784(&v134, v129, &qword_280210B28, &qword_267B19308);
    sub_267AED784(&v133, v129, &qword_280210E90, &qword_267B19E00);
    sub_267ADCFA4();
    sub_267B175B0();
    v51 = v108;
    v52 = v109;
    (*(v108 + 104))(v27, *MEMORY[0x277D63A90], v109);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
    v53 = v121;
    sub_267B17370();
    (*(v51 + 8))(v27, v52);
    (*(v107 + 8))(v32, v28);
    v54 = sub_267AF4FF0();
    KeyPath = swift_getKeyPath();
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    v57 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211188, &unk_267B1A3F8) + 36));
    *v57 = KeyPath;
    v57[1] = sub_267AF537C;
    v57[2] = v56;
    v58 = (v53 + *(v112 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
    sub_267B16DC0();
    *v58 = swift_getKeyPath();
    v59 = (v42 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
    swift_beginAccess();
    v60 = *v59;
    v61 = v59[1];
    *&v130 = v60;
    *(&v130 + 1) = v61;
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_11_1(v62);
    sub_267AED784(&v135, v129, &qword_280211180, &qword_267B1A3C0);
    sub_267AED784(&v134, v129, &qword_280210B28, &qword_267B19308);
    sub_267AED784(&v133, v129, &qword_280210E90, &qword_267B19E00);

    v63 = v116;
    sub_267B175B0();
    v130 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    sub_267B17560();
    v64 = v129[0];
    v65 = swift_getKeyPath();
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    v67 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211190, &qword_267B1A438) + 36));
    *v67 = v65;
    v67[1] = sub_267AF5840;
    v67[2] = v66;
    v68 = (v63 + *(v115 + 36));
    sub_267B16DC0();
    *v68 = swift_getKeyPath();
    sub_267AF5414(&qword_280211198, &qword_280211168, &qword_267B1A370, sub_267AF54C4);
    v69 = sub_267B17350();
    v70 = MEMORY[0x277CE11C8];
    v71 = MEMORY[0x277D63A60];
    v131 = MEMORY[0x277CE11C8];
    v132 = MEMORY[0x277D63A60];
    *&v130 = v69;
    sub_267AF5414(&qword_2802111B8, &qword_280211160, &unk_267B1A360, sub_267AF55EC);
    v72 = sub_267B17350();
    v129[3] = v70;
    v129[4] = v71;
    v129[0] = v72;
    v73 = v117;
    sub_267B17720();
    v74 = v118;
    v75 = v120;
    (*(v118 + 16))(v123, v73, v120);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_4();
    sub_267AF5730(v76, v77, MEMORY[0x277D63C18]);
    OUTLINED_FUNCTION_0_3();
    sub_267AF5730(v78, v79, MEMORY[0x277D63D48]);
    v80 = v119;
    sub_267B17080();
    sub_267AED784(v80, v125, &qword_280211158, &qword_267B1A358);
    swift_storeEnumTagMultiPayload();
    sub_267AF5254();
    sub_267B17080();
    sub_267AEC1D4(v80, &qword_280211158, &qword_267B1A358);
    (*(v74 + 8))(v73, v75);
    sub_267AEC1D4(v63, &qword_280211160, &unk_267B1A360);
    return sub_267AF56D0(v121);
  }

  else
  {
    v82 = v123;
    v83 = v125;
    v84 = v127;
    if (v45 == *MEMORY[0x277D5CA18] || v45 == *MEMORY[0x277D5CA00])
    {
      OUTLINED_FUNCTION_10_1();
      v86 = *v43;
      v87 = v43[1];
      v131 = MEMORY[0x277D837D0];
      v132 = MEMORY[0x277D63F80];
      *&v130 = v86;
      *(&v130 + 1) = v87;
      v88 = OUTLINED_FUNCTION_7_3();
      v89(v88);

      v90 = v113;
      sub_267B177E0();
      v91 = v114;
      (*(v114 + 16))(v82, v90, v84);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_4();
      sub_267AF5730(v92, v93, MEMORY[0x277D63C18]);
      OUTLINED_FUNCTION_0_3();
      sub_267AF5730(v94, v95, MEMORY[0x277D63D48]);
      v96 = v119;
      sub_267B17080();
      sub_267AED784(v96, v83, &qword_280211158, &qword_267B1A358);
      swift_storeEnumTagMultiPayload();
      sub_267AF5254();
      sub_267B17080();
      sub_267AEC1D4(v96, &qword_280211158, &qword_267B1A358);
      return (*(v91 + 8))(v90, v84);
    }

    else if (v45 == *MEMORY[0x277D5CA20] || v45 == *MEMORY[0x277D5CA10])
    {
      v98 = v125;
      OUTLINED_FUNCTION_10_1();
      v99 = *v43;
      v100 = v43[1];
      v131 = MEMORY[0x277D837D0];
      v132 = MEMORY[0x277D63F80];
      *&v130 = v99;
      *(&v130 + 1) = v100;
      v101 = OUTLINED_FUNCTION_7_3();
      v102(v101);

      v103 = v113;
      sub_267B177E0();
      v104 = v114;
      (*(v114 + 16))(v98, v103, v84);
      swift_storeEnumTagMultiPayload();
      sub_267AF5254();
      OUTLINED_FUNCTION_0_3();
      sub_267AF5730(v105, v106, MEMORY[0x277D63D48]);
      sub_267B17080();
      return (*(v104 + 8))(v103, v84);
    }

    else
    {
      result = sub_267B17D50();
      __break(1u);
    }
  }

  return result;
}

BOOL sub_267AF4FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  if (v12)
  {
    return 1;
  }

  v0 = *(SiriMailModel.to.getter() + 16);

  if (!v0)
  {
    v1 = *(SiriMailModel.cc.getter() + 16);

    if (!v1)
    {
      v2 = *(SiriMailModel.bcc.getter() + 16);

      if (!v2)
      {
        return 1;
      }
    }
  }

  v3 = SiriMailModel.subject.getter();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = SiriMailModel.body.getter();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v10 == 0;
}

uint64_t sub_267AF50E0(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
    v5 = a2();
    v6 = [v5 identifier];

    sub_267B17980();
    sub_267B17930();
    sub_267B17900();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    return sub_267B17570();
  }

  else
  {
    sub_267B17910();
    sub_267AF5730(&qword_280211600, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

unint64_t sub_267AF5254()
{
  result = qword_280211170;
  if (!qword_280211170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211158, &qword_267B1A358);
    sub_267AF5730(&qword_280211098, MEMORY[0x277D63C38], MEMORY[0x277D63C18]);
    sub_267AF5730(&qword_280211178, MEMORY[0x277D63D80], MEMORY[0x277D63D48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211170);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267AF5414(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_267ADCE94(&qword_280210E80, &qword_280210E60, &qword_267B19DC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267AF54C4()
{
  result = qword_2802111A0;
  if (!qword_2802111A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211188, &unk_267B1A3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD0, &qword_267B1A088);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_267ADCE94(&qword_2802111A8, &qword_2802111B0, &qword_267B1A440, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111A0);
  }

  return result;
}

unint64_t sub_267AF55EC()
{
  result = qword_2802111C0;
  if (!qword_2802111C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211190, &qword_267B1A438);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088, MEMORY[0x277CDF028]);
    sub_267ADCE94(&qword_2802111A8, &qword_2802111B0, &qword_267B1A440, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111C0);
  }

  return result;
}

uint64_t sub_267AF56D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211168, &qword_267B1A370);
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_267AF5730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267AF577C()
{
  result = qword_2802111C8;
  if (!qword_2802111C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802111D0, &qword_267B1A448);
    sub_267AF5254();
    sub_267AF5730(&qword_280211178, MEMORY[0x277D63D80], MEMORY[0x277D63D48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802111C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_11_1(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_267AF5900(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_6();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
    goto LABEL_3;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    OUTLINED_FUNCTION_6();
    if (*(v13 + 84) == a2)
    {
      v8 = v12;
      v9 = a3[11];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111E0, &qword_267B1A458);
      v9 = a3[15];
    }

LABEL_3:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  v11 = *(a1 + a3[8] + 8);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_267AF5A3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for WidgetMessage(0);
  OUTLINED_FUNCTION_6();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111D8, &qword_267B1A450);
    OUTLINED_FUNCTION_6();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[11];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802111E0, &qword_267B1A458);
      v11 = a4[15];
    }
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

uint64_t type metadata accessor for MessageView(uint64_t a1)
{
  result = qword_2802111E8;
  if (!qword_2802111E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267AF5BAC(uint64_t a1)
{
  sub_267AE0D9C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetMessage(319);
    if (v2 <= 0x3F)
    {
      sub_267AF5CA4(319);
      if (v3 <= 0x3F)
      {
        sub_267AF5D00();
        if (v4 <= 0x3F)
        {
          sub_267AF5D50(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}