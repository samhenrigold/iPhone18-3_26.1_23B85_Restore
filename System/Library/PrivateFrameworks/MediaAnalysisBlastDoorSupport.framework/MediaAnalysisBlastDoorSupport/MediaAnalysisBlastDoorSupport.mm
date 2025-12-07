id MediaAnalysisBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaAnalysisBlastDoorInterface.init()()
{
  v13 = sub_258455168();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_258455158();
  MEMORY[0x28223BE20](v3);
  v4 = sub_258454F58();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_258454FA8();
  v12[1] = "wType";
  v12[2] = v5;
  v6 = *MEMORY[0x277CF30B0];
  sub_258452D78(0, &qword_27F92F448, 0x277D85C78);
  v7 = v6;
  sub_258454F48();
  v16 = MEMORY[0x277D84F90];
  sub_2584535F0(&qword_27F92F450, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F458, &qword_258455620);
  sub_258451BC8();
  sub_2584551A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v13);
  sub_258455178();
  v8 = sub_258454F68();
  v9 = v14;
  *&v14[OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd] = v8;
  v10 = type metadata accessor for MediaAnalysisBlastDoorInterface();
  v15.receiver = v9;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
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

unint64_t sub_258451BC8()
{
  result = qword_27F92F460;
  if (!qword_27F92F460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92F458, &qword_258455620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F460);
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

uint64_t sub_258451CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6572506567616D69 && a2 == 0xED00007377656976)
  {
    return 1;
  }

  v5 = sub_2584551C8();
  v6 = a1 == 0x6572506F65646976 && a2 == 0xED00007377656976;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_2584551C8();
}

uint64_t sub_258451E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_258455088();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2584550D8();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F478, &qword_258455630);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_2584550F8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  sub_258454EC8();
  sub_2584550E8();
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v19, v21, v15);
  sub_2584550C8();
  v22 = v8;
  sub_258455078();
  v27 = *(v27 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
  sub_258455098();
  v23 = sub_2584550A8();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v32;
  *(v24 + 24) = v25;
  sub_2584535F0(&qword_27F92F490, MEMORY[0x277CF2078], MEMORY[0x277CF2070]);

  sub_258454F98();

  sub_258452628(v5, &qword_27F92F470, &qword_258455628);
  (*(v30 + 8))(v22, v31);
  (*(v28 + 8))(v11, v29);
  return (*(v16 + 8))(v21, v15);
}

void sub_258452414(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_258455098();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C8, &qword_258455698);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - v9);
  sub_258454864(a1, &v13 - v9, &qword_27F92F4C8, &qword_258455698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x259C802D0](*v10);
    a2(0, v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v12 = sub_258455068();
    a2(v12, 0);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2584525E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258452628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2584527A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_258454EA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_258452810(uint64_t a1, float a2, float a3)
{
  v34 = a1;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v32 - v6;
  v44 = sub_258454FE8();
  v33 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2584550F8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_2584550D8();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258454FC8();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258455148();
  sub_258452D78(0, &qword_27F92F498, 0x277D86200);
  v14 = sub_258455188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4A0, &qword_258455638);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_258455610;
  v48 = a2;
  v49 = 0;
  v16 = sub_2584550B8();
  v18 = v17;
  v19 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v20 = sub_258452DC0();
  *(v15 + 64) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v46 = a3;
  v47 = 0;
  v21 = sub_2584550B8();
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22;
  sub_258454F38(v13, &dword_258450000, v14, "Invoking flow NOT exporting full resolution with maxPixelDim %@ and scale %@", 76, 2, v15);

  if ((LODWORD(v45) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = v36;
  sub_258454FB8();
  sub_258454EC8();
  v24 = v35;
  sub_2584550E8();
  if (!v24)
  {
    v25 = v37;
    sub_2584550C8();
    v26 = sub_2584550A8();
    v27 = v43;
    (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
    sub_2584535F0(&qword_27F92F4B0, MEMORY[0x277CF2038], MEMORY[0x277CF2030]);
    v28 = v42;
    v29 = v44;
    sub_258454F78();
    sub_258452628(v27, &qword_27F92F470, &qword_258455628);
    v30 = sub_258454FD8();
    (*(v33 + 8))(v28, v29);
    (*(v40 + 8))(v25, v41);
    (*(v38 + 8))(v23, v39);
    return v30;
  }

LABEL_9:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_258452D78(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258452DC0()
{
  result = qword_27F92F4A8;
  if (!qword_27F92F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4A8);
  }

  return result;
}

uint64_t sub_258452F94(float a1, double a2, double a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a7;
  v10 = sub_258454EF8();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_2584550F8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2584550D8();
  v30 = *(v17 - 8);
  v31 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_258455018();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    v28 = v22;
    v29 = v10;
    sub_258455008();
    sub_258454EC8();
    sub_2584550E8();
    sub_2584550C8();
    sub_258455058();
    v25 = sub_2584550A8();
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
    sub_258454EE8();
    v26 = swift_allocObject();
    *(v26 + 16) = a6;
    *(v26 + 24) = v32;
    sub_2584535F0(&qword_27F92F4B8, MEMORY[0x277CF2048], MEMORY[0x277CF2040]);

    sub_258454F88();

    (*(v33 + 8))(v12, v29);
    sub_258452628(v15, &qword_27F92F470, &qword_258455628);
    (*(v30 + 8))(v19, v31);
    return (*(v21 + 8))(v24, v28);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_258453414(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *))
{
  v6 = sub_258455058();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C0, &qword_258455690);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - v11);
  sub_258454864(a1, &v15 - v11, &qword_27F92F4C0, &qword_258455690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x259C802D0](*v12);
    a4(0, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = sub_258455028();
    a4(v14, 0);

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2584535F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25845379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, int a7, uint64_t a8, uint64_t a9)
{
  v37 = a6;
  v38 = a8;
  LODWORD(v39) = a7;
  v35 = a5;
  v34[1] = a3;
  v34[2] = a4;
  v36 = a1;
  v9 = sub_258454EF8();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - v13;
  v15 = sub_2584550F8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2584550D8();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_258455018();
  v40 = *(v19 - 8);
  v41 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258455048();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v34 - v27;
  sub_258455038();
  v29 = *(v23 + 16);
  v39 = v22;
  v29(v26, v28, v22);
  v37 = v21;
  sub_258454FF8();
  sub_258454EC8();
  sub_2584550E8();
  sub_2584550C8();
  sub_258455058();
  v30 = sub_2584550A8();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_258454EE8();
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  *(v31 + 24) = a9;
  sub_2584535F0(&qword_27F92F4B8, MEMORY[0x277CF2048], MEMORY[0x277CF2040]);

  v32 = v37;
  sub_258454F88();

  (*(v44 + 8))(v11, v45);
  sub_258452628(v14, &qword_27F92F470, &qword_258455628);
  (*(v42 + 8))(v18, v43);
  (*(v40 + 8))(v32, v41);
  return (*(v23 + 8))(v28, v39);
}

void sub_258453CAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *, void *, void))
{
  v16 = a4;
  v6 = sub_258455058();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C0, &qword_258455690);
  MEMORY[0x28223BE20](v10);
  v12 = (&v15 - v11);
  sub_258454864(a1, &v15 - v11, &qword_27F92F4C0, &qword_258455690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x259C802D0](*v12);
    v16(0, v13, a3 & 1);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v14 = sub_258455028();
    v16(v14, 0, a3 & 1);

    (*(v7 + 8))(v9, v6);
  }
}

void sub_25845401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_258454EA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a4 + 16))(a4, a1);
}

id MediaAnalysisBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAnalysisBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2584541F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258454240(uint64_t a1, uint64_t a2, const void *a3)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v29 - v5;
  v36 = sub_258455088();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2584550D8();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F478, &qword_258455630);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = sub_2584550F8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  v37 = swift_allocObject();
  *(v37 + 16) = a3;
  _Block_copy(a3);
  sub_258454EC8();
  sub_2584550E8();
  (*(v15 + 56))(v13, 0, 1, v14);
  (*(v15 + 32))(v20, v13, v14);
  (*(v15 + 16))(v18, v20, v14);
  v30 = v10;
  sub_2584550C8();
  v21 = v7;
  sub_258455078();
  v31 = *(v31 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
  sub_258455098();
  v22 = sub_2584550A8();
  v23 = v35;
  (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  v24 = swift_allocObject();
  v25 = v32;
  v26 = v37;
  *(v24 + 16) = sub_2584548E0;
  *(v24 + 24) = v26;
  sub_2584535F0(&qword_27F92F490, MEMORY[0x277CF2078], MEMORY[0x277CF2070]);

  v27 = v30;
  sub_258454F98();

  sub_258452628(v23, &qword_27F92F470, &qword_258455628);
  (*(v34 + 8))(v21, v36);
  (*(v25 + 8))(v27, v33);
  (*(v15 + 8))(v20, v14);
}

uint64_t sub_258454864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258454958@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258454A68(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t PreviewType.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

uint64_t sub_2584549C0()
{
  sub_2584551D8();
  sub_2584551E8();
  return sub_2584551F8();
}

uint64_t sub_258454A08(uint64_t a1)
{
  sub_2584551D8();
  sub_2584551E8();
  return sub_2584551F8();
}

unsigned __int8 *sub_258454A4C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_258454A68(unsigned __int8 a1)
{
  v1 = 0;
  switch(a1)
  {
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x74u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x83u:
    case 0x86u:
    case 0x87u:
    case 0x8Au:
    case 0x8Bu:
    case 0xAAu:
    case 0xB4u:
    case 0xB5u:
    case 0xBEu:
    case 0xC3u:
    case 0xC4u:
      return a1 | (v1 << 8);
    default:
      a1 = 0;
      v1 = 1;
      break;
  }

  return a1 | (v1 << 8);
}

unint64_t sub_258454C44()
{
  result = qword_27F92F4D0;
  if (!qword_27F92F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4D0);
  }

  return result;
}

unint64_t sub_258454C9C()
{
  result = qword_27F92F4D8;
  if (!qword_27F92F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4D8);
  }

  return result;
}

uint64_t NSUserDefaults.isMessagesLockdownModeEnabled.getter()
{
  v1 = v0;
  sub_258454F28();
  v2 = sub_258454F08();
  v3 = MEMORY[0x259C7FDB0]();

  if (v3)
  {
    return 1;
  }

  v5 = sub_258455128();
  v6 = [v1 objectForKey:v5 inDomain:*MEMORY[0x277CCA208]];

  if (v6)
  {
    sub_258455198();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_258454E40(v10);
  }

  return 0;
}

uint64_t sub_258454E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92F4E0, &qword_258455828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}