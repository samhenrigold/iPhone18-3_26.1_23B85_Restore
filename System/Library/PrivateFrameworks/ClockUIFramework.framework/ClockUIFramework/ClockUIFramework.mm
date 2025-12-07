uint64_t sub_243785628(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2437881AC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_24378809C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_243785758(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_2437881AC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24378809C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_243785880()
{
  sub_2437872C0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437858FC()
{
  v0 = sub_2437881EC();
  __swift_allocate_value_buffer(v0, qword_27ED85248);
  __swift_project_value_buffer(v0, qword_27ED85248);
  return sub_2437881DC();
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

uint64_t type metadata accessor for TimeView(uint64_t a1)
{
  result = qword_27ED85278;
  if (!qword_27ED85278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243785A30(uint64_t a1)
{
  sub_243785ACC(319);
  if (v1 <= 0x3F)
  {
    sub_2437881AC();
    if (v2 <= 0x3F)
    {
      sub_24378809C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243785ACC(uint64_t a1)
{
  if (!qword_27ED85288)
  {
    sub_2437883EC();
    sub_2437871DC(&qword_27ED85270, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    v1 = sub_24378822C();
    if (!v2)
    {
      atomic_store(v1, &qword_27ED85288);
    }
  }
}

uint64_t sub_243785B7C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_243787F4C();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852D8, &qword_243788700);
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852E0, &qword_243788708);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v39 - v5;
  v6 = sub_243787FCC();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v39 - v9;
  v10 = sub_2437880DC();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2437880FC();
  v13 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2437880CC();
  v16 = *(v39 - 8);
  v17 = MEMORY[0x28223BE20](v39);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  type metadata accessor for TimeView(0);
  sub_24378807C();
  sub_24378819C();
  sub_2437880BC();
  (*(v13 + 8))(v15, v40);
  v22 = *(v16 + 8);
  v23 = v39;
  v22(v19, v39);
  sub_24378818C();
  sub_2437880AC();
  (*(v41 + 8))(v12, v42);
  v22(v21, v23);
  sub_243787FBC();
  v56 = sub_24378838C();
  sub_2437874F4();
  sub_243787F8C();
  v24 = sub_24378827C();
  v25 = *(*(v24 - 8) + 56);
  v26 = v43;
  v25(v43, 1, 1, v24);
  sub_24378829C();
  sub_243787548(v26, &qword_27ED852E0, &qword_243788708);
  sub_24378828C();
  v27 = sub_2437882AC();

  v56 = v27;
  sub_2437875A8();
  sub_243787F8C();
  v25(v26, 1, 1, v24);
  sub_24378829C();
  sub_243787548(v26, &qword_27ED852E0, &qword_243788708);
  sub_24378828C();
  v28 = sub_2437882AC();

  v56 = v28;
  v29 = v53;
  sub_243787FDC();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_2437875FC();
  v30 = v45;
  sub_243787F9C();

  v32 = v51;
  v31 = v52;
  v33 = v49;
  (*(v51 + 104))(v49, *MEMORY[0x277CC8A98], v52);
  v34 = v44;
  v35 = v48;
  sub_243787FAC();
  (*(v32 + 8))(v33, v31);
  (*(v50 + 8))(v30, v35);
  sub_243787F6C();
  v36 = v47;
  v37 = *(v46 + 8);
  v37(v34, v47);
  return (v37)(v29, v36);
}

void sub_243786320(uint64_t a1, uint64_t *a2)
{
  sub_2437875FC();
  sub_243787FEC();
  __break(1u);
}

uint64_t sub_243786364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85290, &qword_2437886A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v27 - v5);
  v7 = type metadata accessor for TimeView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85298, &qword_2437886A8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  sub_2437870A4(v2, v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_243787108(v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852A0, &qword_2437886B0);
  v16 = sub_2437883CC();
  v17 = sub_2437871DC(&qword_27ED852A8, MEMORY[0x277D63E98], MEMORY[0x277D63E90]);
  v27[0] = v16;
  v27[1] = v17;
  swift_getOpaqueTypeConformance2();
  sub_24378839C();
  *v6 = sub_24378837C();
  v18 = *MEMORY[0x277D63BB0];
  v19 = sub_2437883AC();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v6, v18, v19);
  (*(v20 + 56))(v6, 0, 1, v19);
  sub_243787778(&qword_27ED852B0, &qword_27ED85298, &qword_2437886A8, MEMORY[0x277D63B90]);
  sub_24378832C();
  sub_243787548(v6, &qword_27ED85290, &qword_2437886A0);
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852B8, &qword_2437886E8) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852C0, &qword_2437886F0) + 28);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_2437881FC();
  result = (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = KeyPath;
  return result;
}

uint64_t sub_243786758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v56 = a2;
  v2 = type metadata accessor for TimeView(0);
  v53 = *(v2 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_243787F7C();
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2437883CC();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_24378816C();
  v64 = v7;
  sub_24378726C();
  v8 = sub_2437882FC();
  v10 = v9;
  v12 = v11;
  sub_24378826C();
  v13 = sub_2437882DC();
  v15 = v14;
  v17 = v16;

  sub_2437872C0(v8, v10, v12 & 1);

  LODWORD(v63) = sub_24378825C();
  v18 = sub_2437882CC();
  v20 = v19;
  v22 = v21;
  sub_2437872C0(v13, v15, v17 & 1);

  sub_24378836C();
  v23 = sub_2437882BC();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_2437872C0(v18, v20, v22 & 1);

  v30 = MEMORY[0x277CE0BD8];
  v31 = MEMORY[0x277D638E8];
  v65 = MEMORY[0x277CE0BD8];
  v66 = MEMORY[0x277D638E8];
  v32 = swift_allocObject();
  v63 = v32;
  *(v32 + 16) = v23;
  *(v32 + 24) = v25;
  *(v32 + 32) = v27 & 1;
  *(v32 + 40) = v29;
  v33 = v48;
  sub_243785B7C(v49);
  v34 = sub_2437882EC();
  v36 = v35;
  LOBYTE(v13) = v37;
  v39 = v38;
  v61 = v30;
  v62 = v31;
  v40 = swift_allocObject();
  v60 = v40;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v13 & 1;
  *(v40 + 40) = v39;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v41 = v50;
  sub_2437883BC();
  v42 = v51;
  sub_2437870A4(v33, v51);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  sub_243787108(v42, v44 + v43);
  sub_2437871DC(&qword_27ED852A8, MEMORY[0x277D63E98], MEMORY[0x277D63E90]);
  v45 = v54;
  sub_24378831C();

  return (*(v55 + 8))(v41, v45);
}

uint64_t sub_243786BD8()
{
  v1 = v0;
  v2 = sub_24378815C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852D0, &qword_2437886F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_24378802C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED85240 != -1)
  {
    swift_once();
  }

  v13 = sub_2437881EC();
  __swift_project_value_buffer(v13, qword_27ED85248);
  v14 = sub_2437881CC();
  v15 = sub_24378841C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v10;
    v17 = v9;
    v18 = v12;
    v19 = v5;
    v20 = v1;
    v21 = v3;
    v22 = v2;
    v23 = v16;
    *v16 = 0;
    _os_log_impl(&dword_243784000, v14, v15, "[TimeView.onSnippetTapped]: Performing punchout", v16, 2u);
    v24 = v23;
    v2 = v22;
    v3 = v21;
    v1 = v20;
    v5 = v19;
    v12 = v18;
    v9 = v17;
    v10 = v28;
    MEMORY[0x245D3E770](v24, -1, -1);
  }

  type metadata accessor for TimeView(0);
  sub_24378817C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_243787548(v8, &qword_27ED852D0, &qword_2437886F8);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (*v1)
  {
    v26 = *v1;
    sub_24378801C();
    sub_24378814C();
    sub_2437883DC();

    (*(v3 + 8))(v5, v2);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2437883EC();
    sub_2437871DC(&qword_27ED85270, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    result = sub_24378820C();
    __break(1u);
  }

  return result;
}

uint64_t sub_243786FB4(uint64_t a1)
{
  v2 = sub_2437881FC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24378824C();
}

uint64_t sub_2437870A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243787108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24378716C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_243786758(v4, a1);
}

uint64_t sub_2437871DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24378726C()
{
  result = qword_27ED852C8;
  if (!qword_27ED852C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852C8);
  }

  return result;
}

uint64_t sub_2437872C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TimeView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_2437881AC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_24378809C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2437874F4()
{
  result = qword_27ED852E8;
  if (!qword_27ED852E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852E8);
  }

  return result;
}

uint64_t sub_243787548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2437875A8()
{
  result = qword_27ED852F0;
  if (!qword_27ED852F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852F0);
  }

  return result;
}

unint64_t sub_2437875FC()
{
  result = qword_27ED852F8;
  if (!qword_27ED852F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852F8);
  }

  return result;
}

unint64_t sub_243787650()
{
  result = qword_27ED85308;
  if (!qword_27ED85308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED852B8, &qword_2437886E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85298, &qword_2437886A8);
    sub_243787778(&qword_27ED852B0, &qword_27ED85298, &qword_2437886A8, MEMORY[0x277D63B90]);
    swift_getOpaqueTypeConformance2();
    sub_243787778(&qword_27ED85310, &qword_27ED852C0, &qword_2437886F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85308);
  }

  return result;
}

uint64_t sub_243787778(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_243787808@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_243787854(uint64_t a1)
{
  v34 = a1;
  v1 = sub_24378800C();
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24378813C();
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24378811C();
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2437880FC();
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85260, &qword_243788620);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85268, &qword_243788628);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for TimeView(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2437881AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2437881BC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v34, v21);
  if ((*(v22 + 88))(v24, v21) == *MEMORY[0x277D617B8])
  {
    (*(v22 + 96))(v24, v21);
    v25 = *(v18 + 32);
    v32 = v17;
    v33 = v20;
    v25(v20, v24, v17);
    (*(v18 + 16))(v16 + *(v14 + 20), v20, v17);
    sub_2437883EC();
    sub_243787EA8(&qword_27ED85270, MEMORY[0x277D63F60], MEMORY[0x277D63F50]);
    *v16 = sub_24378821C();
    v16[1] = v26;
    v34 = *(v14 + 24);
    sub_24378805C();
    v27 = sub_24378806C();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    v28 = v35;
    sub_24378803C();
    v29 = sub_24378804C();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    sub_2437880EC();
    sub_24378810C();
    sub_24378812C();
    sub_243787FFC();
    sub_24378808C();
    sub_243787EA8(&unk_27ED85320, type metadata accessor for TimeView, &unk_24378864C);
    v30 = sub_24378830C();
    sub_243787EF0(v16);
    (*(v18 + 8))(v33, v32);
    return v30;
  }

  else
  {
    result = sub_24378842C();
    __break(1u);
  }

  return result;
}

uint64_t sub_243787EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243787EF0(uint64_t a1)
{
  v2 = type metadata accessor for TimeView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}