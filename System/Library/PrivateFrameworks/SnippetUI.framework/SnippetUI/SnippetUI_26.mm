uint64_t sub_26A72B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30[1] = a1;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208, &qword_26A87D280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6230, &unk_26A87D2A0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6228, &qword_26A87D298);
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v30 - v18;
  v34 = a2;
  sub_26A72CED4(a2, v12);
  v20 = type metadata accessor for SmartDialogAnimation(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    sub_26A54A088();
    v21 = 0.0;
  }

  else
  {
    v22 = v12[*(v20 + 28)];
    LOBYTE(v35) = 1;
    sub_26A5D5CF0(&v35, v22, &v36);
    v35 = v36;
    v21 = sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  v23 = sub_26A84F658();
  v24 = sub_26A72C02C();
  MEMORY[0x26D661270](v23, v24, 0.0, v21);
  sub_26A72CED4(v34, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
  {
    sub_26A54A088();
  }

  else
  {
    v25 = v9[*(v20 + 28)];
    LOBYTE(v35) = 0;
    sub_26A5D5CF0(&v35, v25, &v36);
    v35 = v36;
    sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  *&v36 = v23;
  *(&v36 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A84F018();
  (*(v14 + 8))(v16, v13);
  sub_26A72CED4(v34, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v20) == 1)
  {
    sub_26A54A088();
  }

  else
  {
    v27 = v6[*(v20 + 28)];
    LOBYTE(v35) = 2;
    sub_26A5D5CF0(&v35, v27, &v36);
    v35 = v36;
    sub_26A5D5E84(&v35);
    sub_26A72D048();
  }

  *&v36 = v13;
  *(&v36 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_26A84EFF8();
  return (*(v31 + 8))(v19, v28);
}

uint64_t sub_26A72BCDC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CGRect(0, a2, a3, a4);
  OUTLINED_FUNCTION_2_79();
  sub_26A72C02C();
  if ((sub_26A8510B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SmartDialogAnimatableRect(0);

  return sub_26A84AC98();
}

uint64_t sub_26A72BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CGRect(0, a2, a3, a4);
  OUTLINED_FUNCTION_2_79();
  sub_26A72C02C();
  sub_26A8510A8();
  type metadata accessor for SmartDialogAnimatableRect(0);
  sub_26A84ACC8();
  sub_26A72C02C();
  return sub_26A8516F8();
}

uint64_t sub_26A72BE6C()
{
  type metadata accessor for SmartDialogAnimatableRect(0);
  sub_26A72C02C();

  return sub_26A8516E8();
}

uint64_t sub_26A72BEF0(uint64_t a1)
{
  sub_26A8526B8();
  type metadata accessor for CGRect(0, v1, v2, v3);
  sub_26A72C02C();
  sub_26A8510A8();
  sub_26A84ACC8();
  sub_26A72C02C();
  sub_26A8516F8();
  return sub_26A8526F8();
}

unint64_t sub_26A72C02C()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

double sub_26A72C0E4@<D0>(void *a1@<X8>)
{
  if (qword_2803A8DE8 != -1)
  {
    swift_once();
  }

  *a1 = qword_2803D2370;

  return result;
}

uint64_t sub_26A72C154(uint64_t a1, void *a2)
{
  v17[1] = a2;
  v3 = sub_26A850798();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB4A0, &qword_26A858C10);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = sub_26A8507A8();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = *(v8 + 44);
  sub_26A72C02C();
  sub_26A851D88();
  v13 = (v4 + 16);
  for (i = (v4 + 8); ; (*i)(v6, v3))
  {
    sub_26A851DD8();
    if (*&v10[v12] == v18[0])
    {
      break;
    }

    v15 = sub_26A851E18();
    (*v13)(v6);
    v15(v18, 0);
    sub_26A851DE8();
    sub_26A84F418();
  }

  return sub_26A54A088();
}

void (*sub_26A72C3CC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A72C440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SmartDialogAnimatableModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6138, &qword_26A87D070);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6140, &qword_26A87D078) + 36));
  *v10 = sub_26A72C694;
  v10[1] = 0;
  v11 = sub_26A851098();
  sub_26A72C870(v2, v8);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_26A72C8D4(v8, v13 + v12);
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6148, &qword_26A87D080) + 36));
  *v14 = v11;
  v14[1] = sub_26A72C938;
  v14[2] = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6150, &qword_26A87D088) + 36);
  type metadata accessor for SmartDialogAnimatableAnimationModifer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110, &unk_26A87CF50);
  sub_26A851058();
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *(v15 + 16) = swift_getKeyPath();
  *(v15 + 24) = 0;
  type metadata accessor for SmartDialogAnimations(0);
  sub_26A72C02C();
  result = sub_26A84F678();
  *(v15 + 32) = result;
  *(v15 + 40) = v17;
  return result;
}

uint64_t sub_26A72C6C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84ACC8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6158, &qword_26A884C40);
  v8 = (type metadata accessor for SmartDialogAnimatableRect(0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = (v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6110, &unk_26A87CF50);
  sub_26A851058();
  *v11 = a1;
  (*(v5 + 32))(&v11[v8[7]], v7, v4);
  *a2 = v10;
}

uint64_t sub_26A72C870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimatableModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogAnimatableModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72C938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SmartDialogAnimatableModifier(0);

  return sub_26A72C6C8(a1, a2);
}

void sub_26A72CA00(uint64_t a1)
{
  sub_26A5923A4();
  if (v1 <= 0x3F)
  {
    sub_26A72CA9C(319);
    if (v2 <= 0x3F)
    {
      sub_26A84ACC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A72CA9C(uint64_t a1)
{
  if (!qword_2803B6180)
  {
    type metadata accessor for SmartDialogAnimations(255);
    sub_26A72C02C();
    v1 = sub_26A84F688();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B6180);
    }
  }
}

unint64_t sub_26A72CB50()
{
  result = qword_2803B6188;
  if (!qword_2803B6188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6150, &qword_26A87D088);
    sub_26A72CC0C();
    sub_26A72C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6188);
  }

  return result;
}

unint64_t sub_26A72CC0C()
{
  result = qword_2803B6190;
  if (!qword_2803B6190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6148, &qword_26A87D080);
    sub_26A72CCC4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6190);
  }

  return result;
}

unint64_t sub_26A72CCC4()
{
  result = qword_2803B6198;
  if (!qword_2803B6198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6140, &qword_26A87D078);
    sub_26A72CD7C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6198);
  }

  return result;
}

unint64_t sub_26A72CD7C()
{
  result = qword_2803B61A0;
  if (!qword_2803B61A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B61A8, &qword_26A87D128);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B61A0);
  }

  return result;
}

unint64_t sub_26A72CE64()
{
  result = qword_2803B61F0;
  if (!qword_2803B61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B61F0);
  }

  return result;
}

uint64_t sub_26A72CED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208, &qword_26A87D280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72CF44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208, &qword_26A87D280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A72CFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6208, &qword_26A87D280) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A72B820(a1, v6, a2);
}

uint64_t sub_26A72D048()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A72D098()
{
  result = qword_2803B6240;
  if (!qword_2803B6240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6248, &unk_26A87D2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6210, &qword_26A87D288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6218, &qword_26A87D290);
    sub_26A4D7DCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6228, &qword_26A87D298);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6230, &unk_26A87D2A0);
    sub_26A84F658();
    sub_26A72C02C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6240);
  }

  return result;
}

uint64_t sub_26A72D2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_26A84FBF8();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6250, &unk_26A87D398);
  return sub_26A72D360(a1, a2, a3 & 1, a4 + *(v8 + 44));
}

uint64_t sub_26A72D360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v74) = a3;
  v81 = a4;
  v6 = sub_26A84FF88();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_26A84F988();
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v82 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A850F68();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6258, &qword_26A87D3A8);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v75 = a1;
  sub_26A84FF78();
  (*(v14 + 104))(v16, *MEMORY[0x277CE1020], v13);
  KeyPath = swift_getKeyPath();
  v22 = v20;
  v23 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C50, &qword_26A87C498) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3678, &qword_26A87C4A0) + 28);
  (*(v14 + 32))(v23 + v24, v16, v13);
  v25 = BYTE4(v74);
  v26 = v23 + v24;
  v27 = v11;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v13);
  *v23 = KeyPath;
  v28 = v73;
  v29 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v30 = sub_26A8501F8();
    sub_26A84EA78();

    v31 = v82;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v31, v11);
    v29 = v89;
  }

  if ((v29 - 1) >= 8)
  {
    v32 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v32, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v29, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  }

  v33 = v22;
  v34 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v34);
  v35 = sub_26A8503E8();
  sub_26A4E2544(v10, &qword_2803AB208, &qword_26A857FD0);
  v36 = swift_getKeyPath();
  v37 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C58, &qword_26A87C4D8) + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = a2;
  v39 = v82;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v40 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v38 = v89;
  }

  if ((v38 - 1) >= 8)
  {
    v42 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v42, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v38, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v41 = 0x4032000000000000;
  }

  else
  {
    v41 = qword_26A87D508[v38 - 1];
  }

  v43 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v44 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v43 = v89;
  }

  if ((v43 - 1) >= 8)
  {
    v46 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v46, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v43, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    v45 = 0x4032000000000000;
  }

  else
  {
    v45 = qword_26A87D508[v43 - 1];
  }

  v47 = swift_getKeyPath();
  v48 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C60, &qword_26A87C508) + 36);
  *v48 = v47;
  *(v48 + 8) = v41;
  *(v48 + 16) = 0;
  v49 = swift_getKeyPath();
  v50 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C48, &qword_26A87C468) + 36);
  *v50 = v49;
  *(v50 + 8) = v45;
  *(v50 + 16) = 0;
  v51 = a2;
  if ((v25 & 1) == 0)
  {

    sub_26A851EA8();
    v52 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    v51 = v89;
  }

  if ((v51 - 1) >= 8)
  {
    v53 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v53, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, v51, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
    if (v25)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v25 & 1) == 0)
  {
LABEL_21:

    sub_26A851EA8();
    v54 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a2, 0);
    (*(v28 + 8))(v39, v27);
    a2 = v89;
  }

LABEL_22:
  if ((a2 - 1) >= 8)
  {
    v55 = sub_26A851E98();
    LOBYTE(v71) = 2;
    sub_26A7AEFE4(v55, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v71, a2, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  }

  sub_26A851448();
  sub_26A84F028();
  v56 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6260, &qword_26A87D470) + 36));
  v57 = v90;
  *v56 = v89;
  v56[1] = v57;
  v56[2] = v91;
  v58 = sub_26A84FE98();
  v59 = sub_26A850248();
  v60 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6268, &qword_26A87D478) + 36);
  *v60 = v58;
  *(v60 + 4) = v59;
  *(v33 + *(v76 + 36)) = 256;
  v61 = v78;
  sub_26A84FF98();
  v62 = sub_26A850488();
  v63 = sub_26A84FED8();
  v87 = MEMORY[0x277CE04F8];
  v88 = MEMORY[0x277CE04E8];
  LODWORD(v84) = v63;
  v83 = v62;
  sub_26A607E38();
  v65 = v64;
  sub_26A57E57C(&v83);
  (*(v79 + 8))(v61, v80);
  v66 = swift_getKeyPath();
  v67 = v77;
  sub_26A72DE18(v33, v77);
  v68 = v81;
  sub_26A72DE18(v67, v81);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6270, &qword_26A87D4B0) + 48);
  *v69 = v65;
  *(v69 + 8) = v66;
  *(v69 + 16) = 1;

  sub_26A4E2544(v33, &qword_2803B6258, &qword_26A87D3A8);

  return sub_26A4E2544(v67, &qword_2803B6258, &qword_26A87D3A8);
}

uint64_t sub_26A72DE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6258, &qword_26A87D3A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A72DE88()
{
  result = qword_2803B6278;
  if (!qword_2803B6278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6280, &unk_26A87D4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6278);
  }

  return result;
}

void View.imageFixedSize(horizontal:vertical:)()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_50();
  swift_getKeyPath();
  sub_26A8509A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  v1 = OUTLINED_FUNCTION_33_11();
  v2(v1);
  OUTLINED_FUNCTION_27_0();
}

uint64_t RFImageView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26A84B718();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  sub_26A5E9128(a2);
  v5 = type metadata accessor for RFImageView(0);
  OUTLINED_FUNCTION_3_73(a2 + v5[5]);
  v7 = *(v6 + 32);
  sub_26A851048();
  *(a2 + v7) = v14;
  sub_26A84E2E8();
  v8 = sub_26A84B2D8();
  sub_26A84E338();
  OUTLINED_FUNCTION_46();
  (*(v9 + 8))(a1);
  v10 = OUTLINED_FUNCTION_33_11();
  result = v11(v10);
  *(a2 + v5[6]) = v8;
  v13 = (a2 + v5[7]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

{
  sub_26A5E9128(a2);
  v4 = type metadata accessor for RFImageView(0);
  OUTLINED_FUNCTION_3_73(a2 + v4[5]);
  v6 = *(v5 + 32);
  sub_26A851048();
  *(a2 + v6) = v11;
  v7 = sub_26A84B2D8();
  sub_26A84B718();
  OUTLINED_FUNCTION_46();
  result = (*(v8 + 8))(a1);
  *(a2 + v4[6]) = v7;
  v10 = (a2 + v4[7]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t View.imageAspectRatio(width:height:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  swift_getKeyPath();
  sub_26A84B268();
  sub_26A84B2B8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_26A8509A8();

  return sub_26A505D1C();
}

void View.imageFixedSize()()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B31B0, &unk_26A858ED0);
  v2 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = v9 - v6;
  swift_getKeyPath();
  v10 = 1;
  sub_26A8509A8();

  swift_getKeyPath();
  v10 = 1;
  OUTLINED_FUNCTION_3_11();
  v8 = sub_26A506A30();
  v9[1] = v1;
  v9[2] = v8;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_27_0();
}

uint64_t View.imageContentMode(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t RFImageView.AsyncImagePhase.image.getter(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  else
  {
    return 0;
  }
}

void RFImageView.init<A>(_:content:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_26A84B718();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  sub_26A5E9128(v10);
  v18 = type metadata accessor for RFImageView(0);
  OUTLINED_FUNCTION_3_73(v10 + v18[5]);
  v20 = *(v19 + 32);
  sub_26A851048();
  *(v10 + v20) = v26;
  sub_26A84E2E8();
  v21 = sub_26A84B2D8();
  sub_26A84E338();
  OUTLINED_FUNCTION_46();
  (*(v22 + 8))(v8);
  (*(v13 + 8))(v17, v11);
  *(v10 + v18[6]) = v21;
  v23 = swift_allocObject();
  *(v23 + 2) = v3;
  *(v23 + 3) = v1;
  *(v23 + 4) = v6;
  *(v23 + 5) = v25;
  v24 = (v10 + v18[7]);
  *v24 = sub_26A731A7C;
  v24[1] = v23;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72E6EC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_50();
  sub_26A4EF6D0();
  v9 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v2) + 36);
  v10 = type metadata accessor for ImageSizeableModifier(0);
  v11 = v9 + v10[5];
  sub_26A6AEE74(v24);
  memcpy(v11, v24, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_28157F7C0);
  }

  v12 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1(&qword_2803A8B88);
  }

  v13 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_28157FAE8);
  }

  v14 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_2803A8B80);
  }

  v15 = byte_2803D1D89;
  *(v11 + 192) = v12;
  *(v11 + 200) = v13;
  *(v11 + 208) = 1;
  *(v11 + 216) = v14;
  *(v11 + 217) = 0;
  *(v11 + 218) = v15;
  *(v11 + 219) = 0;
  v16 = v10[6];
  *(v9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(KeyPath);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v18);
  v19 = v9 + v10[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = v9 + v10[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v10[11];
  *(v9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v22);
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_43_4(v23);
  sub_26A5F3AB0(v0, v9);
  sub_26A505D1C();
  sub_26A4EF6D0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72E9D8()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-v10];
  sub_26A4EF6D0();
  v12 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v3, v1) + 36);
  v13 = type metadata accessor for ImageSizeableModifier(0);
  v14 = v12 + v13[5];
  sub_26A6AEE74(v27);
  memcpy(v14, v27, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_28157F7C0);
  }

  v15 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    OUTLINED_FUNCTION_22_1(&qword_2803A8B88);
  }

  v16 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    OUTLINED_FUNCTION_21_0(&qword_28157FAE8);
  }

  v17 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_2803A8B80);
  }

  v18 = byte_2803D1D89;
  *(v14 + 192) = v15;
  *(v14 + 200) = v16;
  *(v14 + 208) = 1;
  *(v14 + 216) = v17;
  *(v14 + 217) = 0;
  *(v14 + 218) = v18;
  *(v14 + 219) = 0;
  v19 = v13[6];
  *(v12 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0, &qword_26A868B30);
  swift_storeEnumTagMultiPayload();
  v20 = v12 + v13[7];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = v12 + v13[8];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v12 + v13[9];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = v12 + v13[10];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v13[11];
  *(v12 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E8, &qword_26A868C00);
  swift_storeEnumTagMultiPayload();
  v25 = v12 + v13[12];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = v12 + v13[13];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  sub_26A5F3AB0(v11, v12);
  sub_26A505D1C();
  *v7 = v5;
  *(v7 + 4) = BYTE4(v5) & 1;
  *(v7 + 5) = BYTE5(v5) & 1;
  OUTLINED_FUNCTION_27_0();
}

void View.imageFrame(width:height:)()
{
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5C08, &unk_26A87C3B0);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_50();
  swift_getKeyPath();
  sub_26A8509A8();

  swift_getKeyPath();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A8509A8();

  v1 = OUTLINED_FUNCTION_33_11();
  v2(v1);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A72EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_79(v28);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  swift_getKeyPath();
  v32 = v23(0);
  OUTLINED_FUNCTION_46();
  (*(v33 + 16))(v31, v25, v32);
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
  sub_26A8509A8();

  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A72EFA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A4EF6D0();

  sub_26A84EC28();
  return sub_26A505D1C();
}

uint64_t sub_26A72F0F0(__n128 a1)
{
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v2;
}

uint64_t sub_26A72F1BC(uint64_t a1, __n128 a2)
{
  sub_26A84B258();
  sub_26A7329BC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

void sub_26A72F28C()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v74 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308, &qword_26A87D9A8);
  v12 = OUTLINED_FUNCTION_79(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v69 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v71 = &v67 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38, &unk_26A87D9B0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  OUTLINED_FUNCTION_79(v24);
  OUTLINED_FUNCTION_77();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  if (sub_26A72F0F0(v26) && (v29 = sub_26A75750C(), , (v29 & 1) != 0))
  {
    type metadata accessor for ImageSourceModel(0);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_27_0();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  else
  {
    v68 = v10;
    v70 = v6;
    type metadata accessor for ImageSourceModel(0);
    v72 = v28;
    OUTLINED_FUNCTION_81();
    v67 = v35;
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
    v39 = 0;
    v73 = v4;
    v40 = *(v4 + 16);
    v41 = *(*v1 + 120);
    v42 = *(*v1 + 128);
    do
    {
      if (v40 == v39)
      {
        v48 = v40;
        goto LABEL_13;
      }

      sub_26A84B258();
      v43 = v39 + 1;
      sub_26A50429C(v1 + v41, v75);
      sub_26A681C5C(v74, v75, v1 + v42, v23);
      __swift_destroy_boxed_opaque_existential_1(v75);
      sub_26A4EF020();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      ++v39;
    }

    while (EnumCaseMultiPayload == 2);
    if (!EnumCaseMultiPayload)
    {
      sub_26A505D1C();
      sub_26A727B6C(v20, v70);
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v67);
      goto LABEL_19;
    }

    sub_26A505D1C();
    sub_26A4EF020();
    v48 = v43 - 1;
LABEL_13:
    v49 = *(*v1 + 112);
    swift_beginAccess();
    v50 = v71;
    sub_26A4EF6D0();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8, &qword_26A87CD68);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v51);
    sub_26A505D1C();
    if (EnumTagSinglePayload == 1 && v48 < v40)
    {
      v54 = v69;
      sub_26A732754();
      v55 = v73;
      *v54 = v48;
      v54[1] = v55;
      OUTLINED_FUNCTION_22_0();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
      swift_beginAccess();

      sub_26A732630(v54, v1 + v49);
      swift_endAccess();
      sub_26A851C18();
      v59 = v68;
      OUTLINED_FUNCTION_81();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
      sub_26A851BD8();

      v64 = sub_26A851BC8();
      v65 = swift_allocObject();
      v66 = MEMORY[0x277D85700];
      v65[2] = v64;
      v65[3] = v66;
      v65[4] = v1;
      sub_26A601D48(0, 0, v59, &unk_26A87D9C8, v65);
    }

    sub_26A4EF020();
LABEL_19:
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A72F7EC()
{
  v0[2] = sub_26A851BD8();
  v0[3] = sub_26A851BC8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26A72F8B0;

  return (sub_26A72FA40)();
}

uint64_t sub_26A72F8B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A72F9E4);
}

uint64_t sub_26A72F9E4()
{

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A72FA40(__n128 a1)
{
  v2[16] = v1;
  v3 = sub_26A84B258();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for ImageSourceModel(0);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308, &qword_26A87D9A8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8, &qword_26A87CD68);
  v2[27] = swift_task_alloc();
  sub_26A851BD8();
  v2[28] = sub_26A851BC8();
  v2[29] = sub_26A851B78();
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_26A72FC28);
}

uint64_t sub_26A72FC28()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  *(v0 + 248) = *(**(v0 + 128) + 112);
  swift_beginAccess();
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {

LABEL_6:
    sub_26A505D1C();
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_2_9();

    return v20();
  }

  v3 = *(v0 + 216);
  result = sub_26A4EF020();
  v5 = *v3;
  *(v0 + 256) = *v3;
  v6 = v3[1];
  *(v0 + 264) = v6;
  v7 = *(v6 + 16);
  *(v0 + 272) = v7;
  if (v7 < v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *v10;
  v12 = *(*v10 + 120);
  *(v0 + 280) = v12;
  *(v0 + 288) = *(v11 + 128);
  *(v0 + 296) = v5;
  if (v5 == v7)
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 192);

    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
    OUTLINED_FUNCTION_34_11();
    sub_26A732630(v14, v10 + v13);
    swift_endAccess();

    sub_26A72F1BC(v18, v19);
    goto LABEL_6;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v5 >= *(v6 + 16))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  (*(v9 + 16))(*(v0 + 152), v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, *(v0 + 136));
  sub_26A50429C(v10 + v12, v0 + 16);
  v21 = swift_task_alloc();
  *(v0 + 304) = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_5_66(v21);

  return sub_26A685678();
}

uint64_t sub_26A72FEFC()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v3 = v2;
  v4 = v1[19];
  v5 = v1[18];
  v6 = v1[17];
  *v3 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_26A73007C);
}

uint64_t sub_26A73007C()
{
  v1 = v0[22];
  if (__swift_getEnumTagSinglePayload(v0[21], 1, v1) != 1)
  {
    v13 = v0[31];
    v14 = v0[26];
    v15 = v0[24];
    v16 = v0[16];

    v17 = OUTLINED_FUNCTION_33_11();
    sub_26A727B6C(v17, v18);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
    swift_beginAccess();
    sub_26A732630(v15, v16 + v13);
    swift_endAccess();
    sub_26A732754();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v1);
    sub_26A72EFA0();
    sub_26A7325DC();
    goto LABEL_5;
  }

  result = sub_26A505D1C();
  v3 = v0[37] + 1;
  v0[37] = v3;
  if (v3 == v0[34])
  {
    v4 = v0[31];
    v5 = v0[26];
    v6 = v0[24];
    v7 = v0[16];

    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    OUTLINED_FUNCTION_34_11();
    sub_26A732630(v6, v7 + v4);
    swift_endAccess();

    sub_26A72F1BC(v11, v12);
LABEL_5:
    sub_26A505D1C();
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_2_9();

    return v25();
  }

  if ((v0[32] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v0[33];
  if (v3 >= *(v26 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v27 = v0[35];
  v28 = v0[16];
  (*(v0[18] + 16))(v0[19], v26 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v3, v0[17]);
  sub_26A50429C(v28 + v27, (v0 + 2));
  v29 = swift_task_alloc();
  v0[38] = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_5_66(v29);

  return sub_26A685678();
}

uint64_t sub_26A730364()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedWidth.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A7303B0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.imageElementFixedHeight.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t type metadata accessor for RFImageView(uint64_t a1)
{
  result = qword_2803B6288;
  if (!qword_2803B6288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7304E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A4EF6D0();
  return a7(v11);
}

uint64_t sub_26A730674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  v11 = View.eraseToAnyView()(a4);
  (*(v6 + 8))(v9, a4);
  return v11;
}

void RFImageView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26A84F9E8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF0, &qword_26A87CB90);
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_26A7309CC(v1, &v29);
  v28 = v29;
  v26 = BYTE1(v30);
  v27 = v30;
  KeyPath = swift_getKeyPath();
  sub_26A84F9D8();
  sub_26A8514B8();
  v21 = sub_26A7329BC();
  sub_26A84EE38();

  (*(v6 + 8))(v10, v4);
  (*(v13 + 16))(v17, v20, v11);
  v29 = v4;
  v30 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_26A84F058();
  (*(v13 + 8))(v20, v11);
  *v3 = v28;
  v23 = v26;
  *(v3 + 8) = v27;
  *(v3 + 9) = v23;
  *(v3 + 16) = KeyPath;
  *(v3 + 24) = 1;
  *(v3 + 32) = v22;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7309CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A730D18();
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + *(type metadata accessor for RFImageView(0) + 28));
    if (v6)
    {
      v6(v5);
    }

    else
    {
    }

    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
    sub_26A6D1B70();
    sub_26A84FDF8();

LABEL_14:

    goto LABEL_15;
  }

  v7 = type metadata accessor for RFImageView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08, &qword_26A87CC18);
  sub_26A506A30();
  sub_26A84EEF8();
  v9 = sub_26A72F0F0(v8);

  if (!v9 || (, v10 = sub_26A75750C(), , , (v10 & 1) == 0))
  {
    v12 = *(a1 + *(v7 + 28));
    if (v12)
    {
      v12(0);
    }

    else
    {
      sub_26A731130();
    }

    sub_26A84FDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
    sub_26A6D1B70();
    sub_26A84FDF8();
    goto LABEL_14;
  }

  v11 = *(a1 + *(v7 + 28));
  if (v11)
  {
    v11(1);
  }

  else
  {
    sub_26A731130();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
  sub_26A6D1B70();
  result = sub_26A84FDF8();
LABEL_15:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 9) = v16;
  return result;
}

uint64_t sub_26A730D18()
{
  v0 = type metadata accessor for RFImageView(0);
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28, &unk_26A872090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - v5;
  MEMORY[0x28223BE20](v7);
  v14[0] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08, &qword_26A87CC18);
  sub_26A506A30();
  sub_26A84EEF8();
  v8 = sub_26A84B258();
  v14[4] = v8;
  v9 = sub_26A7329BC();
  v14[5] = v9;
  swift_getKeyPath();
  v14[2] = v8;
  v14[3] = v9;
  swift_getKeyPath();
  sub_26A84EC18();

  sub_26A732754();
  sub_26A4EF6D0();
  v10 = type metadata accessor for ImageSourceModel(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
  {
    sub_26A84EEF8();
    type metadata accessor for EnvironmentImagePreferences(0);
    sub_26A72F28C();

    sub_26A7325DC();
    if (__swift_getEnumTagSinglePayload(v3, 1, v10) != 1)
    {
      sub_26A505D1C();
    }
  }

  else
  {
    sub_26A7325DC();
    sub_26A727B6C(v3, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  }

  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_26A505D1C();
    sub_26A505D1C();
    return 0;
  }

  else
  {
    sub_26A68A2F0();
    v11 = v12;
    sub_26A505D1C();
    sub_26A7325DC();
  }

  return v11;
}

uint64_t sub_26A731130()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B62D8, &qword_26A87D828);
  MEMORY[0x28223BE20](v1);
  v56 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B62E0, &unk_26A87D830);
  MEMORY[0x28223BE20](v51);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50, &unk_26A867F20);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v45 - v10;
  v11 = sub_26A84B2F8();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8, &unk_26A8591C0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = sub_26A84B408();
  v54 = *(v23 - 8);
  v55 = v23;
  MEMORY[0x28223BE20](v23);
  v53 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for RFImageView(0) + 24);
  v48 = v0;
  v26 = *(v0 + v25);
  sub_26A7DBBF8(v26, v22);
  v27 = sub_26A84B258();
  if (__swift_getEnumTagSinglePayload(v22, 1, v27) == 1)
  {
    sub_26A505D1C();
LABEL_11:
    sub_26A84FE98();
    sub_26A7DBBF8(v26, v19);
    sub_26A72E9D8();
    sub_26A505D1C();
    v40 = &v5[*(v1 + 36)];
    v41 = type metadata accessor for VibrancyModifier(0);
    v42 = *(v41 + 20);
    *&v40[v42] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    v43 = &v40[*(v41 + 24)];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    *v40 = 2;
    sub_26A4EF6D0();
    sub_26A731FD8(&qword_28157FD98, &qword_2803B62D8, &qword_26A87D828, sub_26A732078);
    v36 = sub_26A851248();
    sub_26A505D1C();
    return v36;
  }

  v46 = v1;
  v28 = *(v27 - 8);
  if ((*(v28 + 88))(v22, v27) != *MEMORY[0x277D62C68])
  {
    (*(v28 + 8))(v22, v27);
    v1 = v46;
    goto LABEL_11;
  }

  (*(v28 + 96))(v22, v27);
  (*(v54 + 32))(v53, v22, v55);
  sub_26A84B3D8();
  v29 = v52;
  (*(v52 + 104))(v13, *MEMORY[0x277D62D20], v11);
  sub_26A7329BC();
  sub_26A851A48();
  sub_26A851A48();
  v30 = *(v29 + 8);
  v30(v13, v11);
  v30(v16, v11);
  v1 = v46;
  if (v58 != v57)
  {
    type metadata accessor for EnvironmentImagePreferences(0);
    v37 = v47;
    sub_26A4EF6D0();
    v38 = sub_26A84B1D8();
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      sub_26A505D1C();
    }

    else
    {
      v39 = ImageElement.ImageStyle.isContactStyle.getter();
      (*(*(v38 - 8) + 8))(v37, v38);
      if (v39)
      {
        goto LABEL_5;
      }
    }

    (*(v54 + 8))(v53, v55);
    goto LABEL_11;
  }

LABEL_5:
  sub_26A84FE98();
  sub_26A7DBBF8(v26, v19);
  v31 = v50;
  sub_26A72E9D8();
  sub_26A505D1C();
  v32 = &v31[*(v51 + 36)];
  v33 = type metadata accessor for VibrancyModifier(0);
  v34 = *(v33 + 20);
  *&v32[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  v35 = &v32[*(v33 + 24)];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  *v32 = 2;
  sub_26A4EF6D0();
  sub_26A731FD8(&qword_2803B62F0, &qword_2803B62E0, &unk_26A87D830, sub_26A732160);
  v36 = sub_26A851248();
  sub_26A505D1C();
  (*(v54 + 8))(v53, v55);
  return v36;
}

uint64_t sub_26A7319B4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A731994();
  *v0 = result;
  return result;
}

uint64_t sub_26A731A34(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

void sub_26A731ACC(uint64_t a1)
{
  type metadata accessor for EnvironmentImagePreferences(319);
  if (v1 <= 0x3F)
  {
    sub_26A727444(319);
    if (v3 <= 0x3F)
    {
      sub_26A7274E8(319, v2);
      if (v4 <= 0x3F)
      {
        sub_26A586908(319);
        if (v5 <= 0x3F)
        {
          sub_26A731B98();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A731B98()
{
  if (!qword_2803B6298)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B6298);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SnippetUI11RFImageViewV15AsyncImagePhaseO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A731C00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A731C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_26A731CC0()
{
  result = qword_2803B62A0;
  if (!qword_2803B62A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62A8, &qword_26A87D808);
    sub_26A731D78();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62A0);
  }

  return result;
}

unint64_t sub_26A731D78()
{
  result = qword_2803B62B0;
  if (!qword_2803B62B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62B8, &unk_26A87D810);
    sub_26A6D1A60();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62B0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy10SnippetKit12ImageElementV0L5StyleOSgGGAaBHPxAaBHD1__AmA0cI0HPyHCHCTm(uint64_t *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2, v3);
  sub_26A84F4F8();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  OUTLINED_FUNCTION_58();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyADyxAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGGAKGAaBHPAlaBHPxAaBHD1__AkA0cI0HPyHCHC_AkaNHPyHCHCTm(uint64_t *a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_50_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v2, v3);
  sub_26A84F4F8();
  sub_26A84F4F8();
  OUTLINED_FUNCTION_3_11();
  sub_26A506A30();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_26A731F84()
{
  result = qword_28157FD38;
  if (!qword_28157FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD38);
  }

  return result;
}

uint64_t sub_26A731FD8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_50_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_26A7329BC();
    OUTLINED_FUNCTION_58();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A732078()
{
  result = qword_28157FE08;
  if (!qword_28157FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B62E8, &unk_26A87D8A0);
    sub_26A506A30();
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE08);
  }

  return result;
}

unint64_t sub_26A732160()
{
  result = qword_2803B62F8;
  if (!qword_2803B62F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6300, &unk_26A87D8B0);
    sub_26A506A30();
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B62F8);
  }

  return result;
}

uint64_t sub_26A7322B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0, &qword_26A86CE78);
  __swift_allocate_value_buffer(v0, qword_2803D2378);
  v1 = __swift_project_value_buffer(v0, qword_2803D2378);
  v2 = sub_26A84E288();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_26A73232C()
{
  if (qword_2803A8DF0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B16E0, &qword_26A86CE78);
  __swift_project_value_buffer(v0, qword_2803D2378);
  return sub_26A4EF6D0();
}

uint64_t sub_26A7323BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A732908();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A732420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A732830();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A732484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A68165C();
  *a1 = result;
  return result;
}

uint64_t sub_26A732500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_26A852068();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  return sub_26A6814F8();
}

uint64_t sub_26A7325DC()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A732630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6308, &qword_26A87D9A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7326A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A6E0E04;

  return sub_26A72F7EC();
}

uint64_t sub_26A732754()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_26A7327AC()
{
  result = qword_28157FD28;
  if (!qword_28157FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FD28);
  }

  return result;
}

unint64_t sub_26A732830()
{
  result = qword_2803B6310;
  if (!qword_2803B6310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B0188, &unk_26A868C80);
    sub_26A7328B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6310);
  }

  return result;
}

unint64_t sub_26A7328B4()
{
  result = qword_2803B6318;
  if (!qword_2803B6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6318);
  }

  return result;
}

unint64_t sub_26A732908()
{
  result = qword_2803B6320;
  if (!qword_2803B6320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B16E0, &qword_26A86CE78);
    sub_26A7329BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6320);
  }

  return result;
}

unint64_t sub_26A7329BC()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void OUTLINED_FUNCTION_3_73(uint64_t a1@<X8>)
{
  *a1 = sub_26A725F68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_26_15()
{
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return swift_beginAccess();
}

uint64_t sub_26A732B04()
{
  sub_26A732B34();
  result = sub_26A84FA88();
  qword_2815889D8 = result;
  return result;
}

unint64_t sub_26A732B34()
{
  result = qword_28157FCA0;
  if (!qword_28157FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCA0);
  }

  return result;
}

uint64_t sub_26A732B88()
{
  sub_26A732CF0();
  result = sub_26A84FA88();
  qword_2803D2390 = result;
  return result;
}

uint64_t sub_26A732BB8()
{
  sub_26A732C9C();
  result = sub_26A84FA88();
  qword_2803D2398 = result;
  return result;
}

uint64_t sub_26A732BE8()
{
  sub_26A732D44();
  result = sub_26A84FA88();
  qword_2815889E0 = result;
  return result;
}

uint64_t sub_26A732C18()
{
  sub_26A732C48();
  result = sub_26A84FA88();
  qword_2803D23A0 = result;
  return result;
}

unint64_t sub_26A732C48()
{
  result = qword_2803B6330;
  if (!qword_2803B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6330);
  }

  return result;
}

unint64_t sub_26A732C9C()
{
  result = qword_2803B6338;
  if (!qword_2803B6338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6338);
  }

  return result;
}

unint64_t sub_26A732CF0()
{
  result = qword_2803B6340;
  if (!qword_2803B6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6340);
  }

  return result;
}

unint64_t sub_26A732D44()
{
  result = qword_28157FCB8;
  if (!qword_28157FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCB8);
  }

  return result;
}

uint64_t static ButtonStyle<>.siriCircularRegularTitleAndIcon.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 256;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.siriCircularIconOnly.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 0;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.circularSiriButton.getter()
{
  OUTLINED_FUNCTION_4_69();
  *v0 = 0;
  KeyPath = swift_getKeyPath();
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

uint64_t static ButtonStyle<>.siriCircularSmallIconOnly.getter()
{
  OUTLINED_FUNCTION_4_69();
  KeyPath = swift_getKeyPath();
  *v0 = 1;
  return OUTLINED_FUNCTION_2_80(KeyPath);
}

void *CircularSiriButtonStyle.makeBody(configuration:)@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_26A732F14(a2, &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_26A732F14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_26A84FAD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6358, &qword_26A87DE08);
  MEMORY[0x28223BE20](v77);
  v78 = v71 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6360, &qword_26A87DE10);
  MEMORY[0x28223BE20](v76);
  v79 = v71 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6368, &qword_26A87DE18);
  MEMORY[0x28223BE20](v83);
  v80 = v71 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6370, &unk_26A87DE20);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v81 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v71 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6378, &qword_26A87DE30);
  MEMORY[0x28223BE20](v86);
  v74 = v71 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6380, &qword_26A87DE38);
  MEMORY[0x28223BE20](v75);
  v72 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v73 = v71 - v22;
  v23 = *(v2 + 1);
  v24 = *(v2 + 8);
  v25 = *(v2 + 16);
  if ((*v2 & 1) == 0)
  {
    LOBYTE(v91) = 0;
    BYTE1(v91) = v23;
    *(&v91 + 1) = v24;
    LOBYTE(v92) = v25;
    sub_26A73395C(v88, v21);
    LOBYTE(v91) = 0;
    BYTE1(v91) = v23;
    *(&v91 + 1) = v24;
    LOBYTE(v92) = v25;
    sub_26A73395C(v89, v59);
    v27 = v89[2];
    LOBYTE(v91) = 0;
    BYTE1(v91) = v23;
    *(&v91 + 1) = v24;
    LOBYTE(v92) = v25;
    sub_26A73395C(&v90, v60);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_11:
    v61 = v74;
    sub_26A84FFB8();
    v62 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v62);
    v63 = sub_26A8503E8();
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v65 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6388, &qword_26A87DE70) + 36)];
    *v65 = KeyPath;
    v65[1] = v63;
    v66 = swift_getKeyPath();
    v67 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6390, &qword_26A87DEA0) + 36)];
    *v67 = v66;
    *(v67 + 1) = v27;
    v67[16] = 0;
    v68 = swift_getKeyPath();
    v69 = &v61[*(v86 + 36)];
    *v69 = v68;
    *(v69 + 1) = v27;
    v69[16] = 0;
    *&v91 = swift_getKeyPath();
    BYTE8(v91) = 0;
    sub_26A734158();
    sub_26A7343F4();
    v70 = v73;
    sub_26A850948();

    sub_26A4D6FD8();
    *(v70 + *(v75 + 36)) = 0;
    sub_26A4B4A20(v70, v72);
    sub_26A734448();
    v57 = sub_26A851248();
    result = sub_26A4B4A88();
    goto LABEL_12;
  }

  v71[1] = a1;
  LOBYTE(v91) = 1;
  BYTE1(v91) = v23;
  *(&v91 + 1) = v24;
  LOBYTE(v92) = v25;
  sub_26A73395C(v88, v21);
  LOBYTE(v91) = 1;
  BYTE1(v91) = v23;
  *(&v91 + 1) = v24;
  LOBYTE(v92) = v25;
  sub_26A73395C(v89, v26);
  v27 = v89[3];
  LOBYTE(v91) = 1;
  BYTE1(v91) = v23;
  *(&v91 + 1) = v24;
  LOBYTE(v92) = v25;
  sub_26A73395C(&v90, v28);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = v78;
  sub_26A84FFB8();
  v30 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v30);
  v31 = sub_26A8503E8();
  sub_26A4D6FD8();
  v32 = swift_getKeyPath();
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6388, &qword_26A87DE70) + 36));
  *v33 = v32;
  v33[1] = v31;
  v34 = swift_getKeyPath();
  v35 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6390, &qword_26A87DEA0) + 36);
  *v35 = v34;
  *(v35 + 8) = v27;
  *(v35 + 16) = 0;
  v36 = swift_getKeyPath();
  v37 = v29 + *(v86 + 36);
  *v37 = v36;
  *(v37 + 8) = v27;
  *(v37 + 16) = 0;
  sub_26A851448();
  sub_26A84F028();
  v38 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6398, &qword_26A87DED0) + 36));
  v39 = v92;
  *v38 = v91;
  v38[1] = v39;
  v38[2] = v93;
  v40 = sub_26A84FE98();
  LOBYTE(v34) = sub_26A850248();
  v41 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B63A0, &qword_26A87DED8) + 36);
  *v41 = v40;
  *(v41 + 4) = v34;
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B63A8, &qword_26A87DEE0) + 36)) = 256;
  *(v29 + *(v77 + 36)) = 0;
  if (sub_26A84FFC8())
  {
    v42 = 0.5;
  }

  else
  {
    v42 = 0.8;
  }

  v43 = v79;
  sub_26A544EC8(v29, v79, &qword_2803B6358, &qword_26A87DE08);
  *(v43 + *(v76 + 36)) = v42;
  if (sub_26A84FFC8())
  {
    v44 = 0.98;
  }

  else
  {
    v44 = 1.0;
  }

  sub_26A8515A8();
  v46 = v45;
  v48 = v47;
  v49 = v80;
  sub_26A544EC8(v43, v80, &qword_2803B6360, &qword_26A87DE10);
  v50 = v83;
  v51 = v49 + *(v83 + 36);
  *v51 = v44;
  *(v51 + 8) = v44;
  *(v51 + 16) = v46;
  *(v51 + 24) = v48;
  sub_26A84FAC8();
  v52 = sub_26A733D8C();
  v53 = sub_26A7343B0();
  v54 = v82;
  sub_26A850948();
  (*(v6 + 8))(v8, v5);
  sub_26A4D6FD8();
  v55 = v84;
  v56 = v85;
  (*(v84 + 16))(v81, v54, v85);
  v87[0] = v50;
  v87[1] = v5;
  v87[2] = v52;
  v87[3] = v53;
  swift_getOpaqueTypeConformance2();
  v57 = sub_26A851248();
  result = (*(v55 + 8))(v54, v56);
LABEL_12:
  *a2 = v57;
  return result;
}

uint64_t sub_26A733B6C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t sub_26A733BA8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_26A733C04(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A733CE0()
{
  result = qword_2803B6348;
  if (!qword_2803B6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6348);
  }

  return result;
}

unint64_t sub_26A733D38()
{
  result = qword_2803B6350;
  if (!qword_2803B6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6350);
  }

  return result;
}

unint64_t sub_26A733D8C()
{
  result = qword_2803B63B0;
  if (!qword_2803B63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6368, &qword_26A87DE18);
    sub_26A733E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63B0);
  }

  return result;
}

unint64_t sub_26A733E18()
{
  result = qword_2803B63B8;
  if (!qword_2803B63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6360, &qword_26A87DE10);
    sub_26A733EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63B8);
  }

  return result;
}

unint64_t sub_26A733EA4()
{
  result = qword_2803B63C0;
  if (!qword_2803B63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6358, &qword_26A87DE08);
    sub_26A733F5C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63C0);
  }

  return result;
}

unint64_t sub_26A733F5C()
{
  result = qword_2803B63C8;
  if (!qword_2803B63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B63A8, &qword_26A87DEE0);
    sub_26A734014();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63C8);
  }

  return result;
}

unint64_t sub_26A734014()
{
  result = qword_2803B63D0;
  if (!qword_2803B63D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B63A0, &qword_26A87DED8);
    sub_26A7340CC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63D0);
  }

  return result;
}

unint64_t sub_26A7340CC()
{
  result = qword_2803B63D8;
  if (!qword_2803B63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6398, &qword_26A87DED0);
    sub_26A734158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63D8);
  }

  return result;
}

unint64_t sub_26A734158()
{
  result = qword_2803B63E0;
  if (!qword_2803B63E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6378, &qword_26A87DE30);
    sub_26A734210();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63E0);
  }

  return result;
}

unint64_t sub_26A734210()
{
  result = qword_2803B63E8;
  if (!qword_2803B63E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6390, &qword_26A87DEA0);
    sub_26A7342C8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63E8);
  }

  return result;
}

unint64_t sub_26A7342C8()
{
  result = qword_2803B63F0;
  if (!qword_2803B63F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6388, &qword_26A87DE70);
    sub_26A7343B0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B63F0);
  }

  return result;
}

unint64_t sub_26A7343B0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A7343F4()
{
  result = qword_2803B6410;
  if (!qword_2803B6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6410);
  }

  return result;
}

unint64_t sub_26A734448()
{
  result = qword_2803B6418;
  if (!qword_2803B6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6380, &qword_26A87DE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6378, &qword_26A87DE30);
    sub_26A734158();
    sub_26A7343F4();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6418);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_80(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_26A734574(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26A852168();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void RFTextProperty.asPartialText()(uint64_t a1@<X8>)
{
  v8 = sub_26A7364C8(v2);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = v8;
  if (!sub_26A734574(v8))
  {
    goto LABEL_20;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_70();
LABEL_6:
    OUTLINED_FUNCTION_9_50();
    v12 = sub_26A73662C(v3, &selRef_formatted_text, &qword_28157D850, 0x277D4BFE0);
    if (!v12)
    {
      goto LABEL_21;
    }

    sub_26A734574(v12);
    OUTLINED_FUNCTION_9_50();
    if (v3 != 1)
    {
      goto LABEL_21;
    }

    v13 = sub_26A7364C8(v2);
    if (!v13)
    {
      goto LABEL_21;
    }

    v14 = v13;
    if (!sub_26A734574(v13))
    {
      goto LABEL_20;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_1_84();
    if (!v15)
    {
      __break(1u);
      goto LABEL_65;
    }

    v16 = *(v14 + 32);
    while (1)
    {
      OUTLINED_FUNCTION_9_50();
      v17 = sub_26A73662C(v3, &selRef_formatted_text, &qword_28157D850, 0x277D4BFE0);
      if (v17)
      {
        v18 = v17;
        if (sub_26A734574(v17))
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
LABEL_65:
            OUTLINED_FUNCTION_4_70();
          }

          else
          {
            OUTLINED_FUNCTION_1_84();
            if (!v19)
            {
              __break(1u);
              return;
            }

            v20 = *(v18 + 32);
          }

          v21 = [v3 text_encapsulation];

          if (v21)
          {
            v3 = [v21 style];

            v6 = v3 == 2;
            goto LABEL_22;
          }
        }

        else
        {
LABEL_20:
        }
      }

LABEL_21:
      v6 = 0;
LABEL_22:
      v22 = sub_26A7364C8(v2);
      v9 = v22;
      v5 = &off_279CA3000;
      if (!v22)
      {
        goto LABEL_32;
      }

      if (!sub_26A734574(v22))
      {

LABEL_31:
        LOBYTE(v9) = 0;
        goto LABEL_32;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_4_70();
      }

      else
      {
        OUTLINED_FUNCTION_1_84();
        if (!v23)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v24 = *(v9 + 32);
      }

      v9 = [v3 show:OUTLINED_FUNCTION_9_50() more:? on:?tap];

      if (v9)
      {
        v25 = [v9 shows_without_truncation];

        if (v25)
        {
          LOBYTE(v9) = [v25 value];

          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_32:
      sub_26A734BFC(0, v68);
      OUTLINED_FUNCTION_10_45(__src);
      v26 = sub_26A7364C8(v2);
      v3 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }

      if (!sub_26A734574(v26))
      {

LABEL_40:
        v3 = 0;
LABEL_41:
        v4 = 1;
        goto LABEL_42;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x26D6644E0](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v27 = *(v3 + 32);
      }

      v28 = v27;

      v29 = [v28 line_limit];

      if (!v29)
      {
        goto LABEL_40;
      }

      v3 = [v29 integerValue];

      v4 = 0;
LABEL_42:
      v30 = sub_26A7364C8(v2);
      if (!v30)
      {
        goto LABEL_50;
      }

      v2 = v30;
      if (!sub_26A734574(v30))
      {

        goto LABEL_50;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_59;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v2 + 32);
        goto LABEL_47;
      }

LABEL_62:
      __break(1u);
LABEL_63:
      OUTLINED_FUNCTION_4_70();
    }
  }

  OUTLINED_FUNCTION_1_84();
  if (v10)
  {
    v11 = *(v9 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_59:
  v31 = MEMORY[0x26D6644E0](0, v2);
LABEL_47:
  v32 = v31;

  v33 = [v32 v5[44]];

  if (v33)
  {
    v34 = sub_26A736538(v33);
    v36 = v35;
  }

  else
  {
LABEL_50:
    v34 = 0;
    v36 = 0;
  }

  KeyPath = swift_getKeyPath();
  v66 = 0;
  v38 = swift_getKeyPath();
  v65 = 0;
  v51 = swift_getKeyPath();
  v64 = 0;
  if (sub_26A7D18DC() < 1)
  {
    sub_26A4F5680(v68, &v53);
    sub_26A7D1500();
    v53 = v46;
    sub_26A4F5A04();
    v45 = sub_26A851248();
  }

  else
  {
    v39 = swift_getKeyPath();
    v59 = swift_getKeyPath();
    v60 = 0;
    swift_unknownObjectWeakInit();
    v50 = KeyPath;
    v40 = v38;
    v41 = v36;
    v42 = v3;
    v43 = v9;
    v9 = objc_allocWithZone(type metadata accessor for PopOverManager(0));
    sub_26A4F5680(v68, v52);
    [v9 init];
    v53 = swift_getKeyPath();
    v54 = 0;
    v55 = swift_getKeyPath();
    v56 = 0;
    v57 = v39;
    v58 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0, &qword_26A85A4C0);
    swift_allocObject();
    v61 = sub_26A84EBA8();
    OUTLINED_FUNCTION_10_45(v62);
    sub_26A51D158();
    LOBYTE(v9) = v43;
    v3 = v42;
    v36 = v41;
    v38 = v40;
    KeyPath = v50;
    v62[15] = sub_26A84F258();
    v62[16] = v44;
    sub_26A4F56DC(&v53, v52);
    sub_26A51D1B0();
    v45 = sub_26A851248();
    sub_26A4F5E34(&v53);
  }

  memcpy(&v63[7], __src, 0x78uLL);
  LOBYTE(v53) = v4;
  v47 = v66;
  v48 = v65;
  v49 = v64;
  *a1 = KeyPath;
  *(a1 + 8) = v47;
  *(a1 + 16) = v38;
  *(a1 + 24) = v48;
  *(a1 + 32) = v51;
  *(a1 + 40) = v49;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = v45;
  *(a1 + 88) = 1;
  memcpy((a1 + 89), v63, 0x7FuLL);
  *(a1 + 216) = v3;
  *(a1 + 224) = v4;
  *(a1 + 232) = v34;
  *(a1 + 240) = v36;
  *(a1 + 248) = v6;
  *(a1 + 249) = v9;
}

uint64_t sub_26A734B9C()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F958();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

void *sub_26A734BFC@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = sub_26A7364C8(v3);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v53 = sub_26A734574(v7);
  v51 = v7;
  if (v53)
  {
    v8 = 0;
    v9 = 0;
    v52 = v7 & 0xC000000000000001;
    v49 = v7 + 32;
    v50 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = v6;
    while (1)
    {
      if (v52)
      {
        v11 = MEMORY[0x26D6644E0](v9, v51);
      }

      else
      {
        if (v9 >= *(v50 + 16))
        {
          goto LABEL_67;
        }

        v11 = *(v49 + 8 * v9);
      }

      v12 = v11;
      v13 = __OFADD__(v9, 1);
      v14 = v9 + 1;
      if (v13)
      {
        break;
      }

      v15 = sub_26A589524(v11);
      if (v15)
      {
        v7 = v15;
      }

      else
      {
        v7 = v6;
      }

      if (v7 >> 62)
      {
        v4 = sub_26A852168();
      }

      else
      {
        v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v12;
      v55 = v14;
      if (v4)
      {
        if (v4 < 1)
        {
          goto LABEL_65;
        }

        v16 = 0;
LABEL_19:
        if ((v7 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x26D6644E0](v16, v7);
        }

        else
        {
          v17 = *(v7 + 32 + 8 * v16);
        }

        v18 = v17;
        if (a1)
        {
          v19 = [v17 font];
          if (v19)
          {
            v20 = v19;
            v21 = sub_26A5FA038();

            if (v21)
            {

              [v18 setFont_];
            }
          }

          v22 = [v18 color];
          if (v22)
          {

            [v18 setColor_];
          }
        }

        ++v16;
        v23 = sub_26A7CDD40(v8);
        v6 = v23;
        v24 = *(v23 + 16) + 1;
        v25 = 73;
        while (--v24)
        {
          v26 = *(v23 + v25);
          v25 += 48;
          if (v26 == 1)
          {
            goto LABEL_33;
          }
        }

        if (!sub_26A7D1C0C(v23))
        {
          goto LABEL_34;
        }

LABEL_33:
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          break;
        }

LABEL_34:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_0_53();
          sub_26A7A12A0(v29, v30, v31, v10);
          v10 = v32;
        }

        v28 = *(v10 + 16);
        v27 = *(v10 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_26A7A12A0(v27 > 1, v28 + 1, 1, v10);
          v10 = v33;
        }

        *(v10 + 16) = v28 + 1;
        *(v10 + 8 * v28 + 32) = v6;
        if (v16 != v4)
        {
          goto LABEL_19;
        }
      }

      v9 = v55;
      v6 = MEMORY[0x277D84F90];
      if (v55 == v53)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v10 = v6;
LABEL_43:

  v34 = 0;
  v35 = *(v10 + 16);
  v7 = MEMORY[0x277D84F90];
  v6 = &type metadata for FormattedTextModel.Run;
  while (v35 != v34)
  {
    if (v34 >= *(v10 + 16))
    {
      goto LABEL_60;
    }

    v36 = *(v10 + 8 * v34 + 32);
    v4 = *(v36 + 16);
    v37 = *(v7 + 16);
    if (__OFADD__(v37, v4))
    {
      goto LABEL_61;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v4 > *(v7 + 24) >> 1)
    {
      sub_26A7A1034();
      v7 = v38;
    }

    if (*(v36 + 16))
    {
      if ((*(v7 + 24) >> 1) - *(v7 + 16) < v4)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v4)
      {
        v39 = *(v7 + 16);
        v13 = __OFADD__(v39, v4);
        v40 = v39 + v4;
        if (v13)
        {
          goto LABEL_66;
        }

        *(v7 + 16) = v40;
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_62;
      }
    }

    ++v34;
  }

  sub_26A736164(v41);
  v6 = v42;
  v4 = v43;
  if (qword_2803A8BD0 != -1)
  {
LABEL_68:
    swift_once();
  }

  v44 = xmmword_2803B0080;
  v45 = byte_2803B0090;
  v46 = qword_2803B0098;
  sub_26A4EF6C0(xmmword_2803B0080, *(&xmmword_2803B0080 + 1), byte_2803B0090);

  sub_26A7D193C(v7, v44, *(&v44 + 1), v45, v46, v6, v4, __src);
  return memcpy(a2, __src, 0x78uLL);
}

void sub_26A735084(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_26A734574(a1);
  v8 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    sub_26A7364A4(v8, v9 == 0, a1);
    if (v9)
    {
      v11 = MEMORY[0x26D6644E0](v8, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v8 + 32);
    }

    v2 = v11;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    sub_26A734BFC(0, __src);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_53();
      sub_26A7A1824();
      v10 = v12;
    }

    v3 = v10[2];
    v2 = v3 + 1;
    if (v3 >= v10[3] >> 1)
    {
      sub_26A7A1824();
      v10 = v13;
    }

    v10[2] = v2;
    memcpy(&v10[15 * v3 + 4], __src, 0x78uLL);
    ++v8;
  }

  v86 = v7;
  v87 = a1 & 0xC000000000000001;
  v88 = a1;
  v85 = a2;
  v14 = v10[2];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v97[0] = MEMORY[0x277D84F90];
    sub_26A7DCE88(0, v14, 0);
    v15 = v97[0];
    v16 = (v10 + 4);
    v2 = 48;
    do
    {
      memcpy(__dst, v16, 0x78uLL);
      v17 = swift_allocObject();
      memmove((v17 + 16), v16, 0x78uLL);
      sub_26A4F5680(__dst, v89);
      v97[0] = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A7DCE88((v18 > 1), v19 + 1, 1);
        v2 = 48;
        v15 = v97[0];
      }

      *(v15 + 16) = v19 + 1;
      v20 = v15 + 48 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = 0u;
      *(v20 + 56) = 0u;
      *(v20 + 72) = 1024;
      v16 += 120;
      --v14;
    }

    while (v14);
  }

  if (qword_2803A8BE0 != -1)
  {
    swift_once();
  }

  a2 = *(&xmmword_2803B00C0 + 1);
  v3 = xmmword_2803B00C0;
  v21 = byte_2803B00D0;
  v4 = qword_2803B00D8;
  v22 = v10[2];
  sub_26A4EF6C0(xmmword_2803B00C0, *(&xmmword_2803B00C0 + 1), byte_2803B00D0);

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = 144;
LABEL_20:
  v26 = v25 + 120 * v23;
  while (v22 != v23)
  {
    if (v23 >= v10[2])
    {
      goto LABEL_48;
    }

    v27 = v26 + 120;
    ++v23;
    v2 = *(v10 + v26);
    v26 += 120;
    if (v2)
    {
      v83 = v3;
      v84 = v25;
      v82 = v4;
      v28 = *(v10 + v27 - 128);

      v29 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_53();
        sub_26A7A110C();
        v24 = v32;
      }

      v30 = *(v24 + 16);
      v25 = v84;
      if (v30 >= *(v24 + 24) >> 1)
      {
        sub_26A7A110C();
        v25 = v84;
        v24 = v33;
      }

      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v2;
      v3 = v83;
      a2 = v29;
      v4 = v82;
      goto LABEL_20;
    }
  }

  __dst[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420, &qword_26A87E1B0);
  sub_26A7366A8();
  v2 = sub_26A851718();
  v10 = v34;

  sub_26A7D193C(v15, v3, a2, v21, v4, v2, v10, v97);
  OUTLINED_FUNCTION_10_45(v95);
  v3 = v88;
  if (sub_26A734574(v88) != 1)
  {
    LOBYTE(v23) = 0;
    a2 = v87;
    if (v86)
    {
      goto LABEL_64;
    }

    v43 = 0;
    v44 = 0;
    v87 = 0;
    goto LABEL_46;
  }

  a2 = v87;
  if (!v86)
  {
    v43 = 0;
    v44 = 0;
    v87 = 0;
    LOBYTE(v23) = 0;
LABEL_46:
    LOBYTE(v4) = 1;
    goto LABEL_88;
  }

  if (v87)
  {
    goto LABEL_96;
  }

  OUTLINED_FUNCTION_1_84();
  if (!v35)
  {
    __break(1u);
    goto LABEL_98;
  }

  v36 = *(v88 + 32);
LABEL_34:
  v37 = sub_26A73662C(v36, &selRef_text_elements, &qword_28157D870, 0x277D4C168);
  if (v37)
  {
    v38 = v37;
    if (sub_26A734574(v37))
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        goto LABEL_102;
      }

      OUTLINED_FUNCTION_6_56();
      if (v39)
      {
        v40 = *(v38 + 32);
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_104;
    }

    goto LABEL_62;
  }

  while (1)
  {
LABEL_63:
    LOBYTE(v23) = 0;
LABEL_64:
    if (a2)
    {
      OUTLINED_FUNCTION_4_70();
    }

    else
    {
      OUTLINED_FUNCTION_1_84();
      if (!v54)
      {
        __break(1u);
        goto LABEL_94;
      }

      v55 = *(v3 + 32);
    }

    v56 = sub_26A73662C(v55, &selRef_text_elements, &qword_28157D870, 0x277D4C168);
    if (!v56)
    {
      goto LABEL_75;
    }

    v57 = v56;
    if (!sub_26A734574(v56))
    {

      goto LABEL_75;
    }

    if ((v57 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_6_56();
      if (v58)
      {
        v59 = *(v57 + 32);
        goto LABEL_72;
      }

      __break(1u);
LABEL_100:
      OUTLINED_FUNCTION_8_54();
LABEL_84:
      v67 = [v2 show:OUTLINED_FUNCTION_5_42() more:? on:?tap];

      if (!v67)
      {
        goto LABEL_87;
      }

      v43 = sub_26A736538(v67);
      v44 = v68;
LABEL_88:
      KeyPath = swift_getKeyPath();
      v94 = 0;
      v70 = swift_getKeyPath();
      v93 = 0;
      v71 = swift_getKeyPath();
      v92 = 0;
      if (sub_26A7D18DC() < 1)
      {
        sub_26A4F5680(v97, __dst);
        sub_26A7D1500();
        __dst[0] = v78;
        sub_26A4F5A04();
        v77 = sub_26A851248();
      }

      else
      {
        v72 = swift_getKeyPath();
        __dst[6] = swift_getKeyPath();
        BYTE1(__dst[7]) = 0;
        swift_unknownObjectWeakInit();
        v73 = KeyPath;
        v74 = v43;
        v75 = v23;
        v23 = objc_allocWithZone(type metadata accessor for PopOverManager(0));
        sub_26A4F5680(v97, v89);
        [v23 init];
        __dst[0] = swift_getKeyPath();
        LOBYTE(__dst[1]) = 0;
        __dst[2] = swift_getKeyPath();
        LOBYTE(__dst[3]) = 0;
        __dst[4] = v72;
        LOWORD(__dst[5]) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFC0, &qword_26A85A4C0);
        swift_allocObject();
        __dst[9] = sub_26A84EBA8();
        OUTLINED_FUNCTION_10_45(&__dst[10]);
        sub_26A51D158();
        LOBYTE(v23) = v75;
        v43 = v74;
        KeyPath = v73;
        __dst[25] = sub_26A84F258();
        __dst[26] = v76;
        sub_26A4F56DC(__dst, v89);
        sub_26A51D1B0();
        v77 = sub_26A851248();
        sub_26A4F5E34(__dst);
      }

      memcpy(&v91[7], v95, 0x78uLL);
      LOBYTE(__dst[0]) = v4;
      v79 = v94;
      v80 = v93;
      v81 = v92;
      *v85 = KeyPath;
      *(v85 + 8) = v79;
      *(v85 + 16) = v70;
      *(v85 + 24) = v80;
      *(v85 + 32) = v71;
      *(v85 + 40) = v81;
      *(v85 + 48) = 0u;
      *(v85 + 64) = 0u;
      *(v85 + 80) = v77;
      *(v85 + 88) = 1;
      memcpy((v85 + 89), v91, 0x7FuLL);
      *(v85 + 216) = v87;
      *(v85 + 224) = v4;
      *(v85 + 232) = v43;
      *(v85 + 240) = v44;
      *(v85 + 248) = v23;
      *(v85 + 249) = 0;
      return;
    }

LABEL_98:
    OUTLINED_FUNCTION_8_54();
LABEL_72:
    v60 = [v2 line_limit];

    if (v60)
    {
      v10 = [v60 integerValue];

      LOBYTE(v4) = 0;
      goto LABEL_76;
    }

LABEL_75:
    v10 = 0;
    LOBYTE(v4) = 1;
LABEL_76:
    if (!a2)
    {
      OUTLINED_FUNCTION_1_84();
      if (v61)
      {
        v62 = *(v3 + 32);
        goto LABEL_79;
      }

      __break(1u);
LABEL_96:
      OUTLINED_FUNCTION_4_70();
      goto LABEL_34;
    }

LABEL_94:
    OUTLINED_FUNCTION_4_70();
LABEL_79:
    v63 = sub_26A73662C(v62, &selRef_text_elements, &qword_28157D870, 0x277D4C168);
    v87 = v10;
    if (!v63)
    {
      goto LABEL_87;
    }

    v64 = v63;
    if (!sub_26A734574(v63))
    {

LABEL_87:
      v43 = 0;
      v44 = 0;
      goto LABEL_88;
    }

    if ((v64 & 0xC000000000000001) != 0)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_6_56();
    if (v65)
    {
      v66 = *(v64 + 32);
      goto LABEL_84;
    }

    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_8_54();
LABEL_39:
    OUTLINED_FUNCTION_5_42();
    v41 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850, 0x277D4BFE0);
    if (v41)
    {
      sub_26A734574(v41);
      OUTLINED_FUNCTION_5_42();
      if (v2 == 1)
      {
        if (a2)
        {
          OUTLINED_FUNCTION_4_70();
        }

        else
        {
LABEL_49:
          v42 = *(v3 + 32);
        }

        v45 = sub_26A73662C(v42, &selRef_text_elements, &qword_28157D870, 0x277D4C168);
        if (v45)
        {
          break;
        }
      }
    }
  }

  v46 = v45;
  if (!sub_26A734574(v45))
  {
    goto LABEL_62;
  }

  if ((v46 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_6_56();
    if (v47)
    {
      v48 = *(v46 + 32);
      goto LABEL_55;
    }

    __break(1u);
LABEL_106:
    OUTLINED_FUNCTION_8_54();
LABEL_60:
    v53 = [v2 text_encapsulation];

    if (v53)
    {
      v2 = [v53 style];

      LOBYTE(v23) = v2 == 2;
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_104:
  OUTLINED_FUNCTION_8_54();
LABEL_55:
  OUTLINED_FUNCTION_5_42();
  v49 = sub_26A73662C(v2, &selRef_formatted_text, &qword_28157D850, 0x277D4BFE0);
  if (!v49)
  {
    goto LABEL_63;
  }

  v50 = v49;
  if (!sub_26A734574(v49))
  {
LABEL_62:

    goto LABEL_63;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_6_56();
  if (v51)
  {
    v52 = *(v50 + 32);
    goto LABEL_60;
  }

  __break(1u);
}

uint64_t sub_26A735A38()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D7364();
  *v0 = result;
  return result;
}

uint64_t sub_26A735A8C(__n128 a1)
{
  v2 = sub_26A7364C8(v1);
  if (!v2)
  {
    goto LABEL_47;
  }

  v3 = v2;
  if (!sub_26A734574(v2))
  {
    goto LABEL_46;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_59:
    OUTLINED_FUNCTION_4_70();
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    if (!v4)
    {
      __break(1u);
      goto LABEL_61;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = sub_26A73662C(v6, &selRef_formatted_text, &qword_28157D850, 0x277D4BFE0);
  if (!v7)
  {
LABEL_47:
    RFTextProperty.asPartialText()(v31);
    sub_26A4EC4B4();
    return sub_26A851248();
  }

  v3 = v7;
  if (sub_26A734574(v7) < 2)
  {
LABEL_46:

    goto LABEL_47;
  }

  v30 = MEMORY[0x277D84F90];
  v8 = sub_26A734574(v3);
  if (!v8)
  {

    v3 = 0;
    v12 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v9 = v8;
  if (v8 < 1)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    sub_26A851B08();
    goto LABEL_51;
  }

  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D6644E0](v10, v3);
    }

    else
    {
      v13 = *(v3 + 8 * v10 + 32);
    }

    v14 = v13;
    v15 = sub_26A58945C(v13);
    if (v16)
    {
      if (v15 == 10 && v16 == 0xE100000000000000)
      {

LABEL_34:
        if (!v11)
        {
          goto LABEL_40;
        }

        v27 = v11;
        MEMORY[0x26D663CE0]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();

        v11 = 0;
        v12 = v30;
        goto LABEL_41;
      }

      v18 = sub_26A852598();

      if (v18)
      {
        goto LABEL_34;
      }
    }

    if (!v11)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D4C178]) init];
      v19 = [objc_allocWithZone(MEMORY[0x277D4C168]) init];
      sub_26A7365A8(MEMORY[0x277D84F90], v19, &qword_28157D850, 0x277D4BFE0, &selRef_setFormatted_text_);
      sub_26A4EC5B0(0, &qword_28157D7D0, 0x277CCABB0);
      v20 = sub_26A851FD8();
      [v19 setLine:v20 limit:?];

      if (!v11)
      {
        goto LABEL_39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150, &unk_26A857200);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_26A8571A0;
      *(v21 + 32) = v19;
      sub_26A7365A8(v21, v11, &qword_28157D870, 0x277D4C168, &selRef_setText_elements_);
    }

    v22 = sub_26A73662C(v11, &selRef_text_elements, &qword_28157D870, 0x277D4C168);
    if (!v22)
    {
      goto LABEL_40;
    }

    v23 = v22;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
      if (sub_26A852168())
      {
LABEL_26:
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x26D6644E0](0, v23);
        }

        else
        {
          if (!*(v24 + 16))
          {
            __break(1u);
            goto LABEL_59;
          }

          v25 = *(v23 + 32);
        }

        v19 = v25;

        v31[0] = sub_26A589524(v19);
        if (!v31[0])
        {
          [v19 setFormatted:0 text:?];
LABEL_39:

          goto LABEL_41;
        }

        v14 = v14;
        MEMORY[0x26D663CE0]();
        if (*((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();
        sub_26A4EC5B0(0, &qword_28157D850, 0x277D4BFE0);
        v26 = sub_26A851A88();

        [v19 setFormatted:v26 text:?];

LABEL_40:
        goto LABEL_41;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_41:
    ++v10;
  }

  while (v9 != v10);

  if (!v11)
  {
    v3 = 0;
    goto LABEL_54;
  }

  v3 = v11;
  MEMORY[0x26D663CE0]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_62;
  }

LABEL_51:
  sub_26A851B28();
  v12 = v30;
LABEL_54:
  if (sub_26A734574(v12) < 2)
  {

    RFTextProperty.asPartialText()(v31);
    sub_26A4EC4B4();
  }

  else
  {
    sub_26A51B744(v12, v31);
    sub_26A54AAEC();
    v31[0] = sub_26A851248();
  }

  v28 = sub_26A851248();

  return v28;
}

uint64_t sub_26A73602C()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.sfCommands.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A736080()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA99C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A7360CC()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A5DA9DC();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A736118()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A6668EC();
  return OUTLINED_FUNCTION_5_7(v0);
}

void sub_26A736164(__n128 a1)
{
  v2 = sub_26A7364C8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_26A734574(v2);
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
    for (i = v5; ; ++i)
    {
      if (v4 == i)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420, &qword_26A87E1B0);
        sub_26A7366A8();
        sub_26A851718();

        return;
      }

      if (v6)
      {
        v10 = MEMORY[0x26D6644E0](i, v3);
      }

      else
      {
        if (i >= *(v8 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(v3 + 8 * i + 32);
      }

      v11 = v10;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = sub_26A589524(v10);
      if (v12)
      {
        v13 = v12;
        v33 = v8;
        v34 = v3;
        v35 = v6;
        v36 = v4;
        v14 = sub_26A734574(v12);
        v15 = 0;
        v37 = MEMORY[0x277D84F90];
        while (v14 != v15)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x26D6644E0](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_34;
          }

          v19 = sub_26A58945C(v16);
          v21 = v20;

          ++v15;
          if (v21)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26A7A110C();
              v37 = v24;
            }

            v22 = *(v37 + 16);
            if (v22 >= *(v37 + 24) >> 1)
            {
              sub_26A7A110C();
              v37 = v25;
            }

            *(v37 + 16) = v22 + 1;
            v23 = v37 + 16 * v22;
            *(v23 + 32) = v19;
            *(v23 + 40) = v21;
            v15 = v18;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6420, &qword_26A87E1B0);
        sub_26A7366A8();
        v26 = sub_26A851718();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A110C();
          v7 = v31;
        }

        v8 = v33;
        v3 = v34;
        v29 = *(v7 + 16);
        if (v29 >= *(v7 + 24) >> 1)
        {
          sub_26A7A110C();
          v7 = v32;
        }

        *(v7 + 16) = v29 + 1;
        v30 = v7 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v28;
        v6 = v35;
        v4 = v36;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

unint64_t sub_26A7364A4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A7364C8(void *a1)
{
  v1 = [a1 text_elements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A4EC5B0(0, &qword_28157D870, 0x277D4C168);
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A736538(void *a1)
{
  v2 = [a1 affordanceLabel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

void sub_26A7365A8(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_26A4EC5B0(0, a3, a4);
  v7 = sub_26A851A88();

  [a2 *a5];
}

uint64_t sub_26A73662C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v7 = [a1 *a2];

  if (!v7)
  {
    return 0;
  }

  sub_26A4EC5B0(0, a3, a4);
  v8 = sub_26A851A98();

  return v8;
}

unint64_t sub_26A7366A8()
{
  result = qword_2803B6428;
  if (!qword_2803B6428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6420, &qword_26A87E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6428);
  }

  return result;
}

void OUTLINED_FUNCTION_4_70()
{

  JUMPOUT(0x26D6644E0);
}

void OUTLINED_FUNCTION_8_54()
{

  JUMPOUT(0x26D6644E0);
}

double OUTLINED_FUNCTION_9_50()
{

  return result;
}

void *OUTLINED_FUNCTION_10_45(void *a1)
{

  return memcpy(a1, (v1 - 208), 0x78uLL);
}

uint64_t type metadata accessor for TableRowView(uint64_t a1)
{
  result = qword_2803B6430;
  if (!qword_2803B6430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A736800(uint64_t a1)
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A54950C(319);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ActionHandler(319);
        if (v4 <= 0x3F)
        {
          sub_26A6260E8(319);
          if (v5 <= 0x3F)
          {
            sub_26A84E4B8();
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

void *sub_26A736938@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *)@<X2>, uint64_t a4@<X4>, char a5@<W5>, void *a6@<X8>)
{
  v14 = a4;
  v15 = a5 & 1;
  if (a2)
  {
    v12 = a5 & 1;
    v11 = 1;
    v8 = a4;
    v9 = a5 & 1;
    v10 = 1;
  }

  else
  {
    v13 = a1;
    a3(&v8, &v14, &v13);
    v12 = 0;
    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE10, &qword_26A85C8C0);
  sub_26A549B04();
  sub_26A84FDF8();
  return memcpy(a6, __src, 0x41uLL);
}

uint64_t sub_26A736A00()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

void sub_26A736B30()
{
  OUTLINED_FUNCTION_28_0();
  v31 = v2;
  v32 = v1;
  v4 = v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65A0, &qword_26A87E368);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v27 = &v27 - v6;
  sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  v28 = v8;
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE60, &qword_26A85C8E8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  if (*(v0 + 16))
  {

    sub_26A531490(v4);
    v23 = v22;

    v24 = *(sub_26A84E468() + 16);

    if (v23 >= v24)
    {
      (*(v14 + 104))(v18, *MEMORY[0x277D63800], v12);
      type metadata accessor for TableRowView(0);

      goto LABEL_7;
    }

    v25 = sub_26A84E468();
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *(v25 + 16))
    {
      (*(v14 + 16))(v18, v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v12);

      type metadata accessor for TableRowView(0);
LABEL_7:
      sub_26A72003C(v11);
      v26 = sub_26A736A00();
      sub_26A5314D0(v18, v11, v26, v21);

      (*(v28 + 8))(v11, v29);
      (*(v14 + 8))(v18, v12);
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A549E10();
      sub_26A84FDF8();
      sub_26A5DFFA0(v21, &qword_2803ACE60, &qword_26A85C8E8);
      OUTLINED_FUNCTION_27_0();
      return;
    }

    __break(1u);
  }

  type metadata accessor for TableState(0);
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
  sub_26A84F668();
  __break(1u);
}

void sub_26A736EEC()
{
  OUTLINED_FUNCTION_28_0();
  v40 = v1;
  v38 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160, &unk_26A85D4C0);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for VisualElementView(0);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v39 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6440, &qword_26A87E218) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v37 - v25;
  type metadata accessor for TableRowView(0);
  sub_26A84E478();
  v42 = v0;
  sub_26A738440(v22, sub_26A739D08, &v41, v26);
  sub_26A5DFFA0(v22, &qword_2803B3800, &unk_26A856760);
  v26[*(v23 + 44)] = 65;
  sub_26A84E438();
  v27 = sub_26A736A00();
  VRXIdiom.idiom.getter(v27, v7);
  sub_26A851AB8();

  (*(v3 + 8))(v7, v38);
  v28 = sub_26A84BA88();
  if (__swift_getEnumTagSinglePayload(v11, 1, v28) == 1)
  {
    OUTLINED_FUNCTION_4_11();
    (*(v29 + 104))(v14);
    if (__swift_getEnumTagSinglePayload(v11, 1, v28) != 1)
    {
      sub_26A5DFFA0(v11, &qword_2803AD160, &unk_26A85D4C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    (*(v30 + 32))(v14, v11, v28);
  }

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);
  sub_26A4D7EA8();
  v31 = sub_26A851448();
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6448, &qword_26A87E220);
  v35 = v40 + *(v34 + 36);
  sub_26A739D74();
  v36 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6450, &qword_26A87E228) + 36));
  *v36 = v31;
  v36[1] = v33;
  sub_26A4B4F18();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7372E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64F8, &qword_26A87E2D0);
  return sub_26A737338(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_26A737338@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for TableRowView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6500, &unk_26A87E2D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(*(v12 + OBJC_IVAR____TtC9SnippetUI10TableState_columns) + 16);
    v23 = 0;
    v24 = v13;
    swift_getKeyPath();
    sub_26A739D10(a1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_allocObject();
    sub_26A739D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6508, &qword_26A87E300);
    sub_26A4EEF40();
    sub_26A73A660();
    sub_26A8512F8();

    sub_26A52F9CC();
    v15 = v14;

    v16 = *(v6 + 16);
    v16(v8, v11, v5);
    v17 = v22;
    v16(v22, v8, v5);
    v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6568, &qword_26A87E330) + 48)];
    *v18 = 0;
    v18[8] = 0;
    v18[9] = (v15 & 1) == 0;
    v19 = *(v6 + 8);
    v19(v11, v5);
    return (v19)(v8, v5);
  }

  else
  {
    type metadata accessor for TableState(0);
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A7376A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for TableRowView(0);
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6530, &qword_26A87E310);
  MEMORY[0x28223BE20](v65);
  v63 = v53 - v7;
  v64 = sub_26A84DFD8();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6570, &qword_26A87E338);
  MEMORY[0x28223BE20](v57);
  v59 = (v53 - v9);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6578, &qword_26A87E340);
  MEMORY[0x28223BE20](v55);
  v11 = v53 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6520, &qword_26A87E308);
  MEMORY[0x28223BE20](v58);
  v56 = v53 - v12;
  v13 = sub_26A84E048();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = *a1;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = *(v18 + OBJC_IVAR____TtC9SnippetUI10TableState_columns);
  if (v19 >= *(v20 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    type metadata accessor for TableState(0);
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
    result = sub_26A84F668();
    __break(1u);
    return result;
  }

  (*(v14 + 16))(v17, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, v13, v15);
  v21 = (*(v14 + 88))(v17, v13);
  if (v21 == *MEMORY[0x277D63670])
  {
    v53[0] = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53[1] = v11;
    (*(v14 + 96))(v17, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE88, &qword_26A85C910);
    (*(v62 + 32))();
    v22 = v63;
    sub_26A736B30();

    v23 = sub_26A52F59C();

    if (v19 < *(v23 + 16))
    {

      sub_26A61AE88(v24);
      sub_26A84F028();
      v25 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6540, &qword_26A87E318) + 36)];
      v26 = *(&__src[5] + 8);
      *v25 = *(&__src[4] + 8);
      *(v25 + 1) = v26;
      *(v25 + 2) = *(&__src[6] + 8);
      v27 = &v22[*(v65 + 36)];
      sub_26A736B30();
      sub_26A739D10(a2, v53[0]);
      v28 = (v6 + ((*(v54 + 80) + 16) & ~*(v54 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      sub_26A739D74();
      *(v29 + v28) = v19;
      v30 = sub_26A851448();
      v32 = v31;
      v33 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6580, &qword_26A87E348) + 36)];
      *v33 = sub_26A8027E0;
      v33[1] = 0;
      v33[2] = v30;
      v33[3] = v32;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_26A73A9A8;
      *(v34 + 24) = v29;
      v35 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6588, &qword_26A87E350) + 36)];
      *v35 = sub_26A5BECF0;
      v35[1] = v34;
      *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6590, &qword_26A87E358) + 36)] = 0;

      sub_26A52F688();

      sub_26A851448();
      sub_26A84F028();
      v36 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6598, &qword_26A87E360) + 36)];
      v37 = __src[1];
      *v36 = __src[0];
      *(v36 + 1) = v37;
      *(v36 + 2) = __src[2];
      v38 = sub_26A851448();
      v40 = v39;
      v41 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6560, &qword_26A87E328) + 36)];
      *v41 = v38;
      v41[1] = v40;
      v42 = v63;
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00, &qword_26A85C8B8);
      sub_26A549A78();
      sub_26A73A798();
      v43 = v56;
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
      sub_26A73A70C();
      sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68, &qword_26A85C8F0);
      sub_26A84FDF8();
      sub_26A5DFFA0(v43, &qword_2803B6520, &qword_26A87E308);
      sub_26A5DFFA0(v42, &qword_2803B6530, &qword_26A87E310);
      (*(v62 + 8))(v61, v64);
      v44 = sub_26A84DFB8();
      return (*(*(v44 - 8) + 8))(v17, v44);
    }

    goto LABEL_12;
  }

  if (v21 == *MEMORY[0x277D63678])
  {

    sub_26A52F9CC();
    v47 = v46;
    v49 = v48;

    MEMORY[0x28223BE20](v50);
    v53[-2] = a2;
    sub_26A736938(v47, v49 & 1, sub_26A73AA44, 0, 0, __src);
    memcpy(v11, __src, 0x41uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE00, &qword_26A85C8B8);
    sub_26A549A78();
    sub_26A73A798();
    v51 = v56;
    sub_26A84FDF8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68, &qword_26A85C8F0);
    sub_26A84FDF8();
    return sub_26A5DFFA0(v51, &qword_2803B6520, &qword_26A87E308);
  }

  else
  {
    v52 = v59;
    *v59 = &sub_26A7383F0;
    v52[1] = 0;
    v52[2] = 0;
    v52[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68, &qword_26A85C8F0);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68, &qword_26A85C8F0);
    sub_26A84FDF8();
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_26A7381F0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *a2;

    v8 = sub_26A52F59C();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(v8 + 16))
    {

      sub_26A851448();
      result = sub_26A84F028();
      *a4 = v5;
      *(a4 + 8) = v6;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = v13;
      *(a4 + 48) = v14;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for TableState(0);
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A738338(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 16))
  {

    sub_26A530244(a2, a3);
  }

  else
  {
    type metadata accessor for TableState(0);
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A738440@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a2;
  v65 = a3;
  v62 = a1;
  v72 = a4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6458, &qword_26A87E230);
  MEMORY[0x28223BE20](v71);
  v63 = &v48 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6460, &qword_26A87E238);
  MEMORY[0x28223BE20](v67);
  v70 = &v48 - v6;
  v69 = sub_26A84F588();
  v60 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TableRowView(0);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = v9;
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6468, &qword_26A87E240);
  v55 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v54 = &v48 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6470, &qword_26A87E248);
  v59 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v56 = &v48 - v11;
  v12 = sub_26A84B058();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0, &unk_26A857FC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v48 - v24;
  type metadata accessor for ActionHandler(0);
  v57 = v4;
  sub_26A4D7E54();
  v26 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v27 = sub_26A5DFFA0(v25, &qword_2803B3910, &qword_26A855580);
LABEL_7:
    v32 = v63;
    v64(v27);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    v33 = sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468, &qword_26A87E240, MEMORY[0x277CDF028]);
    v34 = sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v73 = v66;
    v74 = v69;
    v75 = v33;
    v76 = v34;
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458, &qword_26A87E230, MEMORY[0x277CE1138]);
    sub_26A84FDF8();
    return sub_26A5DFFA0(v32, &qword_2803B6458, &qword_26A87E230);
  }

  v28 = v62;
  sub_26A4D7E54();
  v29 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v29) == 1)
  {
    sub_26A5DFFA0(v19, &qword_2803B3800, &unk_26A856760);
    v30 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v30);
LABEL_6:
    sub_26A5DFFA0(v22, &qword_2803B38C0, &unk_26A857FC0);
    v27 = sub_26A592630(v25);
    goto LABEL_7;
  }

  VRXIdiom.idiom.getter(*(v25 + 1), v14);
  sub_26A84BAA8();
  (*(v61 + 8))(v14, v12);
  (*(*(v29 - 8) + 8))(v19, v29);
  v31 = sub_26A84E278();
  if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
  {
    goto LABEL_6;
  }

  sub_26A5DFFA0(v22, &qword_2803B38C0, &unk_26A857FC0);
  sub_26A592630(v25);
  v36 = v57;
  sub_26A739D10(v57, v53);
  sub_26A4D7E54();
  swift_allocObject();
  sub_26A739D74();
  v37 = sub_26A4D7EA8();
  MEMORY[0x28223BE20](v37);
  *(&v48 - 4) = v36;
  *(&v48 - 3) = v28;
  v38 = v65;
  *(&v48 - 2) = v64;
  *(&v48 - 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6488, &qword_26A87E250);
  sub_26A739DEC();
  v39 = v54;
  sub_26A8510D8();
  v40 = v58;
  sub_26A84F578();
  v41 = sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468, &qword_26A87E240, MEMORY[0x277CDF028]);
  v42 = sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v43 = v56;
  v44 = v66;
  v45 = v69;
  sub_26A850978();
  (*(v60 + 8))(v40, v45);
  (*(v55 + 8))(v39, v44);
  v46 = v59;
  v47 = v68;
  (*(v59 + 16))(v70, v43, v68);
  swift_storeEnumTagMultiPayload();
  v73 = v44;
  v74 = v45;
  v75 = v41;
  v76 = v42;
  swift_getOpaqueTypeConformance2();
  sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458, &qword_26A87E230, MEMORY[0x277CE1138]);
  sub_26A84FDF8();
  return (*(v46 + 8))(v43, v47);
}

uint64_t sub_26A738F08(uint64_t a1, uint64_t a2)
{
  v8[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v8[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for TableRowView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ActionTapThrottler();
  sub_26A73A960(&qword_2803B1140, type metadata accessor for ActionTapThrottler, &unk_26A888834);
  sub_26A84EEF8();
  sub_26A739D10(a1, v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A4D7E54();
  v6 = swift_allocObject();
  sub_26A739D74();
  sub_26A4D7EA8();
  sub_26A80B4C4(sub_26A73A28C, v6);
}

uint64_t sub_26A73917C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5[-v1];
  type metadata accessor for TableRowView(0);
  type metadata accessor for ActionHandler(0);
  sub_26A4D7E54();
  v3 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_26A5DFFA0(v2, &qword_2803B3910, &qword_26A855580);
  }

  v5[15] = 3;
  StandardActionHandler.perform(_:interactionType:)();
  return sub_26A592630(v2);
}

uint64_t sub_26A739294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_26A84FA78();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64A8, &qword_26A87E260);
  sub_26A73932C(a1, a2, a3, a4, a5 + *(v10 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6488, &qword_26A87E250);
  *(a5 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A73932C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v66 = a3;
  v63 = a2;
  v71 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64B0, &qword_26A87E268);
  MEMORY[0x28223BE20](v70);
  v64 = &v58 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64B8, &qword_26A87E270);
  MEMORY[0x28223BE20](v67);
  v69 = &v58 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64C0, &qword_26A87E278);
  MEMORY[0x28223BE20](v68);
  v62 = &v58 - v8;
  v9 = type metadata accessor for TableRowView(0);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6458, &qword_26A87E230);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v61 = &v58 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - v20;
  type metadata accessor for ActionHandler(0);
  sub_26A4D7E54();
  v22 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    v23 = sub_26A5DFFA0(v21, &qword_2803B3910, &qword_26A855580);
  }

  else
  {
    StandardActionHandler.isNavigation(_:)();
    v25 = v24;
    v23 = sub_26A592630(v21);
    if (v25)
    {
      v66(v23);
      v26 = sub_26A850F08();
      v27 = sub_26A850298();
      sub_26A84ED48();
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = sub_26A850E88();
      KeyPath = swift_getKeyPath();
      v59 = v18;
      v38 = KeyPath;
      LOBYTE(v87[0]) = 0;
      sub_26A739D10(a1, &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v39 = swift_allocObject();
      sub_26A739D74();
      v40 = sub_26A851448();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_26A739ED0;
      *(v43 + 24) = v39;
      v73[0] = v26;
      LOBYTE(v73[1]) = v27;
      v73[2] = v29;
      v73[3] = v31;
      v73[4] = v33;
      v73[5] = v35;
      LOBYTE(v73[6]) = 0;
      v73[7] = v38;
      v73[8] = v36;
      v73[9] = sub_26A8027E0;
      v73[10] = 0;
      v73[11] = v40;
      v73[12] = v42;
      memcpy(__dst, v73, 0x68uLL);
      v74 = v26;
      v75 = v27;
      v76 = v29;
      v77 = v31;
      v78 = v33;
      v79 = v35;
      v80 = 0;
      v81 = v38;
      v82 = v36;
      v83 = sub_26A8027E0;
      v84 = 0;
      v85 = v40;
      v86 = v42;
      sub_26A4D7E54();
      sub_26A5DFFA0(&v74, &qword_2803B64E0, &qword_26A87E2B8);
      memcpy(v87, __dst, 0x68uLL);
      v87[13] = sub_26A52E998;
      v87[14] = v43;
      v44 = v61;
      sub_26A4D7E54();
      memcpy(v72, v87, sizeof(v72));
      v45 = v62;
      sub_26A4D7E54();
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64E8, &qword_26A87E2C0) + 48);
      memcpy(v88, v72, sizeof(v88));
      memcpy((v45 + v46), v72, 0x78uLL);
      memcpy(__dst, v72, 0x78uLL);
      sub_26A4D7E54();
      sub_26A4D7E54();
      sub_26A5DFFA0(__dst, &qword_2803B64F0, &qword_26A87E2C8);
      sub_26A5DFFA0(v44, &qword_2803B6458, &qword_26A87E230);
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      v47 = MEMORY[0x277CE14C0];
      sub_26A4DBCC8(&qword_2803B64D0, &qword_2803B64C0, &qword_26A87E278, MEMORY[0x277CE14C0]);
      sub_26A4DBCC8(&qword_2803B64D8, &qword_2803B64B0, &qword_26A87E268, v47);
      sub_26A84FDF8();
      sub_26A5DFFA0(v87, &qword_2803B64F0, &qword_26A87E2C8);
      sub_26A5DFFA0(v45, &qword_2803B64C0, &qword_26A87E278);
      v48 = v59;
      return sub_26A5DFFA0(v48, &qword_2803B6458, &qword_26A87E230);
    }
  }

  v66(v23);
  if (*(a1 + 16))
  {

    sub_26A52F6B0();

    sub_26A851448();
    sub_26A84F028();
    v65 = __dst[0];
    v63 = __dst[2];
    v49 = __dst[4];
    v50 = __dst[5];
    v88[0] = 1;
    LOBYTE(v87[0]) = __dst[1];
    v72[0] = __dst[3];
    sub_26A4D7E54();
    v66 = v13;
    v51 = v88[0];
    v52 = v87[0];
    v53 = v72[0];
    v54 = v64;
    sub_26A4D7E54();
    v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B64C8, &qword_26A87E280) + 48);
    *v55 = 0;
    *(v55 + 8) = v51;
    *(v55 + 16) = v65;
    *(v55 + 24) = v52;
    *(v55 + 32) = v63;
    *(v55 + 40) = v53;
    *(v55 + 48) = v49;
    *(v55 + 56) = v50;
    sub_26A5DFFA0(v18, &qword_2803B6458, &qword_26A87E230);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    v56 = MEMORY[0x277CE14C0];
    sub_26A4DBCC8(&qword_2803B64D0, &qword_2803B64C0, &qword_26A87E278, MEMORY[0x277CE14C0]);
    sub_26A4DBCC8(&qword_2803B64D8, &qword_2803B64B0, &qword_26A87E268, v56);
    sub_26A84FDF8();
    sub_26A5DFFA0(v54, &qword_2803B64B0, &qword_26A87E268);
    v48 = v66;
    return sub_26A5DFFA0(v48, &qword_2803B6458, &qword_26A87E230);
  }

  type metadata accessor for TableState(0);
  sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A739C54(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {

    sub_26A52F71C(a2);
  }

  else
  {
    type metadata accessor for TableState(0);
    sub_26A73A960(&qword_2803ABC30, type metadata accessor for TableState, &unk_26A85B208);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A739D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableRowView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A739D74()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A739DEC()
{
  result = qword_2803B6490;
  if (!qword_2803B6490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6488, &qword_26A87E250);
    sub_26A4DBCC8(&qword_2803B6498, &qword_2803B64A0, &qword_26A87E258, MEMORY[0x277CE1138]);
    sub_26A4DBCC8(&qword_2803AE3F8, &qword_2803AE400, &qword_26A862A00, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6490);
  }

  return result;
}

uint64_t sub_26A739ED0(double a1)
{
  v3 = type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26A739C54(v5, a1);
}

uint64_t objectdestroyTm_26()
{
  type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_37_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_2_5(v6);
  v8 = *(v7 + 80);
  v9 = v1 + v3;
  sub_26A49035C(*(v1 + v3), *(v1 + v3 + 8));

  v10 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v11 + 8))(v9 + v10);
  }

  else
  {
  }

  v12 = v3 + v5;
  v13 = v9 + v0[7];
  v14 = OUTLINED_FUNCTION_8_55();
  v15 = *(v14 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v13 + v15, 1, v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v16 + 8))(v13 + v15, v5);
    }
  }

  else
  {
  }

  v17 = v12 + v8;
  OUTLINED_FUNCTION_2_81();
  if (v18)
  {
    if ((*(v5 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v5);
    }
  }

  else
  {
  }

  v19 = v17 & ~v8;
  MEMORY[0x26D665710](v5 + 16);
  v20 = OUTLINED_FUNCTION_14_37();
  if (!OUTLINED_FUNCTION_25_6(v20))
  {
    MEMORY[0x26D665710](v14);
    v21 = *(v5 + 24);
    v22 = sub_26A84E408();
    if (!__swift_getEnumTagSinglePayload(v14 + v21, 1, v22))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v23 + 8))(v14 + v21, v22);
    }

    OUTLINED_FUNCTION_13_36();

    OUTLINED_FUNCTION_13_36();
  }

  OUTLINED_FUNCTION_11_43((v9 + v0[8]));
  OUTLINED_FUNCTION_1_4();
  (*(v24 + 8))(v0 + v9);
  v25 = sub_26A84BAB8();
  if (!__swift_getEnumTagSinglePayload(v1 + v19, 1, v25))
  {
    OUTLINED_FUNCTION_4_11();
    (*(v26 + 8))(v1 + v19, v25);
  }

  return swift_deallocObject();
}

uint64_t sub_26A73A2A4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_2_5(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  OUTLINED_FUNCTION_79(v7);
  v9 = v1 + ((v6 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v1 + v4, v9);
}

uint64_t objectdestroy_4Tm_0()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_37_0();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_26A49035C(*v4, *(v4 + 8));

  v5 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84F3A8();
    OUTLINED_FUNCTION_1_4();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + v0[7];
  v8 = OUTLINED_FUNCTION_8_55();
  v9 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_21_26(v10))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v11 + 8))(v7 + v9, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_81();
  if (v12)
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v2);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v2 + 16);
  v13 = OUTLINED_FUNCTION_14_37();
  if (!OUTLINED_FUNCTION_25_6(v13))
  {
    MEMORY[0x26D665710](v8);
    v14 = *(v2 + 24);
    v15 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_20_27(v15))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v16 + 8))(v8 + v14, v7);
    }

    OUTLINED_FUNCTION_13_36();

    OUTLINED_FUNCTION_13_36();
  }

  OUTLINED_FUNCTION_11_43((v4 + v0[8]));
  OUTLINED_FUNCTION_1_4();
  (*(v17 + 8))(v0 + v4);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A73A5E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_79(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_26A7376A4(a1, v7, a2);
}

unint64_t sub_26A73A660()
{
  result = qword_2803B6510;
  if (!qword_2803B6510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6508, &qword_26A87E300);
    sub_26A73A70C();
    sub_26A549EDC(&qword_28157FDC8, &qword_2803ACE68, &qword_26A85C8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6510);
  }

  return result;
}

unint64_t sub_26A73A70C()
{
  result = qword_2803B6518;
  if (!qword_2803B6518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6520, &qword_26A87E308);
    sub_26A549A78();
    sub_26A73A798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6518);
  }

  return result;
}

unint64_t sub_26A73A798()
{
  result = qword_2803B6528;
  if (!qword_2803B6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6530, &qword_26A87E310);
    sub_26A73A850();
    sub_26A4DBCC8(&qword_2803B6558, &qword_2803B6560, &qword_26A87E328, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6528);
  }

  return result;
}

unint64_t sub_26A73A850()
{
  result = qword_2803B6538;
  if (!qword_2803B6538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6540, &qword_26A87E318);
    sub_26A73A8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6538);
  }

  return result;
}

unint64_t sub_26A73A8DC()
{
  result = qword_2803B6548;
  if (!qword_2803B6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6550, &qword_26A87E320);
    sub_26A549E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6548);
  }

  return result;
}

uint64_t sub_26A73A960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A73A9A8(double a1)
{
  v3 = type metadata accessor for TableRowView(0);
  OUTLINED_FUNCTION_2_5(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26A738338(v1 + v8, v9, a1);
}

unint64_t sub_26A73AA4C()
{
  result = qword_2803B65A8;
  if (!qword_2803B65A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6448, &qword_26A87E220);
    sub_26A73AB04();
    sub_26A4DBCC8(&qword_2803B65C8, &qword_2803B6450, &qword_26A87E228, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65A8);
  }

  return result;
}

unint64_t sub_26A73AB04()
{
  result = qword_2803B65B0;
  if (!qword_2803B65B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6440, &qword_26A87E218);
    sub_26A73AB90();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65B0);
  }

  return result;
}

unint64_t sub_26A73AB90()
{
  result = qword_2803B65B8;
  if (!qword_2803B65B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B65C0, &unk_26A87E370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6468, &qword_26A87E240);
    sub_26A84F588();
    sub_26A4DBCC8(&qword_2803B6478, &qword_2803B6468, &qword_26A87E240, MEMORY[0x277CDF028]);
    sub_26A73A960(&qword_28157FD68, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_26A4DBCC8(&qword_2803B6480, &qword_2803B6458, &qword_26A87E230, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_81()
{
  sub_26A556DF4(*(v1 + v0[7]), *(v1 + v0[7] + 8), *(v1 + v0[7] + 16));
  sub_26A49035C(*(v1 + v0[8]), *(v1 + v0[8] + 8));
  return sub_26A49035C(*(v1 + v0[9]), *(v1 + v0[9] + 8));
}

uint64_t OUTLINED_FUNCTION_8_55()
{
  sub_26A556DF4(*v0, *(v0 + 8), *(v0 + 16));
  sub_26A49035C(*(v0 + 24), *(v0 + 32));

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_11_43@<X0>(uint64_t *a1@<X8>)
{
  sub_26A492280(*a1, a1[1]);

  return sub_26A84E4B8();
}

double OUTLINED_FUNCTION_13_36()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_26(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_26A73AE44(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CD3410]);

    if (Value)
    {
      v5 = Value;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_26A851D68();
      }
    }
  }

  return 8;
}

uint64_t sub_26A73AF0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();
}

uint64_t sub_26A73AF84(uint64_t a1)
{
  v3 = type metadata accessor for ResolvedTableLayout(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_82();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A73BB90(a1, v1);

  sub_26A84EC28();
  return sub_26A73BBF4(a1);
}

char *sub_26A73B03C(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65E8, qword_26A87E4E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ResolvedTableLayout(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager__resolvedLayout;
  sub_26A84ACB8();
  v14 = &v12[*(v7 + 20)];
  *v14 = MEMORY[0x277D84F90];
  v14[8] = 0;
  v12[*(v7 + 24)] = 0;
  sub_26A73BB90(v12, v9);
  sub_26A84EBD8();
  sub_26A73BBF4(v12);
  (*(v4 + 32))(&v1[v13], v6, v3);
  v15 = &v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths] = 0;
  v16 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_preCalculationMaxHeights;
  *&v1[v16] = sub_26A8516A8();
  v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_disableTruncation] = 0;
  *&v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_longestCells] = 0;
  v17 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_constants;
  if (qword_2803A8B30 != -1)
  {
    swift_once();
  }

  v18 = qword_2803D1CC0;
  if (qword_2803A8B38 != -1)
  {
    swift_once();
  }

  v19 = &v1[v17];
  v20 = qword_2803D1CE8;
  *v19 = v18;
  v19[1] = v20;
  v19[2] = 0x3FD0000000000000;
  v21 = &v1[OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths];
  OUTLINED_FUNCTION_0_81();
  v23 = v22;
  OUTLINED_FUNCTION_0_81();
  v25 = v24;
  OUTLINED_FUNCTION_0_81();
  v27 = v26;
  OUTLINED_FUNCTION_0_81();
  *v21 = v23;
  *(v21 + 1) = v25;
  *(v21 + 2) = v27;
  *(v21 + 3) = v28;
  v29 = a1[3];
  *(v1 + 3) = a1[2];
  *(v1 + 4) = v29;
  v30 = a1[1];
  *(v1 + 1) = *a1;
  *(v1 + 2) = v30;
  return v1;
}

void sub_26A73B330(double a1, double a2)
{
  v4 = v2;
  v7 = type metadata accessor for ResolvedTableLayout(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_82();
  v8 = (v2 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[2];

  v11 = sub_26A69620C(v9, v10);

  v12 = (v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize);
  v13 = vabdd_f64(*(v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentSize), a1);
  v14 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths;
  v15 = *(v4 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_currentIdealWidths);
  if (!v15)
  {
    if (v13 >= 0.01)
    {
      sub_26A851E78();
      LOBYTE(v35) = 2;
      OUTLINED_FUNCTION_9_28();
      sub_26A7B6070(v17, v18, v19, v20, v21, 78, v22, 25, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    }

    goto LABEL_8;
  }

  v16 = sub_26A696814(v15, v11);

  if (v13 < 0.01)
  {
    if (v16)
    {

      return;
    }

    goto LABEL_8;
  }

  sub_26A851E78();
  LOBYTE(v35) = 2;
  OUTLINED_FUNCTION_9_28();
  sub_26A7B6070(v23, v24, v25, v26, v27, 78, v28, 25, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  if ((v16 & 1) == 0)
  {
LABEL_8:
    sub_26A851E78();
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_9_28();
    sub_26A7B6244(v29, v30, v31, v32, v33, 81, v34, 25, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  }

  *v12 = a1;
  v12[1] = a2;
  *(v4 + v14) = v11;

  sub_26A73B6B8(&v40);
  sub_26A65F7AC(*(v4 + 64), v3, a1);
  sub_26A73BC50(&v40);
  sub_26A73AF84(v3);
}

void sub_26A73B598(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v4 = a1;
  v5 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_preCalculationMaxHeights;
  swift_beginAccess();
  v6 = COERCE_DOUBLE(sub_26A507558(v4, *(v2 + v5)));
  if (v7)
  {
    v6 = 0.0;
  }

  if (v6 >= a2)
  {
    a2 = v6;
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v5);
  sub_26A654AF8(v4, a2);
  *(v2 + v5) = v8;
  swift_endAccess();
  sub_26A507558(v4, v8);
}

double sub_26A73B6B8@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_idealWidths);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = sub_26A73B798(v3);
  v10 = v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_constants;
  v11 = 8;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = *(v10 + v11);
  v13 = 0;
  if ((*(v1 + OBJC_IVAR____TtC9SnippetUI18TableLayoutManager_disableTruncation) & 1) == 0)
  {
    v13 = *(v10 + 16);
  }

  *a1 = v3;
  a1[1] = v6;
  a1[2] = v5;
  a1[3] = v8;
  a1[4] = v7;
  a1[5] = v12;
  a1[6] = v13;

  return result;
}

BOOL sub_26A73B798(_BOOL8 result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (result + 56);
  while (1)
  {
    v5 = *v3;
    v3 += 6;
    v4 = v5;
    if ((v5 & 0xFF00) == 0x200)
    {
      break;
    }

    v7 = v4 & 1;
    v6 = __OFADD__(v2, v7);
    v2 += v7;
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (!--v1)
    {
      return v2 > 11;
    }
  }

  v6 = __OFADD__(v2++, 1);
  if (!v6)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26A73B7F4()
{

  v1 = OBJC_IVAR____TtC9SnippetUI18TableLayoutManager__resolvedLayout;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65E8, qword_26A87E4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_26A73B90C()
{
  sub_26A73B7F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TableLayoutManager(uint64_t a1)
{
  result = qword_281580770;
  if (!qword_281580770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A73B9B8(uint64_t a1)
{
  sub_26A73BA94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A73BA94(uint64_t a1)
{
  if (!qword_281580AA0)
  {
    type metadata accessor for ResolvedTableLayout(255);
    v1 = sub_26A84EC38();
    if (!v2)
    {
      atomic_store(v1, &qword_281580AA0);
    }
  }
}

uint64_t sub_26A73BAFC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TableLayoutManager(0);
  result = sub_26A84EB88();
  *a2 = result;
  return result;
}

BOOL sub_26A73BB3C(_BOOL8 result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (result + 56);
  while (1)
  {
    v4 = *v3;
    v3 += 6;
    v5 = (v4 & 0x100) == 0;
    if ((v4 & 0xFF00) == 0x200)
    {
      v5 = 0;
    }

    v6 = __OFADD__(v2, v5);
    v2 += v5;
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return v2 > 11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A73BB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedTableLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A73BBF4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedTableLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double OUTLINED_FUNCTION_0_81()
{

  sub_26A8516A8();
  return result;
}

BOOL sub_26A73BD04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A73BDEC@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = [v1 number];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 text_1];
  if (!v7)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v11 = v1;
    *(v11 + 8) = &unk_287B139D8;
    *(v11 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v8 = v7;
  v144 = v2;
  RFTextProperty.asPartialText()(v142);
  v78 = v8;
  RFTextProperty.asPartialText()(v141);
  v9 = sub_26A54AB40(v1, &selRef_text_2);
  if (v9)
  {
    v10 = v9;
    *(&v139 + 1) = &type metadata for PartialText;
    v140 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v138 = swift_allocObject();
    sub_26A735084(v10, v138 + 16);
  }

  else
  {
    v140 = 0;
    v139 = 0u;
    v138 = 0u;
  }

  v13 = sub_26A54AB40(v3, &selRef_text_3);
  if (v13)
  {
    v14 = v13;
    *(&v136 + 1) = &type metadata for PartialText;
    v137 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v135 = swift_allocObject();
    sub_26A735084(v14, v135 + 16);
  }

  else
  {
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
  }

  v15 = [v3 text_4];
  if (v15)
  {
    v16 = v15;
    *(&v133 + 1) = &type metadata for PartialText;
    v134 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v132 = swift_allocObject();
    RFTextProperty.asPartialText()(v132 + 16);
  }

  else
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
  }

  v17 = [v3 unit];
  if (v17)
  {
    v18 = v17;
    *(&v130 + 1) = &type metadata for PartialText;
    v131 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v129 = swift_allocObject();
    RFTextProperty.asPartialText()(v129 + 16);
  }

  else
  {
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
  }

  v19 = [v3 thumbnail];
  if (v19)
  {
    v20 = v19;
    *(&v127 + 1) = sub_26A84BD28();
    v128 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v126);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
  }

  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v22 = __swift_project_value_buffer(v21, qword_2803D1A70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v24 = &a1[*(v23 + 32)];
  sub_26A4EA070(v22, v24, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A60E54C(&v24[*(v21 + 36)], &a1[*(v23 + 28)]);
  v25 = type metadata accessor for FactItemShortHeroNumberView(0);
  v26 = &a1[v25[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v118[0] = xmmword_281588758;
  v118[1] = unk_281588768;
  v118[2] = xmmword_281588778;
  v118[3] = xmmword_281588788;
  v119 = xmmword_281588758;
  v120 = unk_281588768;
  v121 = xmmword_281588778;
  v122 = xmmword_281588788;
  *v76 = xmmword_281588788;
  v77 = xmmword_281588778;
  sub_26A4EA070(v118, v125, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v123);
  memcpy(v26, v123, 0xC0uLL);
  *(v26 + 12) = v77;
  *(v26 + 13) = *v76;
  v27 = v120;
  *(v26 + 14) = v119;
  *(v26 + 15) = v27;
  v28 = v122;
  *(v26 + 16) = v121;
  *(v26 + 17) = v28;
  v29 = v25[6];
  *&a1[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v30 = v25[7];
  *&a1[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v31 = &a1[v25[8]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  OUTLINED_FUNCTION_6_57(v124);
  OUTLINED_FUNCTION_6_57(v125);
  sub_26A4EC458(v124, v116);
  v32 = sub_26A4EC4B4();
  *&a1[v25[9]] = sub_26A851248();
  OUTLINED_FUNCTION_5_67(v125);
  OUTLINED_FUNCTION_5_67(v116);
  sub_26A4EC458(v125, &v84);
  *&a1[v25[10]] = sub_26A851248();
  sub_26A4EA070(&v138, v116, &qword_2803A91B8, &qword_26A8575C0);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v33 = OUTLINED_FUNCTION_0_11();
    v35 = v34(v33);
    OUTLINED_FUNCTION_4_52(v35, v36, v37, v38, v39, v40, v41, v42, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8, &qword_26A8575C0);
    v32 = 0;
  }

  *&a1[v25[11]] = v32;
  sub_26A4EA070(&v135, v116, &qword_2803A91B8, &qword_26A8575C0);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v43 = OUTLINED_FUNCTION_0_11();
    v45 = v44(v43);
    OUTLINED_FUNCTION_4_52(v45, v46, v47, v48, v49, v50, v51, v52, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8, &qword_26A8575C0);
    v32 = 0;
  }

  *&a1[v25[12]] = v32;
  sub_26A4EA070(&v132, v116, &qword_2803A91B8, &qword_26A8575C0);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v53 = OUTLINED_FUNCTION_0_11();
    v55 = v54(v53);
    OUTLINED_FUNCTION_4_52(v55, v56, v57, v58, v59, v60, v61, v62, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8, &qword_26A8575C0);
    v32 = 0;
  }

  *&a1[v25[13]] = v32;
  sub_26A4EA070(&v129, v116, &qword_2803A91B8, &qword_26A8575C0);
  if (v117)
  {
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v63 = OUTLINED_FUNCTION_0_11();
    v65 = v64(v63);
    OUTLINED_FUNCTION_4_52(v65, v66, v67, v68, v69, v70, v71, v72, v76[0], v76[1], v77, *(&v77 + 1), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  }

  else
  {
    sub_26A4E2544(v116, &qword_2803A91B8, &qword_26A8575C0);
    v32 = 0;
  }

  *&a1[v25[14]] = v32;
  sub_26A4EA070(&v126, &v79, &qword_2803A91B8, &qword_26A8575C0);
  if (v82)
  {
    __swift_project_boxed_opaque_existential_1(&v79, v82);
    v73 = OUTLINED_FUNCTION_0_11();
    v75 = v74(v73);

    OUTLINED_FUNCTION_5_67(&v84);
    sub_26A4EC508(&v84);
    OUTLINED_FUNCTION_6_57(v116);
    sub_26A4EC508(v116);
    OUTLINED_FUNCTION_3_7(&v126);
    OUTLINED_FUNCTION_3_7(&v129);
    OUTLINED_FUNCTION_3_7(&v132);
    OUTLINED_FUNCTION_3_7(&v135);
    OUTLINED_FUNCTION_3_7(&v138);
    result = __swift_destroy_boxed_opaque_existential_1(&v79);
  }

  else
  {

    OUTLINED_FUNCTION_5_67(&v84);
    sub_26A4EC508(&v84);
    OUTLINED_FUNCTION_6_57(v116);
    sub_26A4EC508(v116);
    OUTLINED_FUNCTION_2_8(&v126);
    OUTLINED_FUNCTION_2_8(&v129);
    OUTLINED_FUNCTION_2_8(&v132);
    OUTLINED_FUNCTION_2_8(&v135);
    OUTLINED_FUNCTION_2_8(&v138);
    result = OUTLINED_FUNCTION_2_8(&v79);
    v75 = 0;
  }

  *&a1[v25[15]] = v75;
  return result;
}

unint64_t sub_26A73C68C()
{
  result = qword_2803B65F0;
  if (!qword_2803B65F0)
  {
    type metadata accessor for FactItemShortHeroNumberView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B65F0);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_67(void *a1)
{

  return memcpy(a1, &STACK[0x680], 0xFAuLL);
}

void *OUTLINED_FUNCTION_6_57(void *a1)
{

  return memcpy(a1, &STACK[0x780], 0xFAuLL);
}

uint64_t type metadata accessor for SummaryItemConstants(uint64_t a1)
{
  result = qword_28157E5C8;
  if (!qword_28157E5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A73C788(uint64_t a1)
{
  result = sub_26A84B1D8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A73C81C()
{
  v0 = type metadata accessor for SummaryItemConstants(0);
  MEMORY[0x28223BE20](v0);
  v115 = &v111 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_allocate_value_buffer(v2, qword_281588798);
  v114 = __swift_project_value_buffer(v2, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B65F8, &qword_26A87E620);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6600, &qword_26A87E628);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v122 = *(*(v3 - 8) + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26A8570C0;
  v113 = v5;
  v6 = (v5 + v4);
  v123 = v3;
  v7 = v6 + *(v3 + 48);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  inited = swift_initStackObject();
  v119 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v9 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v10 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(inited);
  *v6 = v11;
  v12 = sub_26A851448();
  *&v112 = v13;
  v14 = v0[9];
  v15 = *MEMORY[0x277D62B38];
  v16 = sub_26A84B1D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v19 = v17 + 104;
  v18(&v7[v14], v15, v16);
  v20 = &v7[v0[10]];
  v118 = v15;
  v116 = v16;
  v117 = v19;
  v120 = v18;
  v18(v20, v15, v16);
  *v7 = 0x4030000000000000;
  *(v7 + 1) = v12;
  *(v7 + 2) = v112;
  *(v7 + 24) = xmmword_26A85AB50;
  *(v7 + 5) = 0x402C000000000000;
  OUTLINED_FUNCTION_0_82();
  v121 = v6;
  v21 = v122;
  v22 = v6 + v122 + *(v123 + 48);
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v23);
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v24 = OUTLINED_FUNCTION_7_57(&qword_281588938);
  *(v12 + 40) = v25;
  sub_26A4E324C(v24, v25);
  sub_26A621A9C(v12);
  v26 = v121;
  *(v121 + v21) = v27;
  *&v112 = sub_26A851458();
  v29 = v28;
  v30 = OUTLINED_FUNCTION_9_51(v0[9]);
  (v18)(v30);
  v31 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v31);
  v32 = v112;
  *v22 = 0x4020000000000000;
  *(v22 + 1) = v32;
  *(v22 + 2) = v29;
  *(v22 + 24) = xmmword_26A85E060;
  *(v22 + 5) = 0x4033000000000000;
  OUTLINED_FUNCTION_0_82();
  v33 = (v26 + 2 * v21);
  v34 = v33 + *(v123 + 48);
  v35 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v35);
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v36 = OUTLINED_FUNCTION_7_57(&qword_281588998);
  *(v29 + 40) = v37;
  sub_26A4E324C(v36, v37);
  sub_26A621A9C(v29);
  *v33 = v38;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v40 = OUTLINED_FUNCTION_9_51(v39);
  (v18)(v40);
  v41 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v41);
  *v34 = 0x403C000000000000;
  *(v34 + 1) = v21;
  *(v34 + 2) = v29;
  *(v34 + 24) = xmmword_26A85AB60;
  *(v34 + 5) = 0x4030000000000000;
  OUTLINED_FUNCTION_0_82();
  v42 = v121;
  v43 = (v121 + 3 * v21);
  v44 = v43 + *(v123 + 48);
  v45 = swift_initStackObject();
  v119 = xmmword_26A8570F0;
  *(v45 + 16) = xmmword_26A8570F0;
  v46 = OUTLINED_FUNCTION_2_83(&qword_281588998);
  *(v45 + 56) = 5;
  sub_26A4E324C(v46, v47);
  sub_26A621A9C(v45);
  *v43 = v48;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v50 = OUTLINED_FUNCTION_6_58(v49);
  (v18)(v50);
  v51 = OUTLINED_FUNCTION_6_58(v0[10]);
  (v18)(v51);
  *v44 = 0x403C000000000000;
  *(v44 + 1) = v45;
  *(v44 + 2) = v43;
  v112 = xmmword_26A87E5E0;
  *(v44 + 24) = xmmword_26A87E5E0;
  *(v44 + 5) = 0x4020000000000000;
  OUTLINED_FUNCTION_0_82();
  v52 = v123;
  v53 = (v42 + 4 * v122);
  v54 = v53 + *(v123 + 48);
  v55 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v55);
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v56 = OUTLINED_FUNCTION_7_57(&qword_281588988);
  OUTLINED_FUNCTION_11_44(v56, v57);
  *v53 = v58;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v18(&v54[v59], v118, v116);
  OUTLINED_FUNCTION_4_71();
  (v18)();
  *v54 = 0x4020000000000000;
  *(v54 + 1) = v53;
  *(v54 + 2) = v43;
  *(v54 + 3) = 0;
  *(v54 + 4) = 0;
  *(v54 + 5) = 0x4024000000000000;
  OUTLINED_FUNCTION_0_82();
  v60 = *(v52 + 48);
  v61 = swift_initStackObject();
  OUTLINED_FUNCTION_8_56(v61);
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v62 = v121 + 5 * v122;
  v63 = OUTLINED_FUNCTION_7_57(&qword_281588978);
  v64 = &v62[v60];
  OUTLINED_FUNCTION_11_44(v63, v65);
  *v62 = v66;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  OUTLINED_FUNCTION_4_71();
  (v18)();
  OUTLINED_FUNCTION_4_71();
  (v18)();
  *v64 = 0x402C000000000000;
  *(v64 + 1) = v60;
  *(v64 + 2) = v43;
  *(v64 + 3) = 0;
  *(v64 + 4) = 0;
  *(v64 + 5) = 0x4024000000000000;
  OUTLINED_FUNCTION_0_82();
  v67 = v121;
  v68 = (v121 + 6 * v122);
  OUTLINED_FUNCTION_10_46();
  v69 = swift_initStackObject();
  v111 = xmmword_26A857110;
  *(v69 + 16) = xmmword_26A857110;
  v70 = OUTLINED_FUNCTION_2_83(&qword_281588978);
  *(v69 + 56) = 3;
  *(v69 + 64) = 0;
  *(v69 + 72) = v71;
  sub_26A4E324C(v70, v72);
  sub_26A621A9C(v69);
  *v68 = v73;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v75 = OUTLINED_FUNCTION_1_85(v74);
  v76 = v120;
  v120(v75);
  v77 = OUTLINED_FUNCTION_1_85(v0[10]);
  v76(v77);
  *v62 = 0x402C000000000000;
  *(v62 + 1) = v69;
  *(v62 + 2) = v43;
  *(v62 + 24) = xmmword_26A87E5F0;
  *(v62 + 5) = 0x4024000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v78] = v79;
  v80 = (v67 + 7 * v122);
  OUTLINED_FUNCTION_10_46();
  v81 = swift_initStackObject();
  *(v81 + 16) = v119;
  v82 = OUTLINED_FUNCTION_2_83(&qword_281588968);
  *(v81 + 56) = 3;
  sub_26A4E324C(v82, v83);
  sub_26A621A9C(v81);
  *v80 = v84;
  sub_26A851448();
  OUTLINED_FUNCTION_3_74();
  v86 = OUTLINED_FUNCTION_1_85(v85);
  v87 = v120;
  v120(v86);
  v88 = OUTLINED_FUNCTION_1_85(v0[10]);
  (v87)(v88);
  *v62 = 0x4030000000000000;
  *(v62 + 1) = v81;
  *(v62 + 2) = v43;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = 0x402C000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v89] = v90;
  v91 = &v121[v122];
  OUTLINED_FUNCTION_10_46();
  v92 = swift_initStackObject();
  *(v92 + 16) = v111;
  v93 = qword_281588968;
  *(v92 + 32) = qword_281588968;
  v94 = byte_281588970;
  *(v92 + 40) = byte_281588970;
  *(v92 + 48) = 3;
  *(v92 + 56) = 1;
  *(v92 + 64) = 1;
  *(v92 + 72) = 5;
  sub_26A4E324C(v93, v94);
  sub_26A621A9C(v92);
  *v91 = v95;
  v96 = sub_26A851448();
  v98 = v97;
  v99 = OUTLINED_FUNCTION_1_85(v0[9]);
  (v87)(v99);
  v100 = OUTLINED_FUNCTION_1_85(v0[10]);
  (v87)(v100);
  *v62 = 0x4020000000000000;
  *(v62 + 1) = v96;
  *(v62 + 2) = v98;
  *(v62 + 3) = 0;
  *(v62 + 4) = 0;
  *(v62 + 5) = 0x402C000000000000;
  *&v62[v0[11]] = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *&v62[v101] = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v103 = sub_26A8516A8();
  v104 = sub_26A851438();
  v106 = v105;
  v107 = v115;
  OUTLINED_FUNCTION_4_71();
  v87();
  OUTLINED_FUNCTION_4_71();
  v87();
  *v107 = 0x402E000000000000;
  *(v107 + 8) = v104;
  *(v107 + 16) = v106;
  *(v107 + 24) = v112;
  *(v107 + 40) = 0x4030000000000000;
  *(v107 + v0[11]) = 0x4028000000000000;
  OUTLINED_FUNCTION_5_68();
  *(v107 + v108) = v109;
  return sub_26A80D40C(v103, v107);
}

uint64_t OUTLINED_FUNCTION_2_83@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 48) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_57@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

__n128 OUTLINED_FUNCTION_8_56(__n128 *a1)
{
  result = v1[5];
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_11_44(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = 1;
  *(v2 + 56) = 3;
  sub_26A4E324C(a1, a2);

  sub_26A621A9C(v2);
}

uint64_t sub_26A73D268()
{
  sub_26A73E028();
  sub_26A84F998();
  return v1;
}

uint64_t Array<A>.asExpandedContentStack()(uint64_t a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608, &qword_26A87E630);
  MEMORY[0x28223BE20](v27);
  v28 = &KeyPath - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &KeyPath - v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0x4020000000000000;
  KeyPath = swift_getKeyPath();
  v33 = 0;
  v7 = swift_getKeyPath();
  v32 = 0;
  v29 = 0;

  sub_26A851048();
  v8 = v30;
  v9 = v31;
  v10 = v33;
  v11 = v32;
  v12 = swift_getKeyPath();
  v30 = 0;
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6610, &qword_26A87E6B0) + 36)];
  sub_26A8513E8();
  v14 = sub_26A850248();
  v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510) + 36)] = v14;
  *v5 = KeyPath;
  v5[8] = v10;
  *(v5 + 2) = v7;
  v5[24] = v11;
  v5[32] = v8;
  *(v5 + 5) = v9;
  *(v5 + 6) = sub_26A73D7D8;
  *(v5 + 7) = v6;
  *(v5 + 8) = v12;
  *(v5 + 9) = 0x4020000000000000;
  v5[80] = 0;
  v15 = &v5[*(v27 + 36)];
  v16 = *(sub_26A84F5F8() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_26A84FB88();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #10.0 }

  *v15 = _Q0;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00) + 36)] = 256;
  sub_26A73D7E4(v5, v28);
  sub_26A73D854();
  v24 = sub_26A851248();
  sub_26A73DAA8(v5);
  return v24;
}

uint64_t sub_26A73D570@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A5D769C();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26A73D5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  return sub_26A5D76DC(&v4, a2);
}

uint64_t sub_26A73D5F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A5D77B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A73D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A73E33C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A73D6B0(uint64_t a1, double a2)
{
  swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_26A73E07C;
  *(v4 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6660, &qword_26A87E8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6668, &unk_26A87E8B0);
  sub_26A73E0B4();
  sub_26A73E164();
  return sub_26A8512F8();
}

uint64_t sub_26A73D7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608, &qword_26A87E630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A73D854()
{
  result = qword_2803B6618;
  if (!qword_2803B6618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6608, &qword_26A87E630);
    sub_26A73D90C();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6618);
  }

  return result;
}

unint64_t sub_26A73D90C()
{
  result = qword_2803B6620;
  if (!qword_2803B6620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6610, &qword_26A87E6B0);
    sub_26A73D9C4();
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440, &unk_26A877510, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6620);
  }

  return result;
}

unint64_t sub_26A73D9C4()
{
  result = qword_2803B6628;
  if (!qword_2803B6628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6630, &qword_26A87E6B8);
    sub_26A4DBCC8(&qword_2803B6638, &qword_2803B6640, &unk_26A87E6C0, &protocol conformance descriptor for ComponentStack<A>);
    sub_26A4DBCC8(&qword_2803B31D0, &qword_2803AA240, &qword_26A855E00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6628);
  }

  return result;
}

uint64_t sub_26A73DAA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6608, &qword_26A87E630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A73DB48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a3;
  *(a2 + 24) = 1;
  *(a2 + 32) = v7;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
}

uint64_t sub_26A73DC48@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6648, &qword_26A87E848);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = *(v1 + 40);
  if (v6)
  {
    sub_26A73DFDC(v1, v17);
    v7 = swift_allocObject();
    sub_26A4EC2A8(v17, v7 + 16);
    KeyPath = swift_getKeyPath();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6650, &qword_26A87E850);
    v10 = (v5 + *(v9 + 36));
    v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    *v11 = sub_26A73E020;
    *(v11 + 8) = v7;
    *(v11 + 16) = 0;
    v12 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    *v10 = KeyPath;
    *v5 = v6;
    v13 = v5;
    v14 = 0;
    v15 = v9;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6650, &qword_26A87E850);
    v13 = v5;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
  sub_26A73DF6C(v5, a1);
}

void sub_26A73DDF8(uint64_t a1)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  if (*(a1 + 32) != 1)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A73E014(v6, 0);
    (*(v3 + 8))(v5, v2);
    v6 = v10;
    if (!v10)
    {
      return;
    }

    goto LABEL_5;
  }

  v7 = v6;
  if (v6)
  {
LABEL_5:
    InteractionDelegateWrapper.perform(sfCommand:)();
  }
}

uint64_t sub_26A73DF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6648, &qword_26A87E848);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A73E014(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_26A73E028()
{
  result = qword_2803B6658;
  if (!qword_2803B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6658);
  }

  return result;
}

unint64_t sub_26A73E0B4()
{
  result = qword_2803B6670;
  if (!qword_2803B6670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6660, &qword_26A87E8A8);
    sub_26A4DBCC8(&qword_2803B6678, &qword_2803B6680, &qword_26A8863B0, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6670);
  }

  return result;
}

unint64_t sub_26A73E164()
{
  result = qword_2803B6688;
  if (!qword_2803B6688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6668, &unk_26A87E8B0);
    sub_26A69C384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6688);
  }

  return result;
}

unint64_t sub_26A73E200()
{
  result = qword_2803B6690;
  if (!qword_2803B6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6648, &qword_26A87E848);
    sub_26A73E284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6690);
  }

  return result;
}

unint64_t sub_26A73E284()
{
  result = qword_2803B6698;
  if (!qword_2803B6698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6650, &qword_26A87E850);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6698);
  }

  return result;
}

unint64_t sub_26A73E33C()
{
  result = qword_2803B66A0;
  if (!qword_2803B66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B66A8, &qword_26A87E9B8);
    sub_26A73E3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B66A0);
  }

  return result;
}

unint64_t sub_26A73E3C0()
{
  result = qword_2803AFA50;
  if (!qword_2803AFA50)
  {
    sub_26A73E418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA50);
  }

  return result;
}

unint64_t sub_26A73E418()
{
  result = qword_2803AB078;
  if (!qword_2803AB078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AB078);
  }

  return result;
}

uint64_t type metadata accessor for SummaryItemStandardTextLayout(uint64_t a1)
{
  result = qword_28157DEC8;
  if (!qword_28157DEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A73E4D0(uint64_t a1)
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_26A573614(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_26A73E6CC(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_26A573614(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_26A73E6CC(uint64_t a1)
{
  if (!qword_2803B67A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA470, &qword_26A8560B0);
    v1 = sub_26A851088();
    if (!v2)
    {
      atomic_store(v1, &qword_2803B67A0);
    }
  }
}

uint64_t sub_26A73E7AC(void (*a1)(void), uint64_t a2)
{
  a1();
  sub_26A84F998();
  return v3;
}

uint64_t sub_26A73E85C()
{
  sub_26A73E920(v0);
  v5 = sub_26A84FBD8();
  v6 = sub_26A48F9E4;
  v7 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67B0, &qword_26A87EA38);
  OUTLINED_FUNCTION_3_75();
  sub_26A744454(v1, &qword_2803B67B0, &qword_26A87EA38, v2);
  sub_26A850AF8();
  return sub_26A4DBD10(v4, &qword_2803B67B0, &qword_26A87EA38);
}

uint64_t sub_26A73E920(uint64_t a1)
{
  v2 = sub_26A84F3A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SummaryItemStandardTextLayout(0);
  sub_26A72003C(v5);
  v6 = sub_26A84F388();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9[0] = sub_26A84FC08();
    v9[1] = 0;
    v10 = 1;
    sub_26A742C60(a1, v11);
    sub_26A51D0F8(v9, v12, &qword_2803B67E8, &qword_26A87EA50);
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67E8, &qword_26A87EA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67F8, &qword_26A87EA58);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8, &qword_26A87EA50, MEMORY[0x277CE1198]);
    sub_26A743410();
    sub_26A84FDF8();
    return sub_26A4DBD10(v9, &qword_2803B67E8, &qword_26A87EA50);
  }

  else
  {
    sub_26A73EBA0(v12);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67E8, &qword_26A87EA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B67F8, &qword_26A87EA58);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8, &qword_26A87EA50, MEMORY[0x277CE1198]);
    sub_26A743410();
    return sub_26A84FDF8();
  }
}

uint64_t sub_26A73EBA0@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v55 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v56 = v3;
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6808, &qword_26A87EA90);
  MEMORY[0x28223BE20](v54);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  v9 = sub_26A84F988();
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  v12 = v1 + *(v2 + 20);
  v13 = *v12;
  v14 = *v12;
  v60 = *(v12 + 8);
  if ((v60 & 1) == 0)
  {

    sub_26A851EA8();
    v15 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v61 + 8))(v11, v9);
    v14 = v65;
  }

  if (sub_26A61B05C(v14, &unk_287B13B08))
  {
    v16 = v1 + v59[7];
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      sub_26A73F75C(v8);
      sub_26A51D0F8(v8, v5, &qword_2803B6808, &qword_26A87EA90);
      sub_26A7448CC();
      v25 = sub_26A851248();
      sub_26A4DBD10(v8, &qword_2803B6808, &qword_26A87EA90);
      v62 = v25;
      LOBYTE(v63) = 0;

      sub_26A84FDF8();
      v62 = v65;
      v63 = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
      sub_26A6D1B70();
      sub_26A84FDF8();
LABEL_23:

      goto LABEL_30;
    }

    sub_26A851EA8();
    v24 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v17, 0);
    (*(v61 + 8))(v11, v9);
    if (v65 == 1)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  v18 = v1;
  v19 = v13;
  v20 = v9;
  if ((v60 & 1) == 0)
  {

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v61 + 8))(v11, v20);
    v19 = v65;
  }

  if (!sub_26A61B05C(v19, &unk_287B131A0))
  {
    goto LABEL_24;
  }

  v22 = v1 + v59[6];
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  sub_26A851EA8();
  v26 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v23, 0);
  (*(v61 + 8))(v11, v20);
  if (v65 == 1)
  {
LABEL_15:
    v54 = 0x6867696C746F7053;
    sub_26A4D7E10();
    switch(sub_26A63CD18(v27))
    {
      case 1u:
      case 2u:
      case 3u:
        v29 = sub_26A852598();

        if (v29)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      case 4u:
LABEL_17:
        switch(sub_26A63CD18(v28))
        {
          case 1u:
            v54 = 1769105747;
            break;
          case 2u:
            v54 = 0xD000000000000010;
            break;
          case 3u:
            goto LABEL_19;
          case 4u:
            goto LABEL_24;
          default:
            break;
        }

        v30 = sub_26A852598();

        if (v30)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      default:
LABEL_19:

LABEL_22:
        v65 = sub_26A84FC08();
        v66 = 0;
        v67 = 0;
        sub_26A7408F4(v18);
        sub_26A51D0F8(&v65, &v62, &qword_2803B6870, &qword_26A87EAD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6870, &qword_26A87EAD0);
        sub_26A4DBCC8(&qword_2803B6878, &qword_2803B6870, &qword_26A87EAD0, MEMORY[0x277CE1198]);
        v31 = sub_26A851248();
        sub_26A4DBD10(&v65, &qword_2803B6870, &qword_26A87EAD0);
        v62 = v31;
        LOBYTE(v63) = 1;

        sub_26A84FDF8();
        v62 = v65;
        v63 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
        sub_26A6D1B70();
        sub_26A84FDF8();
        break;
    }

    goto LABEL_23;
  }

LABEL_24:
  if ((v60 & 1) == 0)
  {

    sub_26A851EA8();
    v33 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v13, 0);
    (*(v61 + 8))(v11, v20);
    v13 = v65;
  }

  if (sub_26A61B05C(v13, &unk_287B13068))
  {
    v65 = sub_26A84FC08();
    v66 = 0;
    v67 = 0;
    sub_26A73FD18(v18, v68);
    v34 = v57;
    sub_26A7444D8(v18, v57);
    v35 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v36 = swift_allocObject();
    sub_26A74453C(v34, v36 + v35);
    v37 = sub_26A851448();
    v68[118] = sub_26A8027E0;
    v68[119] = 0;
    v68[120] = v37;
    v68[121] = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_26A7445A0;
    *(v39 + 24) = v36;
    v68[122] = sub_26A52E998;
    v68[123] = v39;
    v40 = v18 + v59[10];
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    v62 = v41;
    LOBYTE(v63) = v42;
    v64 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E0, &qword_26A87EAA0);
    sub_26A851058();
    sub_26A851448();
    sub_26A84F028();
    LOBYTE(v36) = sub_26A8502A8();
    sub_26A84ED48();
    v69 = v36;
    v70 = v44;
    v71 = v45;
    v72 = v46;
    v73 = v47;
    v74 = 0;
    sub_26A51D0F8(&v65, &v62, &qword_2803B6820, &qword_26A87EAA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6820, &qword_26A87EAA8);
    sub_26A744618();
    v48 = sub_26A851248();
    sub_26A4DBD10(&v65, &qword_2803B6820, &qword_26A87EAA8);
    v62 = v48;
    LOBYTE(v63) = 0;
  }

  else
  {
    v65 = sub_26A84FC08();
    v66 = 0;
    v67 = 1;
    sub_26A740414(v18, v68);
    sub_26A51D0F8(&v65, &v62, &qword_2803B6810, &qword_26A87EA98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6810, &qword_26A87EA98);
    sub_26A4DBCC8(&qword_2803B6818, &qword_2803B6810, &qword_26A87EA98, MEMORY[0x277CE1198]);
    v49 = sub_26A851248();
    sub_26A4DBD10(&v65, &qword_2803B6810, &qword_26A87EA98);
    v62 = v49;
    LOBYTE(v63) = 1;
  }

  sub_26A84FDF8();
  v62 = v65;
  LOBYTE(v63) = v66;
  HIBYTE(v63) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3EE0, &qword_26A87EA60);
  sub_26A6D1B70();
  result = sub_26A84FDF8();
LABEL_30:
  v50 = v66;
  v51 = BYTE1(v66);
  v52 = v58;
  *v58 = v65;
  *(v52 + 8) = v50;
  *(v52 + 9) = v51;
  return result;
}

void *sub_26A73F75C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6890, &qword_26A87EAD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_26A84F988();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v8 = *(v1 + *(v7 + 48));
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, &v39, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(&v39, v43, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v44);
  sub_26A4DBD10(&v39, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v42[1], v44, 0xBFuLL);
  v43[11] = 0;
  v43[10] = sub_26A80A810;
  v42[0] = v8;
  v9 = qword_28157FC98;

  if (v9 != -1)
  {
    swift_once();
  }

  v43[12] = qword_2815889D8;
  v43[13] = sub_26A4C2508;
  v43[14] = 0;
  sub_26A51D0F8(v42, &v39, &qword_2803ADBA0, &unk_26A85F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v10 = sub_26A851248();
  sub_26A4DBD10(v42, &qword_2803ADBA0, &unk_26A85F860);
  KeyPath = swift_getKeyPath();
  sub_26A51D0F8(&unk_2803B6750, v42, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v12 = swift_allocObject();
  v33 = xmmword_26A8570D0;
  *(v12 + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE000, &qword_26A87EB10);
  v13 = swift_allocObject();
  *(v13 + 16) = v33;
  v14 = v1 + *(v7 + 20);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  v34 = v1;
  if ((v14 & 1) == 0)
  {

    sub_26A851EA8();
    v16 = sub_26A8501F8();
    sub_26A84EA78();

    v17 = v30;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v31 + 8))(v17, v32);
    v15 = v39;
  }

  *(v13 + 32) = v15;
  sub_26A621958(v13);
  *(v12 + 32) = v18;
  *(v12 + 40) = 0;

  sub_26A58787C(v19);
  sub_26A5075B0();

  if (v36)
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_26A4F20CC(&v42[4], &v39);
  }

  sub_26A4DBD10(v42, &qword_2803AA880, &unk_26A8567F0);
  v20 = v39;

  sub_26A57E57C(&v39);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  v22 = v34;
  v23 = *(v34 + *(v21 + 28) + 32);
  v24 = sub_26A84FC08();
  *&v39 = v10;
  *(&v39 + 1) = KeyPath;
  *&v40 = 2;
  BYTE8(v40) = 0;
  *v4 = v24;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6898, &qword_26A87EB18) + 44);

  sub_26A7422F0(v22, v20, &v39, &v4[v25], v23);

  sub_26A851448();
  sub_26A84F628();

  v26 = v35;
  sub_26A744984(v4, v35);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6808, &qword_26A87EA90);
  return memcpy((v26 + *(v27 + 36)), v42, 0x70uLL);
}

uint64_t sub_26A73FD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A740230(v18);
  v4 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v5 = *(a1 + v4[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, __dst, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(__dst, &v17[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v17[1], __src, 0xBFuLL);
  v17[36] = 0;
  v17[35] = sub_26A80A810;
  v17[0] = v5;
  v6 = qword_28157FC98;

  if (v6 != -1)
  {
    swift_once();
  }

  v17[37] = qword_2815889D8;
  v17[38] = sub_26A4C2508;
  v17[39] = 0;
  sub_26A51D0F8(v17, __dst, &qword_2803ADBA0, &unk_26A85F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v7 = sub_26A851248();
  sub_26A4DBD10(v17, &qword_2803ADBA0, &unk_26A85F860);
  KeyPath = swift_getKeyPath();
  v9 = *(a1 + v4[13]);
  if (v9)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(__dst, &v17[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v20);
    sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v17[1], v20, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v9;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(__dst, v17, 0x128uLL);
  v10 = *(a1 + v4[14]);
  if (v10)
  {
    v11 = qword_28157E6D0;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v15, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v15, &v17[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v21);
    sub_26A4DBD10(v15, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v17[1], v21, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v10;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  memcpy(v15, v17, sizeof(v15));
  sub_26A51D0F8(v18, v17, &qword_2803B2780, &qword_26A870E88);
  sub_26A51D0F8(__dst, v14, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v15, v13, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v17, a2, &qword_2803B2780, &qword_26A870E88);
  *(a2 + 320) = v7;
  *(a2 + 328) = KeyPath;
  *(a2 + 336) = 2;
  *(a2 + 344) = 0;
  *(a2 + 345) = 256;
  sub_26A51D0F8(v14, a2 + 352, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v13, a2 + 648, &qword_2803AA888, &qword_26A857920);

  sub_26A4DBD10(v15, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(__dst, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v18, &qword_2803B2780, &qword_26A870E88);
  sub_26A4DBD10(v13, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v14, &qword_2803AA888, &qword_26A857920);

  return sub_26A4DBD10(v17, &qword_2803B2780, &qword_26A870E88);
}

void sub_26A740230(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SummaryItemStandardTextLayout(0) + 60));
  if (v3)
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803D27B0, &v6[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(&v6[1], __src, 0xBFuLL);
    v6[35] = sub_26A80A810;
    v6[36] = 0;
    v6[0] = v3;
    v4 = qword_2803A8E08;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2803D2398;
    memcpy(a1, v6, 0x128uLL);
    a1[37] = v5;
    a1[38] = sub_26A4C2508;
    a1[39] = 0;
  }

  else
  {

    bzero(a1, 0x140uLL);
  }
}

uint64_t sub_26A74038C(uint64_t a1, double a2, double a3)
{
  type metadata accessor for SummaryItemStandardTextLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B55E0, &qword_26A87EAA0);
  return sub_26A851068();
}

uint64_t sub_26A740414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A740230(v17);
  v4 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v5 = *(a1 + v4[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, __dst, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(__dst, &v16[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v16[1], __src, 0xBFuLL);
  v16[36] = 0;
  v16[35] = sub_26A80A810;
  v16[0] = v5;
  v6 = qword_28157FC98;

  if (v6 != -1)
  {
    swift_once();
  }

  v16[37] = qword_2815889D8;
  v16[38] = sub_26A4C2508;
  v16[39] = 0;
  sub_26A51D0F8(v16, __dst, &qword_2803ADBA0, &unk_26A85F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v7 = sub_26A851248();
  sub_26A4DBD10(v16, &qword_2803ADBA0, &unk_26A85F860);
  v8 = *(a1 + v4[13]);
  if (v8)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(__dst, &v16[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v19);
    sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v16[1], v19, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v8;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(__dst, v16, 0x128uLL);
  v9 = *(a1 + v4[14]);
  if (v9)
  {
    v10 = qword_28157E6D0;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v14, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v14, &v16[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v20);
    sub_26A4DBD10(v14, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v16[1], v20, 0xBFuLL);
    v16[36] = 0;
    v16[35] = sub_26A80A810;
    v16[0] = v9;
  }

  else
  {
    bzero(v16, 0x128uLL);
  }

  memcpy(v14, v16, sizeof(v14));
  sub_26A51D0F8(v17, v16, &qword_2803B2780, &qword_26A870E88);
  sub_26A51D0F8(__dst, v13, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v14, v12, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v16, a2, &qword_2803B2780, &qword_26A870E88);
  *(a2 + 320) = v7;
  sub_26A51D0F8(v13, a2 + 328, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v12, a2 + 624, &qword_2803AA888, &qword_26A857920);

  sub_26A4DBD10(v14, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(__dst, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v17, &qword_2803B2780, &qword_26A870E88);
  sub_26A4DBD10(v12, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v13, &qword_2803AA888, &qword_26A857920);

  return sub_26A4DBD10(v16, &qword_2803B2780, &qword_26A870E88);
}

uint64_t sub_26A7408F4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v49 = v3;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v9 = v8;
  v10 = *(v2 + v8[13]);
  if (!v10)
  {
    v25 = *(v2 + v8[14]);
    if (v25)
    {
      v26 = *(v2 + v8[12]);
      if (qword_2803A8E40 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_2803B6750, v69, &qword_2803AA880, &unk_26A8567F0);
      sub_26A51D0F8(v69, &v59[25], &qword_2803AA880, &unk_26A8567F0);
      sub_26A6AEE74(v52);
      sub_26A4DBD10(v69, &qword_2803AA880, &unk_26A8567F0);
      memcpy(&v59[1], v52, 0xBFuLL);
      v59[36] = 0;
      v59[35] = sub_26A80A810;
      v59[0] = v26;
      v27 = qword_28157FC98;

      if (v27 != -1)
      {
        swift_once();
      }

      v60 = qword_2815889D8;
      v61 = sub_26A4C2508;
      v62 = 0;
      sub_26A51D0F8(v59, v69, &qword_2803ADBA0, &unk_26A85F860);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
      sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
      v28 = sub_26A851248();
      sub_26A4DBD10(v59, &qword_2803ADBA0, &unk_26A85F860);
      KeyPath = swift_getKeyPath();
      if (qword_28157E6D0 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_28157E6D8, v59, &qword_2803AA880, &unk_26A8567F0);
      sub_26A51D0F8(v59, &v65[25], &qword_2803AA880, &unk_26A8567F0);
      sub_26A6AEE74(v53);
      sub_26A4DBD10(v59, &qword_2803AA880, &unk_26A8567F0);
      memcpy(&v65[1], v53, 0xBFuLL);
      v65[36] = 0;
      v65[35] = sub_26A80A810;
      v65[0] = v25;
      v66 = swift_getKeyPath();
      v67 = 1;
      v68 = 0;
      sub_26A51D0F8(v65, v56, &qword_2803B68B8, &qword_26A87EB68);
      v75 = v28;
      v76 = KeyPath;
      v77 = 1;
      LOBYTE(v78) = 0;
      sub_26A51D0F8(v56, v79, &qword_2803B68B8, &qword_26A87EB68);

      swift_retain_n();
      swift_retain_n();
      sub_26A4DBD10(v56, &qword_2803B68B8, &qword_26A87EB68);

      sub_26A51D0F8(&v75, v59, &qword_2803B68E8, &qword_26A87EBB0);
      v63 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68E8, &qword_26A87EBB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68F8, &qword_26A87EBB8);
      v48 = v28;
      v30 = MEMORY[0x277CE14C0];
      sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8, &qword_26A87EBB0, MEMORY[0x277CE14C0]);
      sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8, &qword_26A87EBB8, v30);
      sub_26A84FDF8();
      sub_26A51D0F8(v69, v59, &qword_2803B68D0, &qword_26A87EBA8);
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0, &qword_26A87EBA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8, &qword_26A87EBA0);
      sub_26A744A6C();
      sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8, &qword_26A87EBA0, v30);
      sub_26A84FDF8();

      sub_26A4DBD10(v69, &qword_2803B68D0, &qword_26A87EBA8);
      v31 = &v75;
      v32 = &qword_2803B68E8;
      v33 = &qword_26A87EBB0;
LABEL_39:
      sub_26A4DBD10(v31, v32, v33);
      v40 = v65;
      v41 = &qword_2803B68B8;
      v42 = &qword_26A87EB68;
      return sub_26A4DBD10(v40, v41, v42);
    }
  }

  v11 = v2 + v8[9];
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_26A851EA8();
    v21 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v12, 0);
    (*(v5 + 8))(v7, v4);
    if (LOBYTE(v59[0]) != 1)
    {
      goto LABEL_4;
    }

LABEL_17:
    v22 = *(v2 + v9[12]);
    if (qword_2803A8E40 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6750, v69, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v69, &v59[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v82);
    sub_26A4DBD10(v69, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v59[1], v82, 0xBFuLL);
    v59[36] = 0;
    v59[35] = sub_26A80A810;
    v59[0] = v22;
    v23 = qword_28157FC98;

    if (v23 != -1)
    {
      swift_once();
    }

    v60 = qword_2815889D8;
    v61 = sub_26A4C2508;
    v62 = 0;
    sub_26A51D0F8(v59, v69, &qword_2803ADBA0, &unk_26A85F860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
    sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
    v48 = sub_26A851248();
    sub_26A4DBD10(v59, &qword_2803ADBA0, &unk_26A85F860);
    v24 = swift_getKeyPath();
    if (v10)
    {
      if (qword_2803A8E38 != -1)
      {
        swift_once();
      }

      sub_26A51D0F8(&unk_2803B6700, v69, &qword_2803AA880, &unk_26A8567F0);
      sub_26A51D0F8(v69, &v59[25], &qword_2803AA880, &unk_26A8567F0);
      sub_26A6AEE74(v83);
      sub_26A4DBD10(v69, &qword_2803AA880, &unk_26A8567F0);
      memcpy(&v59[1], v83, 0xBFuLL);
      v59[36] = 0;
      v59[35] = sub_26A80A810;
      v59[0] = v10;
    }

    else
    {
      bzero(v59, 0x128uLL);
    }

    v34 = swift_getKeyPath();
    memcpy(v65, v59, sizeof(v65));
    LOBYTE(v69[0]) = 0;
    v66 = v34;
    v67 = 1;
    v68 = 0;
    v35 = *(v2 + v9[14]);
    v36 = qword_28157E6D0;

    if (v36 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v59, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v59, v57, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v84);
    sub_26A4DBD10(v59, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v56[1], v84, 0xBFuLL);
    v57[11] = 0;
    v57[10] = sub_26A80A810;
    v56[0] = v35;
    v57[12] = swift_getKeyPath();
    v57[13] = 1;
    v58 = 0;
    v37 = *(v2 + v9[15]);
    v38 = qword_2803A8E28;

    if (v38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B66B0, v59, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v59, v54, &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v85);
    sub_26A4DBD10(v59, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v53[1], v85, 0xBFuLL);
    v54[11] = 0;
    v54[10] = sub_26A80A810;
    v53[0] = v37;
    v54[12] = swift_getKeyPath();
    v54[13] = 1;
    v55 = 0;
    sub_26A51D0F8(v65, v52, &qword_2803B68B8, &qword_26A87EB68);
    sub_26A51D0F8(v56, v51, &qword_2803B21E8, &unk_26A86FE00);
    sub_26A51D0F8(v53, v50, &qword_2803B21E8, &unk_26A86FE00);
    v75 = v48;
    v76 = v24;
    v77 = 1;
    LOBYTE(v78) = 0;
    sub_26A51D0F8(v52, v79, &qword_2803B68B8, &qword_26A87EB68);
    sub_26A51D0F8(v51, &v80, &qword_2803B21E8, &unk_26A86FE00);
    sub_26A51D0F8(v50, &v81, &qword_2803B21E8, &unk_26A86FE00);

    swift_retain_n();
    swift_retain_n();
    sub_26A4DBD10(v50, &qword_2803B21E8, &unk_26A86FE00);
    sub_26A4DBD10(v51, &qword_2803B21E8, &unk_26A86FE00);
    sub_26A4DBD10(v52, &qword_2803B68B8, &qword_26A87EB68);

    sub_26A51D0F8(&v75, v59, &qword_2803B68F8, &qword_26A87EBB8);
    v63 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68E8, &qword_26A87EBB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68F8, &qword_26A87EBB8);
    v47 = v24;
    v39 = MEMORY[0x277CE14C0];
    sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8, &qword_26A87EBB0, MEMORY[0x277CE14C0]);
    sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8, &qword_26A87EBB8, v39);
    sub_26A84FDF8();
    sub_26A51D0F8(v69, v59, &qword_2803B68D0, &qword_26A87EBA8);
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0, &qword_26A87EBA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8, &qword_26A87EBA0);
    sub_26A744A6C();
    sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8, &qword_26A87EBA0, v39);
    sub_26A84FDF8();

    sub_26A4DBD10(v69, &qword_2803B68D0, &qword_26A87EBA8);
    sub_26A4DBD10(&v75, &qword_2803B68F8, &qword_26A87EBB8);
    sub_26A4DBD10(v53, &qword_2803B21E8, &unk_26A86FE00);
    v31 = v56;
    v32 = &qword_2803B21E8;
    v33 = &unk_26A86FE00;
    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_17;
  }

LABEL_4:
  v47 = v5;
  v13 = *(v2 + v9[12]);
  if (qword_2803A8E40 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, v69, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(v69, &v59[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v56);
  sub_26A4DBD10(v69, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v59[1], v56, 0xBFuLL);
  v59[36] = 0;
  v59[35] = sub_26A80A810;
  v59[0] = v13;
  v14 = qword_28157FC98;

  if (v14 != -1)
  {
    swift_once();
  }

  v60 = qword_2815889D8;
  v61 = sub_26A4C2508;
  v62 = 0;
  sub_26A51D0F8(v59, v69, &qword_2803ADBA0, &unk_26A85F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v48 = sub_26A851248();
  sub_26A4DBD10(v59, &qword_2803ADBA0, &unk_26A85F860);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 != 1)
  {
    goto LABEL_43;
  }

  v17 = v2 + v9[5];
  v18 = *v17;
  if ((*(v17 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v47 + 8))(v7, v4);
    v18 = v59[0];
  }

  if (!sub_26A61B05C(v18, &unk_287B131A0))
  {
    goto LABEL_43;
  }

  sub_26A4D7E10();
  switch(sub_26A63CD18(v20))
  {
    case 1u:
    case 2u:
    case 3u:
      v43 = sub_26A852598();

      if ((v43 & 1) == 0)
      {
        goto LABEL_43;
      }

      break;
    case 4u:
      goto LABEL_43;
    default:

      break;
  }

  if (*(v2 + v9[11]))
  {
    v44 = 0;
    v45 = 1;
  }

  else
  {
LABEL_43:
    v45 = 0;
    v44 = 1;
  }

  v75 = sub_26A84FA38();
  v76 = 0;
  LOBYTE(v77) = 0;
  sub_26A741C8C(v2);
  sub_26A51D0F8(&v75, v65, &qword_2803B68C0, &qword_26A87EB98);
  v69[0] = v48;
  v69[1] = v15;
  v70 = 0;
  v69[2] = 1;
  v71 = v16;
  v72 = v45;
  v73 = v44;
  sub_26A51D0F8(v65, &v74, &qword_2803B68C0, &qword_26A87EB98);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(v65, &qword_2803B68C0, &qword_26A87EB98);

  sub_26A51D0F8(v69, v59, &qword_2803B68C8, &qword_26A87EBA0);
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68D0, &qword_26A87EBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68C8, &qword_26A87EBA0);
  sub_26A744A6C();
  sub_26A4DBCC8(&qword_2803B6900, &qword_2803B68C8, &qword_26A87EBA0, MEMORY[0x277CE14C0]);
  sub_26A84FDF8();

  sub_26A4DBD10(v69, &qword_2803B68C8, &qword_26A87EBA0);
  v40 = &v75;
  v41 = &qword_2803B68C0;
  v42 = &qword_26A87EB98;
  return sub_26A4DBD10(v40, v41, v42);
}

uint64_t sub_26A741C8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  v5 = xmmword_2803B00A0;
  v6 = byte_2803B00B0;
  v7 = qword_2803B00B8;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v40, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v39, __src, sizeof(v39));
  v40[11] = 0;
  v36 = v5;
  v37 = v6;
  v40[10] = sub_26A80A810;
  v38 = v7;
  v8 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v9 = *(v2 + v8[13]);
  if (v9)
  {
    sub_26A4EF6C0(v5, *(&v5 + 1), v6);
    v10 = qword_2803A8E38;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, v26, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v26, &v31[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v42);
    sub_26A4DBD10(v26, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v31[1], v42, 0xBFuLL);
    v31[36] = 0;
    v31[35] = sub_26A80A810;
    v31[0] = v9;
  }

  else
  {
    bzero(v31, 0x128uLL);
    sub_26A4EF6C0(v5, *(&v5 + 1), v6);
  }

  KeyPath = swift_getKeyPath();
  memcpy(__dst, v31, sizeof(__dst));
  v26[0] = 0;
  v33 = KeyPath;
  v34 = 1;
  v35 = 0;
  v12 = *(v2 + v8[14]);
  if (v12)
  {
    sub_26A51D0F8(&v36, v31, &qword_2803B21F0, &unk_26A87EBC0);
  }

  else
  {
    bzero(v31, 0x140uLL);
  }

  v13 = qword_28157E6D0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_28157E6D8, v26, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(v26, v29, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v43);
  sub_26A4DBD10(v26, &qword_2803AA880, &unk_26A8567F0);
  memcpy(v28, v43, sizeof(v28));
  v29[11] = 0;
  v29[10] = sub_26A80A810;
  v27 = v12;
  v29[12] = swift_getKeyPath();
  v29[13] = 1;
  v30 = 0;
  if (v12 && *(v2 + v8[15]))
  {
    sub_26A51D0F8(&v36, v26, &qword_2803B21F0, &unk_26A87EBC0);
  }

  else
  {
    bzero(v26, 0x140uLL);
  }

  v14 = *(v2 + v8[15]);
  v15 = qword_2803A8E28;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B66B0, v20, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(v20, v24, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v44);
  sub_26A4DBD10(v20, &qword_2803AA880, &unk_26A8567F0);
  memcpy(v23, v44, sizeof(v23));
  v24[11] = 0;
  v24[10] = sub_26A80A810;
  v22 = v14;
  v24[12] = swift_getKeyPath();
  v24[13] = 1;
  v25 = 0;
  sub_26A51D0F8(__dst, v21, &qword_2803B68B8, &qword_26A87EB68);
  sub_26A51D0F8(v31, v20, &qword_2803AE650, &qword_26A875E10);
  sub_26A51D0F8(&v27, v19, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A51D0F8(v26, v18, &qword_2803AE650, &qword_26A875E10);
  sub_26A51D0F8(&v22, &v17, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A51D0F8(v21, v4, &qword_2803B68B8, &qword_26A87EB68);
  sub_26A51D0F8(v20, v4 + 320, &qword_2803AE650, &qword_26A875E10);
  sub_26A51D0F8(v19, v4 + 640, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A51D0F8(v18, v4 + 960, &qword_2803AE650, &qword_26A875E10);
  sub_26A51D0F8(&v17, v4 + 1280, &qword_2803B21E8, &unk_26A86FE00);

  sub_26A4DBD10(&v22, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v26, &qword_2803AE650, &qword_26A875E10);
  sub_26A4DBD10(&v27, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v31, &qword_2803AE650, &qword_26A875E10);
  sub_26A4DBD10(__dst, &qword_2803B68B8, &qword_26A87EB68);
  sub_26A4DBD10(&v36, &qword_2803B21F0, &unk_26A87EBC0);
  sub_26A4DBD10(&v17, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v18, &qword_2803AE650, &qword_26A875E10);
  sub_26A4DBD10(v19, &qword_2803B21E8, &unk_26A86FE00);
  sub_26A4DBD10(v20, &qword_2803AE650, &qword_26A875E10);
  return sub_26A4DBD10(v21, &qword_2803B68B8, &qword_26A87EB68);
}

uint64_t sub_26A7422F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v57 = a2;
  v59 = a4;
  v8 = sub_26A84F988();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68A0, &qword_26A87EB20);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v58 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - v17;
  v54 = a1;
  sub_26A740230(v72);
  v19 = *a3;
  v20 = a3[1];
  v21 = a3[2];
  LOBYTE(v62[0]) = *(a3 + 24);
  sub_26A7444D8(a1, v12);
  v22 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
  *(v23 + 48) = v62[0];
  v24 = v23 + v22;
  v25 = v12;
  v27 = v56;
  v26 = v57;
  sub_26A74453C(v25, v24);
  v28 = *(v14 + 56);
  *&v18[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();

  v29 = v54;

  sub_26A8505C8();
  *v18 = sub_26A7449F4;
  *(v18 + 1) = v23;
  *(v18 + 2) = 2;
  *(v18 + 3) = v26;
  *(v18 + 4) = a5;
  v30 = *(v29 + *(v27 + 56));
  if (v30)
  {
    v31 = qword_28157E6D0;

    if (v31 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v60, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v60, &v62[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v73);
    sub_26A4DBD10(v60, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v62[1], v73, 0xBFuLL);
    v62[36] = 0;
    v62[35] = sub_26A80A810;
    v62[0] = v30;
  }

  else
  {
    bzero(v62, 0x128uLL);
  }

  v32 = sub_26A850258();
  v33 = v29 + *(v27 + 24);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    if (v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_26A851EA8();
  v35 = sub_26A8501F8();
  sub_26A84EA78();

  v36 = v51;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v34, 0);
  (*(v52 + 8))(v36, v53);
  if ((v60[0] & 1) == 0)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  }

LABEL_11:
  sub_26A84ED48();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  memcpy(v60, v62, 0x128uLL);
  v61[0] = 0;
  v45 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28) + 32);
  KeyPath = swift_getKeyPath();
  memcpy(v62, v60, sizeof(v62));
  v63 = v32;
  v64 = v38;
  v65 = v40;
  v66 = v42;
  v67 = v44;
  v68 = v61[0];
  *v69 = *v61;
  *&v69[3] = *&v61[3];
  v70 = KeyPath;
  v71 = v45;
  sub_26A51D0F8(v72, v61, &qword_2803B2780, &qword_26A870E88);
  v47 = v58;
  sub_26A51D0F8(v18, v58, &qword_2803B68A0, &qword_26A87EB20);
  sub_26A51D0F8(v62, v60, &qword_2803ADB60, &unk_26A85F7F0);
  v48 = v59;
  sub_26A51D0F8(v61, v59, &qword_2803B2780, &qword_26A870E88);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B68A8, &qword_26A87EB58);
  sub_26A51D0F8(v47, v48 + *(v49 + 48), &qword_2803B68A0, &qword_26A87EB20);
  sub_26A51D0F8(v60, v48 + *(v49 + 64), &qword_2803ADB60, &unk_26A85F7F0);
  sub_26A4DBD10(v62, &qword_2803ADB60, &unk_26A85F7F0);
  sub_26A4DBD10(v18, &qword_2803B68A0, &qword_26A87EB20);
  sub_26A4DBD10(v72, &qword_2803B2780, &qword_26A870E88);
  sub_26A4DBD10(v60, &qword_2803ADB60, &unk_26A85F7F0);
  sub_26A4DBD10(v47, &qword_2803B68A0, &qword_26A87EB20);
  return sub_26A4DBD10(v61, &qword_2803B2780, &qword_26A870E88);
}

uint64_t sub_26A74295C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v14[0] = sub_26A84FC08();
  *&v14[1] = a4;
  v15 = 0;
  sub_26A742A6C(a1, a2, v16);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 24);
  sub_26A51D0F8(v14, v13, &qword_2803B68B0, &qword_26A87EB60);
  sub_26A51D0F8(v13, a3, &qword_2803B68B0, &qword_26A87EB60);
  *(a3 + 376) = v8;
  *(a3 + 384) = v9;
  *(a3 + 392) = v10;
  *(a3 + 400) = v11;
  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(v14, &qword_2803B68B0, &qword_26A87EB60);

  return sub_26A4DBD10(v13, &qword_2803B68B0, &qword_26A87EB60);
}

uint64_t sub_26A742A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *(a2 + *(type metadata accessor for SummaryItemStandardTextLayout(0) + 52));
  if (v8)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, __dst, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(__dst, &v11[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    sub_26A4DBD10(__dst, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v11[1], __src, 0xBFuLL);
    v11[35] = sub_26A80A810;
    v11[36] = 0;
    v11[0] = v8;
  }

  else
  {
    bzero(v11, 0x128uLL);
  }

  KeyPath = swift_getKeyPath();
  memcpy(__dst, v11, sizeof(__dst));
  v12 = 0;
  v14 = KeyPath;
  v15 = 1;
  v16 = 0;
  sub_26A51D0F8(__dst, v11, &qword_2803B68B8, &qword_26A87EB68);
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  sub_26A51D0F8(v11, a3 + 32, &qword_2803B68B8, &qword_26A87EB68);

  swift_retain_n();
  swift_retain_n();
  sub_26A4DBD10(__dst, &qword_2803B68B8, &qword_26A87EB68);
  sub_26A4DBD10(v11, &qword_2803B68B8, &qword_26A87EB68);
}

uint64_t sub_26A742C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout(0);
  v5 = *(a1 + v4[15]);
  if (v5)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_281588848, &v20[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(__src);
    memcpy(&v20[1], __src, 0xBFuLL);
    v20[36] = 0;
    v20[35] = sub_26A80A810;
    v20[0] = v5;
  }

  else
  {
    bzero(v20, 0x128uLL);
  }

  memcpy(__dst, v20, sizeof(__dst));
  v6 = *(a1 + v4[12]);
  v7 = qword_2803A8E40;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803B6750, v19, &qword_2803AA880, &unk_26A8567F0);
  sub_26A51D0F8(v19, &v20[25], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v26);
  sub_26A4DBD10(v19, &qword_2803AA880, &unk_26A8567F0);
  memcpy(&v20[1], v26, 0xBFuLL);
  v20[36] = 0;
  v20[35] = sub_26A80A810;
  v20[0] = v6;
  v8 = qword_28157FC98;

  if (v8 != -1)
  {
    swift_once();
  }

  v21 = qword_2815889D8;
  v22 = sub_26A4C2508;
  v23 = 0;
  sub_26A51D0F8(v20, v19, &qword_2803ADBA0, &unk_26A85F860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBA0, &unk_26A85F860);
  sub_26A744454(&qword_2803B6800, &qword_2803ADBA0, &unk_26A85F860, sub_26A4D4C34);
  v9 = sub_26A851248();
  sub_26A4DBD10(v20, &qword_2803ADBA0, &unk_26A85F860);
  v10 = *(a1 + v4[13]);
  if (v10)
  {
    if (qword_2803A8E38 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_2803B6700, v20, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v20, &v19[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v27);
    sub_26A4DBD10(v20, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v19[1], v27, 0xBFuLL);
    v19[36] = 0;
    v19[35] = sub_26A80A810;
    v19[0] = v10;
  }

  else
  {
    bzero(v19, 0x128uLL);
  }

  KeyPath = swift_getKeyPath();
  memcpy(v20, v19, sizeof(v20));
  v21 = KeyPath;
  v22 = 0x4000000000000000;
  v12 = *(a1 + v4[14]);
  if (v12)
  {
    v13 = qword_28157E6D0;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_26A51D0F8(&unk_28157E6D8, v19, &qword_2803AA880, &unk_26A8567F0);
    sub_26A51D0F8(v19, &v17[25], &qword_2803AA880, &unk_26A8567F0);
    sub_26A6AEE74(v28);
    sub_26A4DBD10(v19, &qword_2803AA880, &unk_26A8567F0);
    memcpy(&v17[1], v28, 0xBFuLL);
    v17[36] = 0;
    v17[35] = sub_26A80A810;
    v17[0] = v12;
  }

  else
  {
    bzero(v17, 0x128uLL);
  }

  v14 = swift_getKeyPath();
  memcpy(v19, v17, 0x128uLL);
  v19[37] = v14;
  v19[38] = 0x3FF0000000000000;
  sub_26A51D0F8(__dst, v18, &qword_2803AA888, &qword_26A857920);
  sub_26A51D0F8(v20, v17, &qword_2803ADB68, &unk_26A85F800);
  sub_26A51D0F8(v19, v16, &qword_2803ADB68, &unk_26A85F800);
  sub_26A51D0F8(v18, a2, &qword_2803AA888, &qword_26A857920);
  *(a2 + 296) = v9;
  sub_26A51D0F8(v17, a2 + 304, &qword_2803ADB68, &unk_26A85F800);
  sub_26A51D0F8(v16, a2 + 616, &qword_2803ADB68, &unk_26A85F800);

  sub_26A4DBD10(v19, &qword_2803ADB68, &unk_26A85F800);
  sub_26A4DBD10(v20, &qword_2803ADB68, &unk_26A85F800);
  sub_26A4DBD10(__dst, &qword_2803AA888, &qword_26A857920);
  sub_26A4DBD10(v16, &qword_2803ADB68, &unk_26A85F800);
  sub_26A4DBD10(v17, &qword_2803ADB68, &unk_26A85F800);

  return sub_26A4DBD10(v18, &qword_2803AA888, &qword_26A857920);
}

unint64_t sub_26A74322C()
{
  result = qword_2803B67A8;
  if (!qword_2803B67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67A8);
  }

  return result;
}

unint64_t sub_26A743280()
{
  result = qword_28157DC48[0];
  if (!qword_28157DC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DC48);
  }

  return result;
}

unint64_t sub_26A7432D4()
{
  result = qword_2803B67C0;
  if (!qword_2803B67C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67C8, &qword_26A87EA40);
    sub_26A743358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67C0);
  }

  return result;
}

unint64_t sub_26A743358()
{
  result = qword_2803B67D0;
  if (!qword_2803B67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67D8, &qword_26A87EA48);
    sub_26A4DBCC8(&qword_2803B67E0, &qword_2803B67E8, &qword_26A87EA50, MEMORY[0x277CE1198]);
    sub_26A743410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67D0);
  }

  return result;
}

unint64_t sub_26A743410()
{
  result = qword_2803B67F0;
  if (!qword_2803B67F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B67F8, &qword_26A87EA58);
    sub_26A6D1B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B67F0);
  }

  return result;
}

uint64_t sub_26A743494()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v9, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 80) = sub_26A573830();
  *(inited + 48) = 2;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v6 = sub_26A8516A8();
  memset(v8, 0, sizeof(v8));
  sub_26A66DDEC(v6, &unk_2803B66B0);

  sub_26A4DBD10(v8, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A4DBD10(v9, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A7436C4()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2815887F8, v49, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v47, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588968;
  *(v5 + 32) = qword_281588968;
  v7 = byte_281588970;
  *(v5 + 40) = byte_281588970;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (*&v45[0])
  {
    v9 = v45[1];
    *(inited + 40) = v45[0];
    *(inited + 56) = v9;
    *(inited + 72) = v46[0];
  }

  else
  {
    sub_26A4F20CC(v48, inited + 40);
  }

  sub_26A4DBD10(v47, &qword_2803AA880, &unk_26A8567F0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v11 = qword_281588978;
  *(v10 + 32) = qword_281588978;
  v12 = byte_281588980;
  *(v10 + 40) = byte_281588980;
  *(v10 + 48) = 1;
  *(v10 + 56) = 3;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(v10);
  *(inited + 88) = v13;
  v14 = sub_26A850498();
  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  v15 = sub_26A573830();
  *(inited + 136) = v15;
  *(inited + 104) = 1;
  *(inited + 96) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26A8570F0;
  v17 = qword_281588968;
  *(v16 + 32) = qword_281588968;
  v18 = byte_281588970;
  *(v16 + 40) = byte_281588970;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  sub_26A4E324C(v17, v18);
  sub_26A621A9C(v16);
  *(inited + 144) = v19;
  sub_26A51D0F8(&unk_281588848, v45, &qword_2803AA880, &unk_26A8567F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_26A8570D0;
  v21 = qword_281588968;
  *(v20 + 32) = qword_281588968;
  v22 = byte_281588970;
  *(v20 + 40) = byte_281588970;
  sub_26A4E324C(v21, v22);

  sub_26A58787C(v23);
  sub_26A5075B0();

  if (*&v43[0])
  {
    v24 = v43[1];
    *(inited + 152) = v43[0];
    *(inited + 168) = v24;
    *(inited + 184) = v44[0];
  }

  else
  {
    sub_26A4F20CC(v46, inited + 152);
  }

  sub_26A4DBD10(v45, &qword_2803AA880, &unk_26A8567F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A8570F0;
  v26 = qword_281588968;
  *(v25 + 32) = qword_281588968;
  v27 = byte_281588970;
  *(v25 + 40) = byte_281588970;
  *(v25 + 48) = 3;
  *(v25 + 56) = 1;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(inited + 200) = v28;
  sub_26A51D0F8(&unk_281588848, v43, &qword_2803AA880, &unk_26A8567F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_26A8570D0;
  v30 = qword_281588968;
  *(v29 + 32) = qword_281588968;
  v31 = byte_281588970;
  *(v29 + 40) = byte_281588970;
  sub_26A4E324C(v30, v31);

  sub_26A58787C(v32);
  sub_26A5075B0();

  if (v40)
  {
    *(inited + 208) = v40;
    *(inited + 224) = v41;
    *(inited + 240) = v42;
  }

  else
  {
    sub_26A4F20CC(v44, inited + 208);
  }

  sub_26A4DBD10(v43, &qword_2803AA880, &unk_26A8567F0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26A857110;
  v34 = qword_281588968;
  *(v33 + 32) = qword_281588968;
  v35 = byte_281588970;
  *(v33 + 40) = byte_281588970;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 64) = 1;
  *(v33 + 72) = 4;
  sub_26A4E324C(v34, v35);
  sub_26A621A9C(v33);
  *(inited + 256) = v36;
  v37 = sub_26A850418();
  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v15;
  *(inited + 272) = 2;
  *(inited + 264) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v38 = sub_26A8516A8();
  v48[0] = 0u;
  memset(v47, 0, sizeof(v47));
  sub_26A66DDEC(v38, &unk_28157E6D8);

  sub_26A4DBD10(v47, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A4DBD10(v49, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A743D08()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_281588848, v30, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A857110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2803D2760, v28, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v25)
  {
    *(inited + 40) = v25;
    *(inited + 56) = v26;
    *(inited + 72) = v27;
  }

  else
  {
    sub_26A4F20CC(v29, inited + 40);
  }

  sub_26A4DBD10(v28, &qword_2803AA880, &unk_26A8567F0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v10 = qword_281588988;
  *(v9 + 32) = qword_281588988;
  v11 = byte_281588990;
  *(v9 + 40) = byte_281588990;
  *(v9 + 48) = 1;
  *(v9 + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  sub_26A850468();
  sub_26A8503B8();
  v13 = sub_26A850428();

  v14 = sub_26A84FED8();
  v15 = MEMORY[0x277CE04F8];
  v16 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v16;
  *(inited + 104) = v14;
  *(inited + 96) = v13;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v18 = qword_281588968;
  *(v17 + 32) = qword_281588968;
  v19 = byte_281588970;
  *(v17 + 40) = byte_281588970;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 64) = 1;
  *(v17 + 72) = 4;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(inited + 144) = v20;
  v21 = sub_26A850418();
  v22 = sub_26A84FEC8();
  *(inited + 184) = v15;
  *(inited + 192) = v16;
  *(inited + 160) = v22;
  *(inited + 152) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v23 = sub_26A8516A8();
  v29[0] = 0u;
  memset(v28, 0, sizeof(v28));
  sub_26A66DDEC(v23, &unk_2803B6700);

  sub_26A4DBD10(v28, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A4DBD10(v30, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A744170()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A51D0F8(&unk_2815888E8, v16, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = qword_281588988;
  *(v1 + 32) = qword_281588988;
  v3 = byte_281588990;
  *(v1 + 40) = byte_281588990;
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  sub_26A850458();
  sub_26A8503A8();
  v5 = sub_26A850428();

  *(inited + 80) = 0;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v7 = qword_281588968;
  *(v6 + 32) = qword_281588968;
  v8 = byte_281588970;
  *(v6 + 40) = byte_281588970;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 1;
  *(v6 + 72) = 4;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  v10 = sub_26A850408();
  v11 = sub_26A84FEA8();
  v12 = MEMORY[0x277CE04E8];
  *(inited + 128) = MEMORY[0x277CE04F8];
  *(inited + 136) = v12;
  *(inited + 104) = v11;
  *(inited + 96) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v13 = sub_26A8516A8();
  memset(v15, 0, sizeof(v15));
  sub_26A66DDEC(v13, &unk_2803B6750);

  sub_26A4DBD10(v15, &qword_2803ABAC0, &unk_26A85AF60);
  return sub_26A4DBD10(v16, &qword_2803AA880, &unk_26A8567F0);
}

uint64_t sub_26A744454(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A7444D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A74453C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemStandardTextLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7445A0(double a1, double a2)
{
  v5 = *(type metadata accessor for SummaryItemStandardTextLayout(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A74038C(v6, a1, a2);
}

unint64_t sub_26A744618()
{
  result = qword_2803B6828;
  if (!qword_2803B6828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6820, &qword_26A87EAA8);
    sub_26A7446A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6828);
  }

  return result;
}

unint64_t sub_26A7446A4()
{
  result = qword_2803B6830;
  if (!qword_2803B6830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6838, &qword_26A87EAB0);
    sub_26A744730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6830);
  }

  return result;
}

unint64_t sub_26A744730()
{
  result = qword_2803B6840;
  if (!qword_2803B6840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6848, &qword_26A87EAB8);
    sub_26A7447E8();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6840);
  }

  return result;
}

unint64_t sub_26A7447E8()
{
  result = qword_2803B6850;
  if (!qword_2803B6850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6858, &qword_26A87EAC0);
    sub_26A4DBCC8(&qword_2803B6860, &qword_2803B6868, &qword_26A87EAC8, MEMORY[0x277CE1198]);
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6850);
  }

  return result;
}

unint64_t sub_26A7448CC()
{
  result = qword_2803B6880;
  if (!qword_2803B6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B6808, &qword_26A87EA90);
    sub_26A4DBCC8(&qword_2803B6888, &qword_2803B6890, &qword_26A87EAD8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B6880);
  }

  return result;
}

uint64_t sub_26A744984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6890, &qword_26A87EAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7449F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SummaryItemStandardTextLayout(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 49) & ~*(v3 + 80));

  return sub_26A74295C((v1 + 24), v5, a1, v4);
}

unint64_t sub_26A744A6C()
{
  result = qword_2803B68D8;
  if (!qword_2803B68D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B68D0, &qword_26A87EBA8);
    v1 = MEMORY[0x277CE14C0];
    sub_26A4DBCC8(&qword_2803B68E0, &qword_2803B68E8, &qword_26A87EBB0, MEMORY[0x277CE14C0]);
    sub_26A4DBCC8(&qword_2803B68F0, &qword_2803B68F8, &qword_26A87EBB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B68D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_86()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  sub_26A49035C(*(v0 + 32), *(v0 + 40));
  sub_26A49035C(*(v0 + 48), *(v0 + 56));
  sub_26A49035C(*(v0 + 64), *(v0 + 72));
  sub_26A49035C(*(v0 + 80), *(v0 + 88));
  sub_26A49035C(*(v0 + 96), *(v0 + 104));
  sub_26A49035C(*(v0 + 112), *(v0 + 120));
  sub_26A49035C(*(v0 + 128), *(v0 + 136));
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_7_58()
{

  return type metadata accessor for SummaryItemConstants(0);
}

uint64_t sub_26A744C78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26A744CB8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26A744D2C()
{
  sub_26A7451F4();
  sub_26A84F998();
  return v1;
}

uint64_t sub_26A744DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A7453C4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A744E0C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v1 + 8);
  v7 = *v1;
  v28 = *v1;
  if (v29 == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = v1[2];
      v20 = 0;
      v21 = 0;
      v19 = v8;
      v22 = 0;

      goto LABEL_10;
    }
  }

  else
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A7450B8(&v28);
    (*(v4 + 8))(v6, v3);
    if ((v23 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA8, &qword_26A859E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  v11 = sub_26A850208();
  *(inited + 32) = v11;
  v12 = sub_26A850228();
  *(inited + 33) = v12;
  v13 = sub_26A850218();
  sub_26A850218();
  if (sub_26A850218() != v11)
  {
    v13 = sub_26A850218();
  }

  sub_26A850218();
  if (sub_26A850218() != v12)
  {
    v13 = sub_26A850218();
  }

  v15 = v1[3];
  v14 = v1[4];
  v26 = v14;
  v27 = v15;
  sub_26A745120(&v27, &v23);
  sub_26A745120(&v26, &v23);
  v19 = v13;
  v20 = v15;
  v21 = v14;
  v22 = 1;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6910, &qword_26A87ED88);
  sub_26A745190();
  sub_26A84FDF8();
  result = *&v23;
  v17 = v24;
  v18 = v25;
  *a1 = v23;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  return result;
}