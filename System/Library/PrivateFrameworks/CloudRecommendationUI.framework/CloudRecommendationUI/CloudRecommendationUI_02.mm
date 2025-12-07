uint64_t sub_243A4E734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsCardList(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_243AC2A98();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_243A4F664(a2, v8);
  sub_243AC2A58();
  v13 = sub_243AC2A48();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_243A4FF8C(v8, v15 + v14, type metadata accessor for RecommendationsCardList);
  sub_243A3306C(0, 0, v11, &unk_243AC5F08, v15);

  return (*(a2 + *(v5 + 40)))(a1);
}

uint64_t sub_243A4E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_243AC13A8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_243AC2A58();
  v4[10] = sub_243AC2A48();
  v7 = sub_243AC2A28();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_243A4EA1C, v7, v6);
}

void sub_243A4EA1C()
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v1 = sub_243AC1468();
  v0[13] = __swift_project_value_buffer(v1, qword_27EDA14D8);
  v2 = sub_243AC1448();
  v3 = sub_243AC2B78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_243A1B000, v2, v3, "Sending action event analytics for removing recommendation.", v4, 2u);
    MEMORY[0x245D47D20](v4, -1, -1);
  }

  v5 = v0[9];

  sub_243A4D1C4(v5);
  v6 = [objc_opt_self() ams_sharedAccountStore];
  v7 = [v6 aa_primaryAppleAccount];
  v0[14] = v7;

  if (v7)
  {
    v0[15] = sub_243A2E2B4(MEMORY[0x277D84F90]);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_243A4EC1C;
    v9 = v0[9];

    sub_243A8C09C(0x65736F6C43, 0xE500000000000000, 0x7373696D736964, 0xE700000000000000, v9, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243A4EC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_243A4EE58;
  }

  else
  {
    v9 = sub_243A4EDF0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_243A4EDF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243A4EE58()
{
  v15 = v0;
  v1 = *(v0 + 136);

  v2 = v1;
  v3 = sub_243AC1448();
  v4 = sub_243AC2B58();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_243AC2F58();
    v10 = sub_243AB73D8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_243A1B000, v3, v4, "Failed to send action event: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D47D20](v7, -1, -1);
    MEMORY[0x245D47D20](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 136);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_243A4EFE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_243AC24B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_243AC24D8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v26 = sub_243AC25A8();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v15 = sub_243AC1F98();
  v23[1] = v15;
  v16 = [a1 title];
  sub_243AC2858();

  sub_243AC2598();
  v28 = v15;

  sub_243AC24C8();
  v17 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v17);
  sub_243A2E2B4(v17);
  sub_243AC24E8();
  v18 = sub_243AC24F8();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  v19 = MEMORY[0x277CE0F78];
  v20 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A2251C(v7, &qword_27ED991C8, &unk_243AC6A10);
  (*(v8 + 8))(v10, v26);

  v28 = v19;
  v29 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_243AC1DF8();
  return (*(v25 + 8))(v14, v21);
}

uint64_t sub_243A4F3C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for RecommendationsCardList(0) + 24));
  v4 = [a2 identifier];
  v5 = sub_243AC2858();
  v7 = v6;

  v3(v5, v7);
}

uint64_t sub_243A4F47C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v7[1] = *(v1 + *(MEMORY[0x28223BE20](a1 - 8) + 28));
  sub_243A4F664(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_243A4FF8C(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for RecommendationsCardList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990E0, &qword_243AC5DF8);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0, MEMORY[0x277D83980]);
  sub_243A4F74C();
  sub_243A4FE7C(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel, &unk_243AC5CC0);
  return sub_243AC20F8();
}

uint64_t sub_243A4F664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsCardList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A4F6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A4D3AC(a1, v6, a2);
}

unint64_t sub_243A4F74C()
{
  result = qword_27ED990F0;
  if (!qword_27ED990F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990E0, &qword_243AC5DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990F8, &qword_243AC5E00);
    sub_243A4F80C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED990F0);
  }

  return result;
}

unint64_t sub_243A4F80C()
{
  result = qword_27ED99100;
  if (!qword_27ED99100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED990F8, &qword_243AC5E00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99108, &qword_243AC5E08);
    sub_243A50728(&qword_27ED99110, &qword_27ED99108, &qword_243AC5E08, sub_243A4F914);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99100);
  }

  return result;
}

unint64_t sub_243A4F914()
{
  result = qword_27ED99118;
  if (!qword_27ED99118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99120, &qword_243AC5E10);
    sub_243A4F9A0();
    sub_243A4FB7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99118);
  }

  return result;
}

unint64_t sub_243A4F9A0()
{
  result = qword_27ED99128;
  if (!qword_27ED99128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99130, &qword_243AC5E18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99138, &unk_243AC5E20);
    sub_243A4FA94();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99128);
  }

  return result;
}

unint64_t sub_243A4FA94()
{
  result = qword_27ED99140;
  if (!qword_27ED99140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99138, &unk_243AC5E20);
    sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card, &protocol conformance descriptor for Card);
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99140);
  }

  return result;
}

unint64_t sub_243A4FB7C()
{
  result = qword_27ED99170;
  if (!qword_27ED99170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99178, &qword_243AC5E38);
    sub_243A4F9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99170);
  }

  return result;
}

unint64_t sub_243A4FC18()
{
  result = qword_27ED99188;
  if (!qword_27ED99188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99188);
  }

  return result;
}

uint64_t sub_243A4FC6C()
{
  v1 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_243AC13A8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

unint64_t sub_243A4FDD0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A4DAFC(a1, v2 + v6, v7, a2);
}

uint64_t sub_243A4FE7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243A4FEC4()
{
  result = qword_27ED98F70;
  if (!qword_27ED98F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED98F70);
  }

  return result;
}

uint64_t sub_243A4FF14(uint64_t a1)
{
  v3 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_243A4E734(a1, v4);
}

uint64_t sub_243A4FF8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A4FFF4()
{
  v1 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_243AC13A8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_243A50158()
{
  v1 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_243A4F3C0(v0 + v2, v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_243AC13A8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A5042C()
{
  v1 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_243AC13A8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A50584(uint64_t a1)
{
  v4 = *(type metadata accessor for RecommendationsCardList(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A1FEA8;

  return sub_243A4E928(a1, v6, v7, v1 + v5);
}

uint64_t sub_243A50674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED990D8, &qword_243AC8670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A50728(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void sub_243A507B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v157 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v154 = &v128[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99080, &qword_243AC5C28);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v128[-v7];
  v160 = sub_243AC1528();
  v159 = *(v160 - 8);
  v9 = MEMORY[0x28223BE20](v160);
  v152 = &v128[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v150 = &v128[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v128[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v128[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v158 = &v128[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v128[-v20];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v128[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v128[-v26];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v128[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v128[-v31];
  v156 = a2;
  sub_243AC14D8();
  v138 = v27;
  v155 = v30;
  v148 = v24;
  v149 = v21;
  v142 = v4;
  v141 = a1;
  v33 = v159;
  v34 = v8;
  v35 = v160;
  (*(v159 + 56))(v34, 0, 1, v160);
  v36 = *(v33 + 32);
  v36(v32, v34, v35);
  sub_243A5548C(v32, &v161);
  v136 = v33 + 32;
  v133 = v32;
  v37 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v38 = *(v37 + 24);
  v39 = v155;
  sub_243AC14D8();
  v40 = *(v33 + 16);
  v41 = v138;
  v40(v138, v39, v35);
  v42 = *(v33 + 88);
  v144 = v33 + 88;
  v143 = v42;
  v43 = v42(v41, v35);
  if (v43 != *MEMORY[0x277D23278])
  {
    sub_243A57004(&v161);
    v66 = *(v33 + 8);
    v66(v41, v35);
    type metadata accessor for DecodableStateError(0);
    sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
    v67 = v35;
    v68 = swift_allocError();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v72 = v155;
    v40(v70, v155, v67);
    *&v70[v71] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v66(v72, v67);
    v66(v133, v67);
    goto LABEL_40;
  }

  v132 = v38;
  v139 = v36;
  v129 = v43;
  v131 = v37;
  v145 = v40;
  v140 = v33 + 16;
  v146 = *(v33 + 8);
  v147 = v33 + 8;
  v146(v155, v35);
  v44 = *(v33 + 96);
  v135 = v33 + 96;
  v134 = v44;
  v44(v41, v35);
  v45 = *(*v41 + 16);

  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v130 = v45;
    v48 = (v45 + v47);
    v138 = *(v33 + 72);
    v137 = *MEMORY[0x277D23258];
    v49 = MEMORY[0x277D84F90];
    v50 = v149;
    v51 = v148;
    do
    {
      v61 = v145;
      v145(v51, v48, v35);
      v61(v50, v51, v35);
      v62 = v143(v50, v35);
      if (v62 == v137)
      {
        v146(v51, v35);
        v134(v50, v35);
        v63 = *(*v50 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_243AA020C(0, *(v49 + 2) + 1, 1, v49);
        }

        v59 = v157;
        v60 = v158;
        v65 = *(v49 + 2);
        v64 = *(v49 + 3);
        if (v65 >= v64 >> 1)
        {
          v49 = sub_243AA020C((v64 > 1), v65 + 1, 1, v49);
        }

        *(v49 + 2) = v65 + 1;
        v49[v65 + 32] = v63;
        v35 = v160;
      }

      else
      {
        v52 = v146;
        v146(v50, v35);
        type metadata accessor for DecodableStateError(0);
        sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
        v53 = swift_allocError();
        v155 = v49;
        v54 = v53;
        v56 = v55;
        v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
        v61(v56, v51, v160);
        *&v56[v57] = MEMORY[0x277D839B0];
        v35 = v160;
        swift_willThrow();
        v52(v51, v35);
        v58 = v54;
        v49 = v155;

        v59 = v157;
        v60 = v158;
      }

      v48 = &v138[v48];
      --v46;
      v50 = v149;
      v51 = v148;
    }

    while (v46);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
    v59 = v157;
    v60 = v158;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v155 = v49;
  }

  else
  {
    v155 = sub_243A4CDD4(v49);
  }

  v73 = v161;
  if ((v161 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v161 >= *(v155 + 2))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v35 = v155 + 32;
  v155[v161 + 32] = (v155[v161 + 32] & 1) == 0;
  if (qword_27ED98910 != -1)
  {
LABEL_51:
    swift_once();
  }

  v74 = sub_243AC1468();
  __swift_project_value_buffer(v74, qword_27EDA14A8);
  sub_243A57034(&v161, v162);
  v75 = sub_243AC1448();
  v76 = sub_243AC2B48();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    *&v162[0] = v157;
    *v77 = 134218498;
    *(v77 + 4) = v73;
    *(v77 + 12) = 1024;
    v78 = v155;
    if (v73 >= *(v155 + 2))
    {
      __break(1u);
      return;
    }

    v79 = v35[v73];
    sub_243A57004(&v161);
    *(v77 + 14) = v79;
    sub_243A57004(&v161);
    *(v77 + 18) = 2080;

    v81 = MEMORY[0x245D46D70](v80, MEMORY[0x277D839B0]);
    v83 = v82;

    v84 = sub_243AB73D8(v81, v83, v162);

    *(v77 + 20) = v84;
    _os_log_impl(&dword_243A1B000, v75, v76, "ToggleRecommendedBackupAction, setting selected devices idx %ld selected: %{BOOL}d. New list: %s", v77, 0x1Cu);
    v85 = v157;
    __swift_destroy_boxed_opaque_existential_1(v157);
    MEMORY[0x245D47D20](v85, -1, -1);
    MEMORY[0x245D47D20](v77, -1, -1);

    v60 = v158;
  }

  else
  {
    sub_243A57004(&v161);
    sub_243A57004(&v161);

    v78 = v155;
  }

  v86 = v154;
  (v59[2])(v154, v141 + v132, v142);
  v87 = *(v78 + 2);
  v88 = v78;
  v89 = v153;
  if (v87)
  {
    *&v162[0] = MEMORY[0x277D84F90];

    sub_243A64F54(0, v87, 0);
    v90 = 32;
    v91 = *&v162[0];
    do
    {
      sub_243AC2A18();
      *&v162[0] = v91;
      v93 = *(v91 + 16);
      v92 = *(v91 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_243A64F54((v92 > 1), v93 + 1, 1);
        v91 = *&v162[0];
      }

      *(v91 + 16) = v93 + 1;
      v139(v91 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v93, v89, v160);
      ++v90;
      --v87;
      v88 = v155;
    }

    while (v87);

    v86 = v154;
  }

  v94 = v160;
  sub_243AC29E8();

  sub_243AC15D8();
  v146(v60, v94);
  (v59[1])(v86, v142);
  v95 = v151;
  sub_243AC14D8();
  v96 = v150;
  v97 = v145;
  v145(v150, v95, v94);
  v98 = v143(v96, v94);
  if (v98 == v129)
  {
    v99 = v146;
    v146(v95, v94);
    v134(v96, v94);
    v100 = *(*v96 + 16);

    v101 = *(v100 + 16);
    if (v101)
    {
      v102 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v158 = v100;
      v103 = (v100 + v102);
      v104 = *(v159 + 72);
      v105 = MEMORY[0x277D84F90];
      v106 = v152;
      v107 = v160;
      do
      {
        v145(v106, v103, v107);
        sub_243A5548C(v106, v162);
        v146(v106, v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_243AA0300(0, *(v105 + 2) + 1, 1, v105);
        }

        v109 = *(v105 + 2);
        v108 = *(v105 + 3);
        if (v109 >= v108 >> 1)
        {
          v105 = sub_243AA0300((v108 > 1), v109 + 1, 1, v105);
        }

        *(v105 + 2) = v109 + 1;
        v110 = &v105[88 * v109];
        v111 = v162[1];
        *(v110 + 2) = v162[0];
        *(v110 + 3) = v111;
        v112 = v162[2];
        v113 = v162[3];
        v114 = v162[4];
        *(v110 + 14) = v163;
        *(v110 + 5) = v113;
        *(v110 + 6) = v114;
        *(v110 + 4) = v112;
        v106 = v152;
        v103 += v104;
        --v101;
      }

      while (v101);

      v127 = v156;
      v99 = v146;
      v88 = v155;
    }

    else
    {

      v105 = MEMORY[0x277D84F90];
      v127 = v156;
    }

    sub_243A51BC4(v127, v105, v88);

    sub_243A52500(v127, v105, v88);
    v99(v133, v160);

    swift_bridgeObjectRelease_n();
    return;
  }

  v115 = v146;
  v146(v96, v94);
  type metadata accessor for DecodableStateError(0);
  sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
  v68 = swift_allocError();
  v117 = v116;
  v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
  v97(v117, v95, v94);
  *(v117 + v118) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
  swift_willThrow();
  v115(v95, v94);
  v115(v133, v94);

LABEL_40:
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v119 = sub_243AC1468();
  __swift_project_value_buffer(v119, qword_27EDA14A8);
  v120 = v68;
  v121 = sub_243AC1448();
  v122 = sub_243AC2B58();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v123 = 138412290;
    v125 = v68;
    v126 = _swift_stdlib_bridgeErrorToNSError();
    *(v123 + 4) = v126;
    *v124 = v126;
    _os_log_impl(&dword_243A1B000, v121, v122, "ToggleRecommendedBackupAction: Error while toggling backup, %@", v123, 0xCu);
    sub_243A2251C(v124, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v124, -1, -1);
    MEMORY[0x245D47D20](v123, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_243A51BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v5 = sub_243AC1528();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = (&v67 - v9);
  MEMORY[0x28223BE20](v8);
  v72 = &v67 - v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v78;
    v14 = MEMORY[0x277D84F90];
    v15 = a2 + 32;
    v71 = a2 + 32;
    do
    {
      v87 = v14;
      v16 = v15 + 88 * v12;
      v14 = v12;
      while (1)
      {
        if (v14 >= v11)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v17 = *(v16 + 32);
        v18 = *(v16 + 64);
        v78[3] = *(v16 + 48);
        v78[4] = v18;
        v79 = *(v16 + 80);
        v19 = *(v16 + 16);
        v78[0] = *v16;
        v78[1] = v19;
        v78[2] = v17;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_54;
        }

        v20 = *(v16 + 48);
        v83 = *(v16 + 32);
        v84 = v20;
        v85 = *(v16 + 64);
        v21 = *(v16 + 16);
        v81 = *v16;
        v86 = *(v16 + 80);
        v82 = v21;
        v80 = v14;
        if (v14 >= *(a3 + 16))
        {
          goto LABEL_55;
        }

        if (v14[a3 + 32])
        {
          break;
        }

        sub_243A57034(v78, v77);
        sub_243A2251C(&v80, &qword_27ED99220, &qword_243AC6160);
        ++v14;
        v16 += 88;
        if (v12 == v11)
        {
          v14 = v87;
          goto LABEL_15;
        }
      }

      sub_243A57034(v78, v77);
      v14 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_243AA0300(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      v24 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v87 = (v23 + 1);
        v30 = sub_243AA0300((v22 > 1), v23 + 1, 1, v14);
        v24 = v87;
        v14 = v30;
      }

      *(v14 + 2) = v24;
      v25 = &v14[88 * v23];
      v26 = v82;
      *(v25 + 2) = v81;
      *(v25 + 3) = v26;
      v27 = v83;
      v28 = v84;
      v29 = v85;
      *(v25 + 14) = v86;
      *(v25 + 5) = v28;
      *(v25 + 6) = v29;
      *(v25 + 4) = v27;
      v15 = v71;
    }

    while (v12 != v11);
LABEL_15:
    v31 = *(v14 + 2);
    if (!v31)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v14 = MEMORY[0x277D84F90];
  v31 = *(MEMORY[0x277D84F90] + 16);
  if (v31)
  {
LABEL_16:
    v13 = *(v14 + 5);
    v16 = *(v14 + 6);

    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
  v16 = 0xE000000000000000;
LABEL_19:
  v11 = v76;
  v32 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v32 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v33 = v32 == 0;
  }

  else
  {
    v33 = 0;
  }

  v87 = v14;
  if (v33)
  {
    if (qword_27ED98910 != -1)
    {
LABEL_56:
      swift_once();
    }

    v34 = sub_243AC1468();
    __swift_project_value_buffer(v34, qword_27EDA14A8);

    v35 = sub_243AC1448();
    v36 = sub_243AC2B58();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = *(v87 + 2);

      _os_log_impl(&dword_243A1B000, v35, v36, "ToggleRecommendedBackupAction: We have %ld devices but were unable to get a name to use in the confirmation message template.", v37, 0xCu);
      v38 = v37;
      v14 = v87;
      MEMORY[0x245D47D20](v38, -1, -1);
    }

    else
    {
    }
  }

  v39 = *(v14 + 2);
  if (v39 == 2)
  {
    type metadata accessor for ToggleRecommendedBackupAction(0);
    sub_243AC1608();
    if (v11)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v42 = swift_allocObject();
    v76 = 0;
    v43 = v42;
    *(v42 + 16) = xmmword_243AC51B0;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = sub_243A570EC();
    *(v43 + 32) = v13;
    *(v43 + 40) = v16;
    sub_243AC2868();
  }

  else
  {
    v40 = v39 - 1;
    if (v39 == 1)
    {
      type metadata accessor for ToggleRecommendedBackupAction(0);
      sub_243AC1608();
      if (v11)
      {
        goto LABEL_37;
      }

      v76 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_243AC51B0;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_243A570EC();
      *(v41 + 32) = v13;
      *(v41 + 40) = v16;
      sub_243AC2868();
    }

    else
    {
      if (v39 < 3)
      {

        v68 = 0;
        v76 = 0xE000000000000000;
        LODWORD(v71) = 1;
        goto LABEL_43;
      }

      type metadata accessor for ToggleRecommendedBackupAction(0);
      v47 = sub_243AC1608();
      if (v11)
      {
        goto LABEL_37;
      }

      v71 = v47;
      v76 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_243AC5F30;
      *(v62 + 56) = MEMORY[0x277D837D0];
      v63 = sub_243A570EC();
      *(v62 + 32) = v13;
      *(v62 + 40) = v16;
      v64 = MEMORY[0x277D83C10];
      *(v62 + 96) = MEMORY[0x277D83B88];
      *(v62 + 104) = v64;
      *(v62 + 64) = v63;
      *(v62 + 72) = v40;
      sub_243AC2868();
    }
  }

  v44 = v76;
  v45 = sub_243AC1608();
  v11 = v44;
  if (v44)
  {
LABEL_37:
  }

  v68 = v45;
  v76 = v46;
  LODWORD(v71) = 0;
LABEL_43:
  v48 = v87;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v49 = sub_243AC1468();
  __swift_project_value_buffer(v49, qword_27EDA14A8);

  v50 = sub_243AC1448();
  v51 = sub_243AC2B58();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v11;
    v53 = swift_slowAlloc();
    *v53 = 134218240;
    v54 = *(v48 + 2);

    *(v53 + 4) = v54;

    *(v53 + 12) = 1024;
    *(v53 + 14) = v71;
    _os_log_impl(&dword_243A1B000, v50, v51, "ToggleRecommendedBackupAction: updating buttons for %ld devices selected. Delete button disabled: %{BOOL}d", v53, 0x12u);
    v55 = v53;
    v11 = v52;
    MEMORY[0x245D47D20](v55, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v56 = v72;
  v57 = type metadata accessor for ToggleRecommendedBackupAction(0);
  sub_243AC28B8();

  sub_243AC15D8();
  if (!v11)
  {
    v58 = v73;
    v59 = v74;
    v87 = *(v73 + 8);
    (v87)(v56, v74);
    v72 = *(v57 + 36);
    v60 = swift_allocObject();
    *(v60 + 16) = v71;
    v61 = v70;
    *v70 = v60;
    (*(v58 + 104))(v61, *MEMORY[0x277D23258], v59);
    sub_243AC15D8();
    (v87)(v61, v59);
    v65 = v69;
    sub_243AC28B8();

    sub_243AC15D8();
    return (v87)(v65, v59);
  }

  (*(v73 + 8))(v56, v74);
}

uint64_t sub_243A52500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a1;
  v5 = sub_243AC1528();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v46 = (&v43 - v12);
  v45 = sub_243A2E3E4(MEMORY[0x277D84F90]);
  v63 = 0;
  v13 = *(a2 + 16);
  v66 = v6;
  if (v13)
  {
    v44 = v11;
    v47 = v5;
    v14 = 0;
    v15 = (a2 + 32);
    do
    {
      v16 = v15[1];
      v52 = v15[2];
      v17 = v15[4];
      v18 = v15[2];
      v53 = v15[3];
      v54 = v17;
      v55 = *(v15 + 10);
      v56 = v14;
      v59 = v52;
      v19 = *v15;
      v60 = v53;
      v61 = v17;
      v57 = v19;
      v21 = *v15;
      v20 = v15[1];
      v51[0] = v19;
      v51[1] = v20;
      v62 = v55;
      v58 = v20;
      v65 = *(v15 + 10);
      v22 = v15[4];
      v64[3] = v53;
      v64[4] = v22;
      v64[1] = v16;
      v64[2] = v18;
      v64[0] = v21;
      sub_243A57034(v51, &v50);
      sub_243A536D4(v14, v64, a3, &v63);
      sub_243A2251C(&v56, &qword_27ED99220, &qword_243AC6160);
      v15 = (v15 + 88);
      ++v14;
    }

    while (v13 != v14);
    v23 = v63;
    v5 = v47;
    v6 = v66;
    v11 = v44;
  }

  else
  {
    v23 = 0;
  }

  v24 = swift_allocObject();
  v56 = v23;
  *(v24 + 16) = sub_243AC2EB8();
  *(v24 + 24) = v25;
  v26 = v46;
  *v46 = v24;
  v27 = *MEMORY[0x277D232A0];
  v47 = *(v6 + 104);
  v47(v26, v27, v5);
  (*(v6 + 32))(v11, v26, v5);
  v28 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v28;
  sub_243A8B694(v11, 0xD000000000000010, 0x8000000243ACBE00, isUniquelyReferenced_nonNull_native);
  v30 = v56;
  v31 = qword_27ED98910;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_243AC1468();
  __swift_project_value_buffer(v32, qword_27EDA14A8);

  v33 = sub_243AC1448();
  v34 = sub_243AC2B58();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v35 = 136315138;
    v36 = sub_243AC27E8();
    v38 = sub_243AB73D8(v36, v37, &v56);

    *(v35 + 4) = v38;

    _os_log_impl(&dword_243A1B000, v33, v34, "ToggleRecommendedBackupAction, setting disappear user info %s", v35, 0xCu);
    v39 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v6 = v66;
    MEMORY[0x245D47D20](v39, -1, -1);
    MEMORY[0x245D47D20](v35, -1, -1);
  }

  else
  {
  }

  type metadata accessor for ToggleRecommendedBackupAction(0);
  v40 = swift_allocObject();
  *(v40 + 16) = v30;
  v41 = v48;
  *v48 = v40;
  v47(v41, *MEMORY[0x277D23270], v5);
  sub_243AC15D8();
  return (*(v6 + 8))(v41, v5);
}

void sub_243A529C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AC1528();
  v5 = *(v4 - 8);
  v140 = v4;
  v141 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v138 = &v123[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v137 = &v123[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v135 = &v123[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v136 = &v123[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v123[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v123[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v144 = &v123[-v20];
  MEMORY[0x28223BE20](v19);
  v22 = &v123[-v21];
  v23 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v24 = *(v23 + 20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v26 = v22;
  sub_243AC14D8();
  v147 = 0;
  v134 = v24;
  v129 = v23;
  v130 = v25;
  v27 = a1;
  v131 = a2;
  v28 = v141;
  v30 = v141 + 16;
  v29 = *(v141 + 16);
  v31 = v144;
  v32 = v26;
  v33 = v26;
  v34 = v140;
  v29(v144, v33, v140);
  v132 = *(v28 + 88);
  v133 = v28 + 88;
  v35 = v132(v31, v34);
  v38 = *(v28 + 8);
  v36 = v28 + 8;
  v37 = v38;
  if (v35 != *MEMORY[0x277D23278])
  {
    v37(v31, v34);
    type metadata accessor for DecodableStateError(0);
    sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
    v147 = swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v29(v58, v32, v34);
    *&v58[v59] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
    swift_willThrow();
    v37(v32, v34);
    goto LABEL_30;
  }

  v124 = v35;
  v145 = v29;
  v146 = v30;
  v142 = v37;
  v37(v32, v34);
  v39 = v141;
  v126 = *(v141 + 96);
  v127 = v141 + 96;
  v126(v31, v34);
  v40 = *(*v31 + 16);

  v41 = *(v40 + 2);
  v42 = v36;
  v128 = v27;
  if (v41)
  {
    v43 = *(v39 + 80);
    v144 = v40;
    v44 = &v40[(v43 + 32) & ~v43];
    v45 = *(v39 + 72);
    v46 = MEMORY[0x277D84F90];
    v47 = v142;
    do
    {
      v145(v18, v44, v34);
      v48 = v147;
      sub_243A5548C(v18, v160);
      v147 = v48;
      if (v48)
      {

        v47(v18, v34);
        v147 = 0;
      }

      else
      {
        v47(v18, v34);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = v46;
        }

        else
        {
          v49 = sub_243AA0300(0, *(v46 + 2) + 1, 1, v46);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = sub_243AA0300((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        v46 = v49;
        v52 = &v49[88 * v51];
        v53 = v160[1];
        *(v52 + 2) = v160[0];
        *(v52 + 3) = v53;
        v54 = v160[2];
        v55 = v160[3];
        v56 = v160[4];
        *(v52 + 14) = v161;
        *(v52 + 5) = v55;
        *(v52 + 6) = v56;
        *(v52 + 4) = v54;
        v47 = v142;
      }

      v44 += v45;
      --v41;
    }

    while (v41);

    v60 = v46;
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
    v47 = v142;
  }

  v61 = v139;
  v62 = *(v60 + 2);
  v144 = v60;
  if (!v62)
  {
LABEL_26:
    sub_243A574CC();
    sub_243AC29E8();

    v81 = v61;
    v82 = v147;
    sub_243AC15D8();
    v147 = v82;
    v83 = v136;
    if (v82)
    {
      v47(v81, v34);
    }

    else
    {
      v47(v81, v34);
      v84 = v147;
      sub_243AC14D8();
      v147 = v84;
      if (!v84)
      {
        v95 = v135;
        v97 = v145;
        v96 = v146;
        v145(v135, v83, v34);
        v98 = v132(v95, v34);
        if (v98 != v124)
        {

          v47(v95, v34);
          type metadata accessor for DecodableStateError(0);
          sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
          v147 = swift_allocError();
          v116 = v115;
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0);
          v118 = v97;
          v119 = *(v117 + 48);
          v118(v116, v83, v34);
          *(v116 + v119) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D18, &unk_243AC4ED0);
          swift_willThrow();
          v47(v83, v34);
LABEL_30:
          if (qword_27ED98910 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }

        v47(v83, v34);
        v126(v95, v34);
        v99 = *(*v95 + 16);

        v139 = v99;
        v100 = *(v99 + 16);
        if (v100)
        {
          v101 = &v139[(*(v141 + 80) + 32) & ~*(v141 + 80)];
          v141 = *(v141 + 72);
          LODWORD(v140) = *MEMORY[0x277D23258];
          v102 = MEMORY[0x277D84F90];
          do
          {
            v143 = v102;
            v108 = v137;
            v97(v137, v101, v34);
            v109 = v138;
            v97(v138, v108, v34);
            v110 = v132(v109, v34);
            if (v110 == v140)
            {
              v142(v108, v34);
              v126(v109, v34);
              v111 = *(*v109 + 16);

              v102 = v143;
              v112 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = sub_243AA020C(0, *(v102 + 2) + 1, 1, v102);
              }

              v114 = *(v102 + 2);
              v113 = *(v102 + 3);
              if (v114 >= v113 >> 1)
              {
                v102 = sub_243AA020C((v113 > 1), v114 + 1, 1, v102);
              }

              *(v102 + 2) = v114 + 1;
              v102[v114 + 32] = v111;
              v96 = v112;
            }

            else
            {
              v103 = v97;
              v142(v109, v34);
              type metadata accessor for DecodableStateError(0);
              sub_243A56A9C(&qword_27ED98D50, type metadata accessor for DecodableStateError, &unk_243AC6B78);
              v104 = swift_allocError();
              v106 = v105;
              v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
              v103(v106, v108, v34);
              *(v106 + v107) = MEMORY[0x277D839B0];
              swift_willThrow();
              v142(v108, v34);
              v96 = v146;

              v147 = 0;
              v102 = v143;
            }

            v101 += v141;
            --v100;
            v97 = v145;
          }

          while (v100);
        }

        else
        {

          v102 = MEMORY[0x277D84F90];
        }

        v120 = v131;
        v121 = v144;
        v122 = v147;
        sub_243A51BC4(v131, v144, v102);
        v147 = v122;
        if (!v122)
        {
          sub_243A52500(v120, v121, v102);
          v147 = 0;
LABEL_52:

          return;
        }
      }
    }

    goto LABEL_30;
  }

  v125 = v42;
  v159 = MEMORY[0x277D84F90];

  sub_243A64FB4(0, v62, 0);
  v63 = v144;
  v64 = *(v144 + 2);
  if (!v64)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v65 = 0;
  v66 = v159;
  v143 = (v62 - 1);
  v67 = 32;
  while (v65 < *(v63 + 2))
  {
    v68 = *&v63[v67 + 16];
    v157[0] = *&v63[v67];
    v157[1] = v68;
    v69 = *&v63[v67 + 32];
    v70 = *&v63[v67 + 48];
    v71 = *&v63[v67 + 64];
    *&v158[32] = *&v63[v67 + 80];
    *v158 = v70;
    *&v158[16] = v71;
    v157[2] = v69;
    v72 = *&v63[v67];
    v73 = *&v63[v67 + 16];
    v156 = *&v63[v67 + 32];
    v155 = v73;
    v154 = v72;
    v149 = *&v158[1];
    v150[0] = *&v158[17];
    *(v150 + 15) = *&v158[32];
    v151 = v72;
    v152 = v73;
    v153 = v156;
    sub_243A57034(v157, &v148);
    v159 = v66;
    v75 = *(v66 + 16);
    v74 = *(v66 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_243A64FB4((v74 > 1), v75 + 1, 1);
      v66 = v159;
    }

    *(v66 + 16) = v75 + 1;
    v76 = v66 + 88 * v75;
    v78 = v152;
    v77 = v153;
    *(v76 + 32) = v151;
    *(v76 + 48) = v78;
    *(v76 + 64) = v77;
    *(v76 + 80) = v64 != 1;
    v79 = v149;
    v80 = v150[0];
    *(v76 + 112) = *(v150 + 15);
    *(v76 + 97) = v80;
    *(v76 + 81) = v79;
    if (v143 == v65)
    {

      v61 = v139;
      v34 = v140;
      v47 = v142;
      goto LABEL_26;
    }

    v67 += 88;
    ++v65;
    --v64;
    v63 = v144;
    if (!v64)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_31:
  v85 = sub_243AC1468();
  __swift_project_value_buffer(v85, qword_27EDA14A8);
  v86 = v147;
  v87 = v147;
  v88 = sub_243AC1448();
  v89 = sub_243AC2B58();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138412290;
    v92 = v147;
    v93 = v147;
    v94 = _swift_stdlib_bridgeErrorToNSError();
    *(v90 + 4) = v94;
    *v91 = v94;
    _os_log_impl(&dword_243A1B000, v88, v89, "ToggleRecommendedBackupAction: Error while updating store on appear, %@", v90, 0xCu);
    sub_243A2251C(v91, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v91, -1, -1);
    MEMORY[0x245D47D20](v90, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_243A536D4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (*(a3 + result + 32) != 1)
  {
    return result;
  }

  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = HIBYTE(v5) & 0xF;
  v7 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_74:
    v29 = 0;
    goto LABEL_69;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v35[0] = v4;
    v35[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    if (v4 == 43)
    {
      if (v6)
      {
        v10 = v6 - 1;
        if (v6 != 1)
        {
          v4 = 0;
          v20 = v35 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              break;
            }

            v4 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_81:
      __break(1u);
      return result;
    }

    if (v4 != 45)
    {
      if (v6)
      {
        v4 = 0;
        v25 = v35;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v4;
          if ((v4 * 10) >> 64 != (10 * v4) >> 63)
          {
            break;
          }

          v4 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v6)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_64;
    }

    if (v6)
    {
      v10 = v6 - 1;
      if (v6 != 1)
      {
        v4 = 0;
        v14 = v35 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v4;
          if ((v4 * 10) >> 64 != (10 * v4) >> 63)
          {
            break;
          }

          v4 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v33 = a4;
    result = sub_243AC2D48();
    a4 = v33;
  }

  v9 = *result;
  if (v9 == 43)
  {
    if (v7 >= 1)
    {
      v10 = v7 - 1;
      if (v7 != 1)
      {
        v4 = 0;
        if (result)
        {
          v17 = (result + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_64;
            }

            v19 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              goto LABEL_64;
            }

            v4 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              goto LABEL_64;
            }

            ++v17;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_64;
    }

    goto LABEL_80;
  }

  if (v9 == 45)
  {
    if (v7 >= 1)
    {
      v10 = v7 - 1;
      if (v7 != 1)
      {
        v4 = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_64;
            }

            v13 = 10 * v4;
            if ((v4 * 10) >> 64 != (10 * v4) >> 63)
            {
              goto LABEL_64;
            }

            v4 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_64;
            }

            ++v11;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_63:
        LOBYTE(v10) = 0;
        goto LABEL_65;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v7)
  {
    v4 = 0;
    if (result)
    {
      while (1)
      {
        v23 = *result - 48;
        if (v23 > 9)
        {
          goto LABEL_64;
        }

        v24 = 10 * v4;
        if ((v4 * 10) >> 64 != (10 * v4) >> 63)
        {
          goto LABEL_64;
        }

        v4 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          goto LABEL_64;
        }

        ++result;
        if (!--v7)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_64:
  v4 = 0;
  LOBYTE(v10) = 1;
LABEL_65:
  v36 = v10;
  v28 = v10;
  while (1)
  {
    v29 = (v28 & 1) != 0 ? 0 : v4;
LABEL_69:
    v30 = __OFADD__(*a4, v29);
    v31 = *a4 + v29;
    if (!v30)
    {
      break;
    }

    __break(1u);
LABEL_76:
    v34 = a4;

    v4 = sub_243AB9A28(v4, v5, 10);
    v28 = v32;

    a4 = v34;
  }

  *a4 = v31;
  return result;
}

uint64_t sub_243A53A18(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000010;
      }

      if (a1 == 9)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000027;
      if (a1 != 7)
      {
        v6 = 0xD000000000000028;
      }

      if (a1 == 6)
      {
        return 0xD000000000000029;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x656369766564;
    v2 = 0xD00000000000001DLL;
    v3 = 0xD000000000000024;
    if (a1 == 4)
    {
      v3 = 0xD000000000000027;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000022;
    if (a1 == 1)
    {
      v4 = 0x73656369766564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_243A53BAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_243A53A18(*a1);
  v5 = v4;
  if (v3 == sub_243A53A18(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243AC2EE8();
  }

  return v8 & 1;
}

uint64_t sub_243A53C34()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243A53A18(v1);
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A53C98(uint64_t a1)
{
  sub_243A53A18(*v1);
  sub_243AC28A8();
}

uint64_t sub_243A53CEC(uint64_t a1)
{
  v2 = *v1;
  sub_243AC2FB8();
  sub_243A53A18(v2);
  sub_243AC28A8();

  return sub_243AC2FD8();
}

unint64_t sub_243A53D4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_243A57828(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_243A53D7C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_243A53A18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_243A53DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_243A57828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_243A53DF8(uint64_t a1)
{
  v2 = sub_243A57520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A53E34(uint64_t a1)
{
  v2 = sub_243A57520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243A53E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_243AC1618();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v70 = v59 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v71 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = v59 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v75 = *(v79 - 8);
  v13 = MEMORY[0x28223BE20](v79);
  v64 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = v59 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = v59 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v69 = v59 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v59 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v59 - v25;
  MEMORY[0x28223BE20](v24);
  v76 = v59 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99248, &qword_243AC6170);
  v77 = *(v28 - 8);
  v78 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = v59 - v29;
  v31 = type metadata accessor for ToggleRecommendedBackupAction(0);
  MEMORY[0x28223BE20](v31);
  v33 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A57520();
  v80 = v30;
  v34 = v81;
  sub_243AC2FE8();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v26;
  v60 = v23;
  v61 = a1;
  v62 = v31;
  v81 = v33;
  v93 = 0;
  v36 = sub_243A491E8(&qword_27ED99028, &qword_27ED99010, &qword_243AC59B0, MEMORY[0x277D23238]);
  v37 = v76;
  v38 = v79;
  sub_243AC2E88();
  v39 = (v75 + 32);
  v40 = *(v75 + 32);
  v40(v81, v37, v38);
  v92 = 1;
  sub_243AC2E88();
  v41 = v40;
  v40(&v81[v62[5]], v35, v38);
  v91 = 2;
  v42 = v60;
  v59[1] = 0;
  sub_243AC2E88();
  v76 = v36;
  v43 = v81;
  v41(&v81[v62[8]], v42, v38);
  v90 = 4;
  sub_243A56A9C(&qword_27ED98AC8, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v44 = v72;
  v45 = v43;
  v46 = v74;
  sub_243AC2E88();
  v47 = v41;
  v60 = v39;
  v48 = *(v73 + 32);
  v48(&v45[v62[10]], v44, v46);
  v89 = 5;
  v49 = v71;
  sub_243AC2E88();
  v50 = v46;
  v48(&v45[v62[11]], v49, v46);
  v88 = 6;
  v51 = v70;
  sub_243AC2E88();
  v48(&v45[v62[12]], v51, v50);
  v87 = 7;
  v52 = v69;
  sub_243AC2E88();
  v72 = v48;
  v47(&v45[v62[7]], v52, v79);
  v86 = 8;
  v53 = v68;
  sub_243AC2E88();
  v54 = v53;
  v55 = v72;
  (v72)(&v81[v62[13]], v54, v50);
  v85[0] = 9;
  v56 = v67;
  sub_243AC2E88();
  v55(&v81[v62[14]], v56, v74);
  v84 = 3;
  sub_243AC2E88();
  v47(&v81[v62[9]], v66, v79);
  v83 = 10;
  sub_243AC2E88();
  v47(&v81[v62[6]], v65, v79);
  v82 = 11;
  sub_243AC2E88();
  (*(v77 + 8))(v80, v78);
  v57 = v81;
  v47(&v81[v62[15]], v64, v79);
  sub_243A56F08(v57, v63);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_243A57574(v57);
}

uint64_t sub_243A54CA0(uint64_t a1)
{
  sub_243A56B74(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_243A54D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_243A56F08(v5, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_243A56F70(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a4[3] = sub_243AC1878();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_243AC1F58();
}

uint64_t sub_243A54F6C@<X0>(uint64_t *a1@<X8>)
{
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C58, &qword_243AC4CC0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C60, &qword_243AC4CC8);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_243AC5F40;
  v5 = (v36 + v3);
  v6 = *(v2 + 48);
  *v5 = 7890025;
  *(v5 + 1) = 0xE300000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = *v1;
  *&v5[v6] = v7;
  v8 = *MEMORY[0x277D23248];
  v9 = sub_243AC1528();
  v10 = *(*(v9 - 8) + 104);
  v34 = v9;
  v10(&v5[v6], v8, v9);
  v33 = v2;
  v11 = &v5[v4];
  v12 = *(v2 + 48);
  v13 = v2;
  *v11 = 1701667182;
  *(v11 + 1) = 0xE400000000000000;
  v14 = swift_allocObject();
  v45 = *(v39 + 8);
  *(v14 + 16) = v45;
  *&v11[v12] = v14;
  v15 = *MEMORY[0x277D232A0];
  v35 = *MEMORY[0x277D232A0];
  v10(&v5[v4 + v12], v15, v9);
  v16 = &v5[2 * v4];
  v17 = *(v13 + 48);
  *v16 = 0x6E6F6974706163;
  *(v16 + 1) = 0xE700000000000000;
  v18 = swift_allocObject();
  v44 = *(v39 + 24);
  *(v18 + 16) = v44;
  *&v16[v17] = v18;
  v10(&v16[v17], v15, v9);
  v19 = &v5[3 * v4];
  v20 = *(v33 + 48);
  *v19 = 0x6567616D69;
  *(v19 + 1) = 0xE500000000000000;
  v21 = swift_allocObject();
  v43 = *(v39 + 40);
  *(v21 + 16) = v43;
  *&v19[v20] = v21;
  (v10)(&v19[v20]);
  v22 = &v5[4 * v4];
  v23 = *(v33 + 48);
  *v22 = 0x6469766944736168;
  *(v22 + 1) = 0xEA00000000007265;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v39 + 48);
  *&v22[v23] = v24;
  v10(&v22[v23], *MEMORY[0x277D23258], v9);
  v25 = &v5[5 * v4];
  v26 = *(v33 + 48);
  *v25 = 0x52556574656C6564;
  *(v25 + 1) = 0xE90000000000004CLL;
  v27 = swift_allocObject();
  v42 = *(v39 + 56);
  *(v27 + 16) = v42;
  *&v25[v26] = v27;
  v10(&v25[v26], v35, v9);
  v28 = &v5[6 * v4];
  v29 = *(v33 + 48);
  *v28 = 0xD000000000000010;
  *(v28 + 1) = 0x8000000243ACBE00;
  v30 = swift_allocObject();
  v41 = *(v39 + 72);
  *(v30 + 16) = v41;
  *&v28[v29] = v30;
  v10(&v28[v29], v35, v34);
  sub_243A47DA4(&v45, v40);
  sub_243A47DA4(&v44, v40);
  sub_243A57150(&v43, v40);
  sub_243A47DA4(&v42, v40);
  sub_243A47DA4(&v41, v40);
  v31 = sub_243A2E3E4(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v37 + 16) = v31;
  *a1 = v37;
  return (v10)();
}

double sub_243A55430@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_243A5548C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_243A5548C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v127 = a2;
  v3 = sub_243AC1528();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v128 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v129 = &v118 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v130 = &v118 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v131 = &v118 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v118 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v118 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v118 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v118 - v21);
  v134 = v4[2];
  v134(&v118 - v21, a1, v3);
  v133 = v4[11];
  v23 = v133(v22, v3);
  if (v23 == *MEMORY[0x277D23270])
  {
    v24 = v23;
    v125 = v4;
    v126 = v3;
    v25 = v4[12];
    v25(v22, v3);
    v26 = *v22;
    v27 = *(v26 + 16);
    if (*(v27 + 16))
    {

      v28 = sub_243A2DDC0(7890025, 0xE300000000000000);
      if (v29)
      {
        v123 = v25;
        v124 = v26;
        v30 = *(v27 + 56);
        v31 = v125;
        v32 = v126;
        v122 = v125[9];
        v134(v20, v30 + v122 * v28, v126);
        if (v133(v20, v32) == *MEMORY[0x277D23248])
        {
          v33 = v123;
          v123(v20, v32);
          v34 = *(*v20 + 16);

          if (*(v27 + 16) && (v35 = sub_243A2DDC0(1701667182, 0xE400000000000000), (v36 & 1) != 0))
          {
            v37 = v126;
            v134(v17, *(v27 + 56) + v35 * v122, v126);
            v38 = v133(v17, v37);
            if (v38 == *MEMORY[0x277D232A0])
            {
              v121 = v38;
              v33(v17, v37);
              v40 = *(*v17 + 16);
              v39 = *(*v17 + 24);

              if (*(v27 + 16) && (v41 = sub_243A2DDC0(0x6E6F6974706163, 0xE700000000000000), (v42 & 1) != 0))
              {
                v120 = v40;
                v43 = v132;
                v44 = v126;
                v134(v132, *(v27 + 56) + v41 * v122, v126);
                v45 = v133(v43, v44);
                if (v45 == v121)
                {
                  v123(v43, v44);
                  v46 = *(*v43 + 24);
                  v119 = *(*v43 + 16);

                  if (*(v27 + 16) && (v132 = v46, v47 = sub_243A2DDC0(0x6567616D69, 0xE500000000000000), (v48 & 1) != 0))
                  {
                    v118 = v39;
                    v49 = v131;
                    v50 = v126;
                    v134(v131, *(v27 + 56) + v47 * v122, v126);
                    if (v133(v49, v50) == v24)
                    {
                      v51 = v50;
                      v52 = v123;
                      v123(v49, v51);
                      v53 = *(*v49 + 16);

                      if (*(v27 + 16) && (v54 = sub_243A2DDC0(0x6469766944736168, 0xEA00000000007265), (v55 & 1) != 0))
                      {
                        v56 = v130;
                        v57 = v126;
                        v134(v130, *(v27 + 56) + v54 * v122, v126);
                        if (v133(v56, v57) == *MEMORY[0x277D23258])
                        {
                          v52(v56, v57);
                          v58 = *(*v56 + 16);

                          if (*(v27 + 16) && (v59 = sub_243A2DDC0(0x52556574656C6564, 0xE90000000000004CLL), (v60 & 1) != 0))
                          {
                            v61 = v129;
                            v62 = v126;
                            v134(v129, *(v27 + 56) + v59 * v122, v126);
                            v63 = v133(v61, v62);
                            if (v63 == v121)
                            {
                              v64 = v129;
                              v123(v129, v126);
                              v65 = *(*v64 + 24);
                              v130 = *(*v64 + 16);
                              v131 = v65;

                              if (*(v27 + 16) && (v66 = sub_243A2DDC0(0xD000000000000010, 0x8000000243ACBE00), (v67 & 1) != 0))
                              {
                                v68 = v128;
                                v69 = v126;
                                v134(v128, *(v27 + 56) + v66 * v122, v126);

                                v70 = v133(v68, v69);
                                if (v70 == v121)
                                {
                                  v71 = v128;
                                  v123(v128, v126);
                                  v72 = *v71;
                                  v73 = *(v72 + 16);
                                  v74 = *(v72 + 24);

                                  v76 = v127;
                                  v77 = v120;
                                  *v127 = v34;
                                  v76[1] = v77;
                                  v78 = v119;
                                  v76[2] = v118;
                                  v76[3] = v78;
                                  v76[4] = v132;
                                  v76[5] = v53;
                                  *(v76 + 48) = v58;
                                  *(v76 + 49) = *v135;
                                  *(v76 + 13) = *&v135[3];
                                  v79 = v131;
                                  v76[7] = v130;
                                  v76[8] = v79;
                                  v76[9] = v73;
                                  v76[10] = v74;
                                  return result;
                                }

                                (v125[1])(v128, v126);
                              }

                              else
                              {
                              }

                              if (qword_27ED98910 != -1)
                              {
                                swift_once();
                              }

                              v117 = sub_243AC1468();
                              __swift_project_value_buffer(v117, qword_27EDA14A8);
                              v112 = sub_243AC1448();
                              v113 = sub_243AC2B58();
                              if (!os_log_type_enabled(v112, v113))
                              {
                                goto LABEL_73;
                              }

                              v114 = swift_slowAlloc();
                              *v114 = 0;
                              v115 = "Recommended Backup: failed to parse key 'storageRecovered'";
                              goto LABEL_72;
                            }

                            (v125[1])(v129, v126);
                          }

                          else
                          {
                          }

                          if (qword_27ED98910 != -1)
                          {
                            swift_once();
                          }

                          v111 = sub_243AC1468();
                          __swift_project_value_buffer(v111, qword_27EDA14A8);
                          v112 = sub_243AC1448();
                          v113 = sub_243AC2B58();
                          if (!os_log_type_enabled(v112, v113))
                          {
                            goto LABEL_73;
                          }

                          v114 = swift_slowAlloc();
                          *v114 = 0;
                          v115 = "Recommended Backup: failed to parse key 'deleteURL'";
LABEL_72:
                          _os_log_impl(&dword_243A1B000, v112, v113, v115, v114, 2u);
                          MEMORY[0x245D47D20](v114, -1, -1);
LABEL_73:

                          type metadata accessor for RecommendedBackupError(0);
                          sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
                          swift_allocError();
                          *v116 = MEMORY[0x277D837D0];
                          swift_storeEnumTagMultiPayload();
                          swift_willThrow();
                        }

                        (v125[1])(v56, v57);
                      }

                      else
                      {
                      }

                      if (qword_27ED98910 != -1)
                      {
                        swift_once();
                      }

                      v107 = sub_243AC1468();
                      __swift_project_value_buffer(v107, qword_27EDA14A8);
                      v108 = sub_243AC1448();
                      v109 = sub_243AC2B58();
                      if (os_log_type_enabled(v108, v109))
                      {
                        v110 = swift_slowAlloc();
                        *v110 = 0;
                        _os_log_impl(&dword_243A1B000, v108, v109, "Recommended Backup: failed to parse key 'hasDivider'", v110, 2u);
                        MEMORY[0x245D47D20](v110, -1, -1);
                      }

                      type metadata accessor for RecommendedBackupError(0);
                      sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
                      swift_allocError();
                      v100 = MEMORY[0x277D839B0];
                      goto LABEL_44;
                    }

                    (v125[1])(v49, v50);
                  }

                  else
                  {
                  }

                  if (qword_27ED98910 != -1)
                  {
                    swift_once();
                  }

                  v102 = sub_243AC1468();
                  __swift_project_value_buffer(v102, qword_27EDA14A8);
                  v103 = sub_243AC1448();
                  v104 = sub_243AC2B58();
                  if (os_log_type_enabled(v103, v104))
                  {
                    v105 = swift_slowAlloc();
                    *v105 = 0;
                    _os_log_impl(&dword_243A1B000, v103, v104, "Recommended Backup: failed to parse key 'image'", v105, 2u);
                    MEMORY[0x245D47D20](v105, -1, -1);
                  }

                  type metadata accessor for RecommendedBackupError(0);
                  sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
                  swift_allocError();
                  *v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
                  goto LABEL_45;
                }

                (v125[1])(v43, v44);
              }

              else
              {
              }

              if (qword_27ED98910 != -1)
              {
                swift_once();
              }

              v101 = sub_243AC1468();
              __swift_project_value_buffer(v101, qword_27EDA14A8);
              v95 = sub_243AC1448();
              v96 = sub_243AC2B58();
              if (!os_log_type_enabled(v95, v96))
              {
LABEL_43:

                type metadata accessor for RecommendedBackupError(0);
                sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
                swift_allocError();
                v100 = MEMORY[0x277D837D0];
LABEL_44:
                *v99 = v100;
LABEL_45:
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
              }

              v97 = swift_slowAlloc();
              *v97 = 0;
              v98 = "Recommended Backup: failed to parse key 'caption'";
LABEL_42:
              _os_log_impl(&dword_243A1B000, v95, v96, v98, v97, 2u);
              MEMORY[0x245D47D20](v97, -1, -1);
              goto LABEL_43;
            }

            (v125[1])(v17, v37);
          }

          else
          {
          }

          if (qword_27ED98910 != -1)
          {
            swift_once();
          }

          v94 = sub_243AC1468();
          __swift_project_value_buffer(v94, qword_27EDA14A8);
          v95 = sub_243AC1448();
          v96 = sub_243AC2B58();
          if (!os_log_type_enabled(v95, v96))
          {
            goto LABEL_43;
          }

          v97 = swift_slowAlloc();
          *v97 = 0;
          v98 = "Recommended Backup: failed to parse key 'name'";
          goto LABEL_42;
        }

        (v31[1])(v20, v32);
      }

      else
      {
      }
    }

    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v89 = sub_243AC1468();
    __swift_project_value_buffer(v89, qword_27EDA14A8);
    v90 = sub_243AC1448();
    v91 = sub_243AC2B58();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_243A1B000, v90, v91, "Recommended Backup: failed to parse key 'idx'", v92, 2u);
      MEMORY[0x245D47D20](v92, -1, -1);
    }

    type metadata accessor for RecommendedBackupError(0);
    sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
    swift_allocError();
    *v93 = MEMORY[0x277D83B88];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v80 = v4;
  v81 = v3;
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v82 = sub_243AC1468();
  __swift_project_value_buffer(v82, qword_27EDA14A8);
  v83 = sub_243AC1448();
  v84 = sub_243AC2B58();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_243A1B000, v83, v84, "Recommended Backup: DecodabelStateType is not a dictionary", v85, 2u);
    MEMORY[0x245D47D20](v85, -1, -1);
  }

  type metadata accessor for RecommendedBackupError(0);
  sub_243A56A9C(&qword_27ED991E8, type metadata accessor for RecommendedBackupError, &unk_243AC60B0);
  swift_allocError();
  v87 = v86;
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
  v134(v87, a1, v81);
  *&v87[v88] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v80[1])(v22, v81);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_243A566CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A56714(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_243A5678C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_243AC1618();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 40);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_243A5689C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_243AC1618();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_243A569C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A569FC(uint64_t a1)
{
  sub_243A4C288(319);
  if (v1 <= 0x3F)
  {
    sub_243AC1618();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_243A56A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243A56B74(uint64_t a1)
{
  v2 = sub_243AC2178();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_243AC21A8();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_243A4C4D4();
  v11 = sub_243AC2BC8();
  sub_243A56F08(v16, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_243A56F70(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_243A56FD4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243A71700;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  sub_243AC2198();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_243A56A9C(&qword_27ED99860, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
  sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20, MEMORY[0x277D83970]);
  sub_243AC2C78();
  MEMORY[0x245D46FA0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_243A56F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A56F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243A5706C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243A570A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_243A570EC()
{
  result = qword_27ED99230;
  if (!qword_27ED99230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99230);
  }

  return result;
}

uint64_t sub_243A57150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A68, &unk_243ACA3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v6(v4 + v1[8], v5);
  v6(v4 + v1[9], v5);
  v6(v4 + v1[10], v5);
  v6(v4 + v1[11], v5);
  v7 = v1[12];
  v8 = sub_243AC1618();
  v9 = *(*(v8 - 8) + 8);
  v9(v4 + v7, v8);
  v9(v4 + v1[13], v8);
  v9(v4 + v1[14], v8);
  v9(v4 + v1[15], v8);
  v9(v4 + v1[16], v8);
  v6(v4 + v1[17], v5);

  return MEMORY[0x2821FE8E8](v11, v12 + 8, v2 | 7);
}

uint64_t sub_243A5742C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_243A574CC()
{
  result = qword_27ED99240;
  if (!qword_27ED99240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99240);
  }

  return result;
}

unint64_t sub_243A57520()
{
  result = qword_27ED99250;
  if (!qword_27ED99250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99250);
  }

  return result;
}

uint64_t sub_243A57574(uint64_t a1)
{
  v2 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A57724()
{
  result = qword_27ED99258;
  if (!qword_27ED99258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99258);
  }

  return result;
}

unint64_t sub_243A5777C()
{
  result = qword_27ED99260;
  if (!qword_27ED99260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99260);
  }

  return result;
}

unint64_t sub_243A577D4()
{
  result = qword_27ED99268;
  if (!qword_27ED99268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99268);
  }

  return result;
}

unint64_t sub_243A57828(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2E58();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_243A57878(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v5 = *result;
  if (v5 < 4)
  {
    swift_beginAccess();

    sub_243A585B0(&v6, a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_243A57988(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (*a3)
    {
      v7 = v3 + 14;
    }

    else
    {
      v7 = v3 + 15;
    }

    goto LABEL_10;
  }

  if (v6 == 2)
  {
    v7 = v3 + 16;
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    v7 = v3 + 17;
LABEL_10:
    swift_beginAccess();
    v9 = *v7;

    v8 = sub_243A57A40(a1, a2, v9);

    return v8 & 1;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_243A57A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_243AC2FB8();
  sub_243AC28A8();
  v6 = sub_243AC2FD8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_243AC2EE8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *RecommendationsDisplayTracker.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecommendationsDisplayTracker.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_243A57BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  result = sub_243AC2CD8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_243AC2858();
      sub_243AC2FB8();
      sub_243AC28A8();
      v18 = sub_243AC2FD8();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243A57E5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  result = sub_243AC2CD8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_243AC2FB8();
      sub_243AC28A8();
      result = sub_243AC2FD8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_243A580BC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_243AC26B8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  result = sub_243AC2CD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_243A59990(&qword_27ED99278, MEMORY[0x277D22328]);
      result = sub_243AC27F8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_243A58404(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_243AC2858();
  sub_243AC2FB8();
  sub_243AC28A8();
  v7 = sub_243AC2FD8();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_243AC2858();
      v13 = v12;
      if (v11 == sub_243AC2858() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_243AC2EE8();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_243A58A3C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_243A585B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_243AC2FB8();
  sub_243AC28A8();
  v8 = sub_243AC2FD8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_243AC2EE8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_243A58C24(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_243A58784(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_243AC26B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_243A59990(&qword_27ED99278, MEMORY[0x277D22328]);
  v33 = a2;
  v11 = sub_243AC27F8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_243A59990(&qword_27ED99280, MEMORY[0x277D22330]);
      v21 = sub_243AC2808();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_243A58DA4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_243A58A3C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_243A57BE0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_243A59020();
      goto LABEL_16;
    }

    sub_243A59504(v7 + 1);
  }

  v9 = *v3;
  sub_243AC2858();
  sub_243AC2FB8();
  sub_243AC28A8();
  v10 = sub_243AC2FD8();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Dataclass(0);
    do
    {
      v13 = sub_243AC2858();
      v15 = v14;
      if (v13 == sub_243AC2858() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_243AC2EE8();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

uint64_t sub_243A58C24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_243A57E5C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_243A59170();
      goto LABEL_16;
    }

    sub_243A59758(v8 + 1);
  }

  v10 = *v4;
  sub_243AC2FB8();
  sub_243AC28A8();
  result = sub_243AC2FD8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_243AC2EE8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

uint64_t sub_243A58DA4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_243AC26B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_243A580BC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_243A592CC();
      goto LABEL_12;
    }

    sub_243A599D4(v10 + 1);
  }

  v12 = *v3;
  sub_243A59990(&qword_27ED99278, MEMORY[0x277D22328]);
  v13 = sub_243AC27F8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_243A59990(&qword_27ED99280, MEMORY[0x277D22330]);
      v21 = sub_243AC2808();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_243AC2F28();
  __break(1u);
  return result;
}

id sub_243A59020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  v2 = *v0;
  v3 = sub_243AC2CC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_243A59170()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  v2 = *v0;
  v3 = sub_243AC2CC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_243A592CC()
{
  v1 = v0;
  v2 = sub_243AC26B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  v6 = *v0;
  v7 = sub_243AC2CC8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_243A59504(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C00, &qword_243AC4C50);
  result = sub_243AC2CD8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_243AC2858();
      sub_243AC2FB8();
      v18 = v17;
      sub_243AC28A8();
      v19 = sub_243AC2FD8();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_243A59758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99270, &qword_243AC6378);
  result = sub_243AC2CD8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_243AC2FB8();

      sub_243AC28A8();
      result = sub_243AC2FD8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_243A59990(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_243AC26B8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_243A599D4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_243AC26B8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99288, &unk_243AC6380);
  v7 = sub_243AC2CD8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_243A59990(&qword_27ED99278, MEMORY[0x277D22328]);
      result = sub_243AC27F8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_243A59CDC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v3 setDateStyle_];
  [v3 setTimeStyle_];
  v1[2] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setMaximumFractionDigits_];
  v1[3] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v5 setUnitStyle_];
  v1[4] = v5;
  v1[5] = a1;
  return v1;
}

uint64_t sub_243A59DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_243AC1238();
  v5 = [v3 stringFromDate_];

  sub_243AC2858();
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  return v7;
}

uint64_t sub_243A59E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED992A0, qword_243AC63F8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = objc_opt_self();
  v16 = [v15 bytes];
  sub_243A2CFF0(0, &qword_27ED992A8, 0x277CCAE18);
  sub_243AC1068();
  v17 = [v15 megabytes];
  sub_243AC1088();

  sub_243AC1078();
  if (v18 >= 0.0 && v18 < 1000.0)
  {
    v28 = *(v3 + 24);
    sub_243AC1078();
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v31 = [v28 stringFromNumber_];

    if (v31)
    {
      v32 = sub_243AC2858();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0xE000000000000000;
    }

    v43 = *(v4 + 32);
    v44 = [v15 megabytes];
    v45 = [v43 stringFromUnit_];

    v46 = sub_243AC2858();
    v48 = v47;

    v59 = v32;
    v60 = v34;
    MEMORY[0x245D46C90](32, 0xE100000000000000);
    MEMORY[0x245D46C90](v46, v48);

    v41 = v59;
    v42 = v60;
  }

  else
  {
    v20 = [v15 gigabytes];
    sub_243AC1088();

    v21 = *(v3 + 24);
    sub_243AC1078();
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v24 = [v21 stringFromNumber_];

    if (v24)
    {
      v25 = sub_243AC2858();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    v35 = *(v4 + 32);
    v36 = [v15 gigabytes];
    v37 = [v35 stringFromUnit_];

    v38 = sub_243AC2858();
    v40 = v39;

    v59 = v25;
    v60 = v27;
    MEMORY[0x245D46C90](32, 0xE100000000000000);
    MEMORY[0x245D46C90](v38, v40);

    v41 = v59;
    v42 = v60;
    (*(v6 + 8))(v9, v5);
  }

  v57 = v51;
  v58 = v52;
  v55 = 0xD000000000000014;
  v56 = 0x8000000243ACCDE0;
  v53 = v41;
  v54 = v42;
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  v49 = *(v6 + 8);
  v49(v12, v5);
  v49(v14, v5);
  return v59;
}

uint64_t RecommendationTemplate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243A5A420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_243AC2B98();
  if (v4 >> 62)
  {
    v5 = sub_243AC2DF8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = [a3 members];
  sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
  v7 = sub_243AC2998();

  if (v7 >> 62)
  {
    sub_243AC2DF8();
  }

  sub_243AC2EB8();
  sub_243A5A654();
  sub_243A5A6A8();
  sub_243AC2B18();

  sub_243AC2EB8();
  sub_243AC2B18();

  return v5;
}

unint64_t sub_243A5A654()
{
  result = qword_27ED99290;
  if (!qword_27ED99290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99290);
  }

  return result;
}

unint64_t sub_243A5A6A8()
{
  result = qword_27ED99298;
  if (!qword_27ED99298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99298);
  }

  return result;
}

uint64_t sub_243A5A6FC()
{
  sub_243A5A78C();
  sub_243AC1A38();
  return v1;
}

unint64_t sub_243A5A78C()
{
  result = qword_27ED992B0;
  if (!qword_27ED992B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED992B0);
  }

  return result;
}

uint64_t sub_243A5A7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_243A32C74();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

id sub_243A5A84C()
{
  v0 = [objc_allocWithZone(sub_243AC15A8()) init];
  type metadata accessor for FinishAction(0);
  sub_243A5AE68(&qword_27ED992B8, type metadata accessor for FinishAction, byte_243AC7C30);
  sub_243AC1588();
  type metadata accessor for CancelAction(0);
  sub_243A5AE68(&qword_27ED992C0, type metadata accessor for CancelAction, byte_243AC7960);
  sub_243AC1588();
  type metadata accessor for CERefreshCacheAction();
  sub_243A5AE68(&qword_27ED992C8, type metadata accessor for CERefreshCacheAction, protocol conformance descriptor for CERefreshCacheAction);
  sub_243AC1588();
  type metadata accessor for ToggleRecommendedBackupAction(0);
  sub_243A5AE68(&qword_27ED99238, type metadata accessor for ToggleRecommendedBackupAction, byte_243AC6108);
  sub_243AC1588();
  type metadata accessor for DeleteSelectedBackupsAction(0);
  sub_243A5AE68(&qword_27ED98D80, type metadata accessor for DeleteSelectedBackupsAction, byte_243AC4F80);
  sub_243AC1588();
  type metadata accessor for ScaledAsyncImageView(0);
  sub_243AC1578();
  type metadata accessor for ICQOnDisappearAction(0);
  sub_243A5AE68(&qword_27ED992D8, type metadata accessor for ICQOnDisappearAction, byte_243ACA338);
  sub_243AC1588();
  type metadata accessor for ContextualRecommendationView(0);
  sub_243A5AE68(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView, protocol conformance descriptor for ContextualRecommendationView);
  sub_243AC1578();
  type metadata accessor for EmailAddressInjector(0);
  sub_243A5AE68(&qword_27ED992E8, type metadata accessor for EmailAddressInjector, protocol conformance descriptor for EmailAddressInjector);
  sub_243AC1578();
  type metadata accessor for ToggleEmailAddressAction(0);
  sub_243A5AE68(&qword_27ED99070, type metadata accessor for ToggleEmailAddressAction, protocol conformance descriptor for ToggleEmailAddressAction);
  sub_243AC1588();
  type metadata accessor for EmailDownloadLink(0);
  sub_243A5AE68(&qword_27ED992F0, type metadata accessor for EmailDownloadLink, protocol conformance descriptor for EmailDownloadLink);
  sub_243AC1588();
  type metadata accessor for JetAction(0);
  sub_243A5AE68(&qword_27ED992F8, type metadata accessor for JetAction, byte_243AC8D80);
  sub_243AC1588();
  type metadata accessor for JetImpressionable(0);
  sub_243A5AE68(&qword_27ED99300, type metadata accessor for JetImpressionable, byte_243AC48D0);
  sub_243AC1598();
  type metadata accessor for PageMetricsModifier(0);
  sub_243A5AE68(&qword_27ED99308, type metadata accessor for PageMetricsModifier, "%xu>|t", v2);
  sub_243AC1598();
  type metadata accessor for IconWithTypeIdentifier(0);
  sub_243A5AE68(&qword_27ED99310, type metadata accessor for IconWithTypeIdentifier, protocol conformance descriptor for IconWithTypeIdentifier);
  sub_243AC1578();
  return v0;
}

uint64_t sub_243A5AE68(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
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

unint64_t sub_243A5AEC0(char a1)
{
  result = 0xD000000000000023;
  switch(a1)
  {
    case 1:
    case 15:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      result = 0xD00000000000002DLL;
      break;
    case 5:
    case 17:
    case 20:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000002FLL;
      break;
    case 7:
    case 16:
      result = 0xD000000000000025;
      break;
    case 8:
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000031;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD00000000000002BLL;
      break;
    case 18:
      result = 0xD00000000000001DLL;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_243A5B0F0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_243A5AEC0(*a1);
  v5 = v4;
  if (v3 == sub_243A5AEC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_243AC2EE8();
  }

  return v8 & 1;
}

unint64_t sub_243A5B178@<X0>(unint64_t *a1@<X8>)
{
  result = sub_243A5AEC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_243A5B1A4(char a1)
{
  if (a1 != 1)
  {
    type metadata accessor for RecommendationsController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_243AC1188();

    return v6;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6)
  {
    v3 = 0x4E4F49534956;
LABEL_9:
    v8 = 0xE600000000000000;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      v3 = 0x544C5541464544;
      v8 = 0xE700000000000000;
      goto LABEL_11;
    }

    v3 = 0x454E4F485049;
    goto LABEL_9;
  }

  v3 = 1145131081;
  v8 = 0xE400000000000000;
LABEL_11:
  MEMORY[0x245D46C90](v3, v8);
  type metadata accessor for RecommendationsController(0);
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_243AC1188();

  return v11;
}

uint64_t sub_243A5B438(char a1)
{
  type metadata accessor for RecommendationsController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_243AC1188();

  return v3;
}

unint64_t sub_243A5B590()
{
  result = qword_27ED99318;
  if (!qword_27ED99318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99318);
  }

  return result;
}

unint64_t sub_243A5B5E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_243AC2EF8();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

char *sub_243A5B638(os_unfair_lock_s *a1)
{
  v3 = [v1 recommendationRules];
  sub_243A2CFF0(0, &qword_27ED98C40, 0x277CFB1D0);
  v4 = sub_243AC2998();

  if (v4 >> 62)
  {
LABEL_19:
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_243AC2DF8();
  }

  else
  {
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (2)
  {
    v17 = v6;
    if (v5 != v19)
    {
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x245D470F0](v5, v4);
        }

        else
        {
          if (v5 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v10 = [v7 recommendationID];
        sub_243AC2858();

        MEMORY[0x28223BE20](v11);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);

        os_unfair_lock_lock(a1 + 6);
        sub_243A5CA7C(&a1[4]._os_unfair_lock_opaque, &v20);
        os_unfair_lock_unlock(a1 + 6);

        v13 = v20;
        if (v20)
        {
          break;
        }

        ++v5;
        if (v9 == v19)
        {
          goto LABEL_16;
        }
      }

      v14 = [v8 rankingHint];
      v15 = [v14 integerValue];

      ++v5;
      v6 = &v15[v17];
      if (!__OFADD__(v17, v15))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_16:

  return v17;
}

uint64_t sub_243A5B8B0(void *a1, void *a2)
{
  v3 = [a1 rankingHint];
  v4 = [v3 integerValue];

  v5 = [a2 rankingHint];
  v6 = [v5 integerValue];

  if (v6 < v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_243A5B940(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v8 = v5(v6, v7);

  return v8;
}

uint64_t sub_243A5B9BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_243A5BA18(void **__src, void **a2, id *a3, void **a4, os_unfair_lock_s *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v42 = &v15[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v40 = v15;
LABEL_27:
      v39 = v24;
      v26 = v24 - 1;
      v27 = v5 - 1;
      v28 = v42;
      do
      {
        v29 = v27;
        v30 = v27 + 1;
        v31 = *--v28;
        v32 = v26;
        v33 = *v26;
        v34 = v31;
        v35 = v33;
        v36 = sub_243A5B638(a5);
        v37 = sub_243A5B638(a5);

        if (v37 < v36)
        {
          v5 = v29;
          if (v30 != v39)
          {
            *v29 = *v32;
          }

          v15 = v40;
          if (v42 <= v40 || (v24 = v32, v32 <= v6))
          {
            v24 = v32;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v30 != v42)
        {
          *v29 = *v28;
        }

        v27 = v29 - 1;
        v42 = v28;
        v15 = v40;
        v26 = v32;
      }

      while (v28 > v40);
      v42 = v28;
      v24 = v39;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v14;
    }

    v42 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v16 = v5;
        v17 = *v15;
        v18 = *v13;
        v19 = v17;
        v20 = sub_243A5B638(a5);
        v21 = sub_243A5B638(a5);

        if (v21 >= v20)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v15 < v42)
        {
          v5 = v16;
          if (v13 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v22 = v15;
      v23 = v6 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_38:
  if (v24 != v15 || v24 >= (v15 + ((v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v15, 8 * (v42 - v15));
  }

  return 1;
}

uint64_t sub_243A5BD0C(uint64_t *a1, void **a2, uint64_t *a3, os_unfair_lock_s *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_243A45C54(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 8 * *v12);
      v15 = (v10 + 8 * *v13);
      v16 = (v10 + 8 * v14);

      sub_243A5BA18(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_243A5BEB4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, os_unfair_lock_s *a5)
{
  v6 = v5;
  v9 = a3[1];
  v121 = MEMORY[0x277D84F90];
  swift_retain_n();
  if (v9 >= 1)
  {
    v103 = a4;
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v120 = a5;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v113 = v11;
        v104 = v6;
        v107 = 8 * v10;
        v14 = (*a3 + 8 * v10);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = *(*a3 + 8 * v13);
        v18 = v16;
        v116 = sub_243A5B638(a5);
        v110 = sub_243A5B638(a5);

        v19 = v12 + 2;
        while (v9 != v19)
        {
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_243A5B638(v120);
          v24 = sub_243A5B638(v120);

          ++v19;
          ++v15;
          if (v110 < v116 == v24 >= v23)
          {
            v9 = v19 - 1;
            break;
          }
        }

        v11 = v113;
        v25 = v107;
        v6 = v104;
        a5 = v120;
        if (v110 >= v116)
        {
LABEL_18:
          v13 = v9;
        }

        else
        {
          v26 = v12;
          if (v9 < v12)
          {
            goto LABEL_117;
          }

          if (v12 < v9)
          {
            v27 = 8 * v9 - 8;
            v28 = v9;
            while (1)
            {
              if (v26 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v29 = *(v30 + v25);
                *(v30 + v25) = *(v30 + v27);
                *(v30 + v27) = v29;
              }

              ++v26;
              v27 -= 8;
              v25 += 8;
              if (v26 >= v28)
              {
                goto LABEL_18;
              }
            }
          }

          v13 = v9;
        }
      }

      v31 = a3[1];
      if (v13 < v31)
      {
        v32 = v13;
        v51 = __OFSUB__(v13, v12);
        v33 = v13 - v12;
        if (v51)
        {
          goto LABEL_116;
        }

        if (v33 < v103)
        {
          if (__OFADD__(v12, v103))
          {
            goto LABEL_118;
          }

          if (v12 + v103 >= v31)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v12 + v103;
          }

          if (v34 < v12)
          {
LABEL_119:
            __break(1u);
LABEL_120:

            __break(1u);
LABEL_121:

            __break(1u);
LABEL_122:

            __break(1u);
LABEL_123:

            __break(1u);
LABEL_124:

            __break(1u);
            return result;
          }

          if (v32 != v34)
          {
            v115 = v11;
            v105 = v6;
            v89 = *a3;
            v90 = *a3 + 8 * v32 - 8;
            v91 = v12 - v32;
            v109 = v34;
            do
            {
              v118 = v32;
              v92 = *(v89 + 8 * v32);
              v93 = v91;
              v112 = v90;
              do
              {
                v94 = *v90;
                v95 = v92;
                v96 = v94;
                v97 = sub_243A5B638(v120);
                v98 = sub_243A5B638(v120);

                if (v98 >= v97)
                {
                  break;
                }

                if (!v89)
                {
                  goto LABEL_120;
                }

                v99 = *v90;
                v92 = *(v90 + 8);
                *v90 = v92;
                *(v90 + 8) = v99;
                v90 -= 8;
              }

              while (!__CFADD__(v93++, 1));
              v32 = v118 + 1;
              v90 = v112 + 8;
              --v91;
            }

            while (v118 + 1 != v109);
            v13 = v109;
            v6 = v105;
            a5 = v120;
            v11 = v115;
            if (v109 < v12)
            {
              goto LABEL_115;
            }

            goto LABEL_31;
          }
        }

        v13 = v32;
      }

      if (v13 < v12)
      {
        goto LABEL_115;
      }

LABEL_31:
      v117 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_243A45C68(0, *(v11 + 2) + 1, 1, v11);
      }

      v36 = *(v11 + 2);
      v35 = *(v11 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v11 = sub_243A45C68((v35 > 1), v36 + 1, 1, v11);
      }

      *(v11 + 2) = v37;
      v38 = v11 + 32;
      v39 = &v11[16 * v36 + 32];
      *v39 = v12;
      *(v39 + 1) = v117;
      v111 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v36)
      {
        v108 = v11 + 32;
        v114 = v11;
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v11 + 4);
            v42 = *(v11 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_51:
            if (v44)
            {
              goto LABEL_105;
            }

            v57 = &v11[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_107;
            }

            v63 = &v38[16 * v40];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_112;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v37 < 2)
          {
            goto LABEL_113;
          }

          v67 = &v11[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_66:
          if (v62)
          {
            goto LABEL_109;
          }

          v70 = &v38[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_111;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v78 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v79 = v6;
          v80 = &v38[16 * v40 - 16];
          v81 = *v80;
          v82 = v40;
          v83 = &v38[16 * v40];
          v84 = *(v83 + 1);
          v85 = (v78 + 8 * *v80);
          v86 = (v78 + 8 * *v83);
          v87 = (v78 + 8 * v84);
          a5 = v120;

          sub_243A5BA18(v85, v86, v87, v111, v120);
          v6 = v79;
          if (v79)
          {

            goto LABEL_96;
          }

          v11 = v114;
          if (v84 < v81)
          {
            goto LABEL_100;
          }

          v88 = *(v114 + 2);
          if (v82 > v88)
          {
            goto LABEL_101;
          }

          *v80 = v81;
          *(v80 + 1) = v84;
          if (v82 >= v88)
          {
            goto LABEL_102;
          }

          v37 = v88 - 1;
          memmove(v83, v83 + 16, 16 * (v88 - 1 - v82));
          *(v114 + 2) = v88 - 1;
          v38 = v108;
          if (v88 <= 2)
          {
            goto LABEL_3;
          }
        }

        v45 = &v38[16 * v37];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_103;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_104;
        }

        v52 = &v11[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_106;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_108;
        }

        if (v56 >= v48)
        {
          v74 = &v38[16 * v40];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_114;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_3:
      v10 = v117;
      v9 = a3[1];
      if (v117 >= v9)
      {
        v121 = v11;
        break;
      }
    }
  }

  v101 = *a1;
  if (!*a1)
  {
    goto LABEL_124;
  }

  sub_243A5BD0C(&v121, v101, a3, a5);
  if (v6)
  {

LABEL_96:
  }

  else
  {
  }
}

void sub_243A5C56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, os_unfair_lock_s *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v19 = v9;
    v20 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = sub_243A5B638(a5);
      v15 = sub_243A5B638(a5);

      if (v15 >= v14)
      {
LABEL_4:
        ++v6;
        v8 = v20 + 8;
        v9 = v19 - 1;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v16 = *v8;
      v10 = *(v8 + 8);
      *v8 = v10;
      *(v8 + 8) = v16;
      v8 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_243A5C664(uint64_t *a1, os_unfair_lock_s *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_243AC2EA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_243A2CFF0(0, &qword_27ED98FC0, 0x277CFB1E8);
        v8 = sub_243AC29C8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_243A5BEB4(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_243A5C56C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_243A5C7D0(uint64_t *a1, os_unfair_lock_s *a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_243A4997C(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_243A5C664(v8, a2);

  sub_243AC2D78();
}

uint64_t sub_243A5C87C(uint64_t a1, os_unfair_lock_s *a2)
{
  v12 = MEMORY[0x277D84F90];

  v11[0] = sub_243AA7C78(v3);
  sub_243A5C7D0(v11, a2);

  v4 = v11[0];
  if ((v11[0] & 0x8000000000000000) == 0 && (v11[0] & 0x4000000000000000) == 0)
  {
    v5 = *(v11[0] + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_243AA34B8(v4);
    return v12;
  }

  v5 = sub_243AC2DF8();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D470F0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v11[4] = sub_243A5B8B0;
      v11[5] = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 1107296256;
      v11[2] = sub_243A5B940;
      v11[3] = &block_descriptor_3;
      v9 = _Block_copy(v11);
      [v8 sortRecommendationRulesUsingComparator_];
      _Block_release(v9);
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_243A5CA70(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
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

uint64_t sub_243A5CAAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A5CAF4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_243A5CB70@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99320, &qword_243AC6718);
  MEMORY[0x28223BE20](v61);
  v56 = &v56 - v2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99328, &qword_243AC6720);
  MEMORY[0x28223BE20](v59);
  v60 = &v56 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99330, &qword_243AC6728);
  MEMORY[0x28223BE20](v73);
  v62 = &v56 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99338, &qword_243AC6730);
  MEMORY[0x28223BE20](v67);
  v63 = &v56 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99340, &qword_243AC6738);
  MEMORY[0x28223BE20](v70);
  v72 = &v56 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99348, &qword_243AC6740);
  MEMORY[0x28223BE20](v66);
  v8 = &v56 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99350, &qword_243AC6748);
  MEMORY[0x28223BE20](v71);
  v10 = &v56 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v64 = *(v68 - 8);
  v11 = MEMORY[0x28223BE20](v68);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99360, &qword_243AC6758);
  v65 = *(v69 - 8);
  v15 = MEMORY[0x28223BE20](v69);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  v76 = *(v1 + 48);
  v77 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99368, &qword_243AC6760);
  sub_243AC2068();
  v19 = v75;
  v20 = [v75 bundleID];

  v21 = sub_243AC2858();
  v23 = v22;

  LOBYTE(v21) = sub_243A70360(v21, v23);

  if (v21)
  {
    v76 = v77;
    sub_243AC2068();
    v24 = v75;
    v25 = [v75 bundleID];

    if (!v25)
    {
      sub_243AC2858();
      v25 = sub_243AC2818();
    }

    [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

    sub_243AC1428();
    v26 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
    v27 = v68;
    sub_243AC1E08();
    (*(v64 + 8))(v14, v27);
    v28 = v65;
    v29 = v69;
    (*(v65 + 16))(v8, v18, v69);
    swift_storeEnumTagMultiPayload();
    *&v76 = v27;
    *(&v76 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    sub_243A5EEE0();
    sub_243AC1AE8();
    sub_243A224B4(v10, v72, &qword_27ED99350, &qword_243AC6748);
    swift_storeEnumTagMultiPayload();
    sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
    sub_243A5F1D4();
    v30 = v74;
    sub_243AC1AE8();
    sub_243A2251C(v10, &qword_27ED99350, &qword_243AC6748);
    (*(v28 + 8))(v18, v29);
    goto LABEL_18;
  }

  v76 = v77;
  sub_243AC2068();
  v31 = v75;
  v32 = [v75 icon];

  if (v32)
  {
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v63;
      sub_243A5D91C(v33, v63);
      sub_243A224B4(v34, v8, &qword_27ED99338, &qword_243AC6730);
      swift_storeEnumTagMultiPayload();
      v35 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
      *&v76 = v68;
      *(&v76 + 1) = v35;
      swift_getOpaqueTypeConformance2();
      sub_243A5EEE0();
      sub_243AC1AE8();
      sub_243A224B4(v10, v72, &qword_27ED99350, &qword_243AC6748);
      swift_storeEnumTagMultiPayload();
      sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
      sub_243A5F1D4();
      v30 = v74;
      sub_243AC1AE8();

      sub_243A2251C(v10, &qword_27ED99350, &qword_243AC6748);
      sub_243A2251C(v34, &qword_27ED99338, &qword_243AC6730);
      goto LABEL_18;
    }
  }

  v76 = v77;
  sub_243AC2068();
  v36 = v75;
  v37 = [v75 icon];

  v30 = v74;
  if (v37)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = [v38 identifier];
      if (!v39)
      {
        sub_243AC2858();
        v39 = sub_243AC2818();
      }

      [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithType_];

      v40 = v57;
      sub_243AC1428();
      v41 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
      v42 = v58;
      v43 = v68;
      sub_243AC1E08();
      (*(v64 + 8))(v40, v43);
      v44 = v65;
      v45 = v69;
      (*(v65 + 16))(v60, v42, v69);
      swift_storeEnumTagMultiPayload();
      *&v76 = v43;
      *(&v76 + 1) = v41;
      swift_getOpaqueTypeConformance2();
      sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
      v46 = v62;
      sub_243AC1AE8();
      sub_243A224B4(v46, v72, &qword_27ED99330, &qword_243AC6728);
      swift_storeEnumTagMultiPayload();
      sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
      sub_243A5F1D4();
      sub_243AC1AE8();

      sub_243A2251C(v46, &qword_27ED99330, &qword_243AC6728);
      (*(v44 + 8))(v42, v45);
      goto LABEL_18;
    }
  }

  v76 = v77;
  sub_243AC2068();
  v47 = v75;
  v48 = [v75 icon];

  if (!v48)
  {
    v53 = 1;
    goto LABEL_19;
  }

  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (!v49)
  {

    v53 = 1;
    goto LABEL_19;
  }

  v50 = v56;
  sub_243A5DE94(v49, v56);
  sub_243A224B4(v50, v60, &qword_27ED99320, &qword_243AC6718);
  swift_storeEnumTagMultiPayload();
  v51 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
  *&v76 = v68;
  *(&v76 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
  v52 = v62;
  sub_243AC1AE8();
  sub_243A224B4(v52, v72, &qword_27ED99330, &qword_243AC6728);
  swift_storeEnumTagMultiPayload();
  sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
  sub_243A5F1D4();
  sub_243AC1AE8();

  sub_243A2251C(v52, &qword_27ED99330, &qword_243AC6728);
  sub_243A2251C(v50, &qword_27ED99320, &qword_243AC6718);
LABEL_18:
  v53 = 0;
LABEL_19:
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99370, &qword_243AC6768);
  return (*(*(v54 - 8) + 56))(v30, v53, 1, v54);
}

uint64_t sub_243A5D91C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_243AC2018();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99400, &qword_243AC67A0);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99358, &qword_243AC6750);
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99360, &qword_243AC6758);
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - v13;
  if ([a1 shouldUseISIcon])
  {
    sub_243A5F354(a1);
    sub_243AC1428();
    v15 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
    v16 = v32;
    sub_243AC1E08();
    (*(v9 + 8))(v11, v16);
    v17 = v33;
    (*(v12 + 16))(v8, v14, v33);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993C0, &qword_243AC6780);
    *&v39 = v16;
    *(&v39 + 1) = v15;
    swift_getOpaqueTypeConformance2();
    sub_243A5F004();
    sub_243AC1AE8();
    return (*(v12 + 8))(v14, v17);
  }

  else
  {
    v19 = [a1 path];
    sub_243AC2858();

    sub_243AC2008();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v20 = sub_243AC2038();

    (*(v4 + 8))(v6, v3);
    v21 = [a1 systemColorName];
    v22 = sub_243AC2858();
    v24 = v23;

    v25 = sub_243A7051C(v22, v24);
    if (v25 == 24)
    {
      v25 = 17;
    }

    v26 = sub_243A6FF00(v25);
    KeyPath = swift_getKeyPath();
    sub_243AC2138();
    sub_243AC17C8();
    *&v37[6] = v39;
    *&v37[22] = v40;
    *&v37[38] = v41;
    v28 = *&v37[16];
    *(v8 + 34) = *v37;
    v38 = 1;
    *v8 = v20;
    *(v8 + 1) = KeyPath;
    *(v8 + 2) = v26;
    *(v8 + 3) = 0;
    *(v8 + 16) = 1;
    *(v8 + 50) = v28;
    *(v8 + 66) = *&v37[32];
    *(v8 + 10) = *&v37[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993C0, &qword_243AC6780);
    v29 = sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
    v35 = v32;
    v36 = v29;
    swift_getOpaqueTypeConformance2();
    sub_243A5F004();
    return sub_243AC1AE8();
  }
}

uint64_t sub_243A5DE94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99390, &qword_243AC6770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = sub_243AC1208();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIUtils();
  sub_243A6FDB4(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_243A2251C(v14, &qword_27ED98D68, &qword_243AC67E0);
    v19 = 1;
    v20 = v30;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    (*(v16 + 16))(v12, v18, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    v21 = swift_allocObject();
    v22 = v3[1];
    v21[1] = *v3;
    v21[2] = v22;
    v23 = v3[3];
    v21[3] = v3[2];
    v21[4] = v23;
    v24 = objc_opt_self();
    sub_243A5F65C(v3, v31);
    sub_243A5E6E4(v12, [v24 sharedURLCache], 0, sub_243A5F654, v21, v8);
    sub_243AC2138();
    sub_243AC17C8();
    (*(v16 + 8))(v18, v15);
    v25 = &v8[*(v5 + 36)];
    v26 = v31[1];
    *v25 = v31[0];
    *(v25 + 1) = v26;
    *(v25 + 2) = v31[2];
    v27 = v30;
    sub_243A22814(v8, v30, &qword_27ED99390, &qword_243AC6770);
    v19 = 0;
    v20 = v27;
  }

  return (*(v6 + 56))(v20, v19, 1, v5);
}

uint64_t sub_243A5E238@<X0>(unint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v20[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99420, &qword_243AC67F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99428, &qword_243AC67F8);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = sub_243AC2018();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    sub_243AC1778();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F6B4();
    sub_243A491E8(&qword_27ED99450, &qword_27ED99420, &qword_243AC67F0, MEMORY[0x277CDD7F8]);
    sub_243AC1AE8();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v20[1] = v4;
    (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
    v15 = sub_243AC2038();
    (*(v12 + 8))(v14, v11);
    sub_243AC2138();
    sub_243AC18E8();
    *&v21[70] = v23[4];
    *&v21[54] = v23[3];
    *&v21[22] = v23[1];
    *&v21[6] = v23[0];
    *&v21[86] = v23[5];
    *&v21[102] = v23[6];
    *&v21[38] = v23[2];
    v16 = *&v21[80];
    *(v10 + 82) = *&v21[64];
    *(v10 + 98) = v16;
    *(v10 + 114) = *&v21[96];
    v17 = *&v21[16];
    *(v10 + 18) = *v21;
    *(v10 + 34) = v17;
    v18 = *&v21[48];
    *(v10 + 50) = *&v21[32];
    v22 = 1;
    *v10 = v15;
    *(v10 + 1) = 0;
    *(v10 + 8) = 1;
    *(v10 + 16) = *&v21[110];
    *(v10 + 66) = v18;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F6B4();
    sub_243A491E8(&qword_27ED99450, &qword_27ED99420, &qword_243AC67F0, MEMORY[0x277CDD7F8]);
    return sub_243AC1AE8();
  }
}

uint64_t sub_243A5E6E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v46 = a2;
  v8 = sub_243AC1058();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D68, &qword_243AC67E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_243AC1208();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99418, &qword_243AC67E8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v38 - v24;
  v43 = a1;
  sub_243A224B4(a1, v12, &qword_27ED98D68, &qword_243AC67E0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_243A2251C(v12, &qword_27ED98D68, &qword_243AC67E0);
    v26 = 1;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_243AC1038();
    (*(v14 + 8))(v19, v13);
    v26 = 0;
  }

  v28 = v44;
  v27 = v45;
  (*(v44 + 56))(v25, v26, 1, v45);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993A0, &qword_243AC6778);
  v30 = *(v29 + 44);
  sub_243A22814(v25, a6 + v30, &qword_27ED99418, &qword_243AC67E8);
  v31 = [objc_opt_self() defaultSessionConfiguration];
  v32 = v46;
  [v31 setURLCache_];
  *(a6 + *(v29 + 48)) = [objc_opt_self() sessionWithConfiguration_];
  v33 = v40;
  *(a6 + 16) = v41;
  *(a6 + 24) = v42;
  *(a6 + 32) = v33;
  v47 = 0x8000000000000000;
  sub_243AC2058();
  v34 = v48;
  *a6 = v48;
  sub_243A224B4(a6 + v30, v23, &qword_27ED99418, &qword_243AC67E8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    sub_243A2251C(v43, &qword_27ED98D68, &qword_243AC67E0);

    return sub_243A2251C(v23, &qword_27ED99418, &qword_243AC67E8);
  }

  else
  {
    v36 = v39;
    (*(v28 + 32))(v39, v23, v27);
    v37 = sub_243A5EC70();
    if (v37)
    {
      v47 = v37;
      sub_243AC2058();

      sub_243A2251C(v43, &qword_27ED98D68, &qword_243AC67E0);
      (*(v28 + 8))(v36, v27);
      sub_243A5F694(v34);

      *a6 = v48;
    }

    else
    {

      sub_243A2251C(v43, &qword_27ED98D68, &qword_243AC67E0);
      return (*(v28 + 8))(v36, v27);
    }
  }

  return result;
}

uint64_t sub_243A5EC70()
{
  v1 = [*(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED993A0 &qword_243AC6778) + 48))];
  v2 = [v1 URLCache];

  if (v2)
  {
    v3 = sub_243AC1018();
    v4 = [v2 cachedResponseForRequest_];

    if (v4)
    {
      v5 = [v4 data];
      v6 = sub_243AC1228();
      v8 = v7;

      v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v10 = sub_243AC1218();
      v11 = [v9 initWithData_];

      if (v11)
      {
        v12 = sub_243AC1FE8();

        sub_243A200C8(v6, v8);
        return v12;
      }

      sub_243A200C8(v6, v8);
    }
  }

  return 0;
}

uint64_t sub_243A5EDD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC1998();
  *a1 = result;
  return result;
}

unint64_t sub_243A5EE28()
{
  result = qword_27ED99388;
  if (!qword_27ED99388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99390, &qword_243AC6770);
    sub_243A491E8(&qword_27ED99398, &qword_27ED993A0, &qword_243AC6778, &unk_243AC8C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99388);
  }

  return result;
}

uint64_t sub_243A5EF10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
    sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
    swift_getOpaqueTypeConformance2();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A5F004()
{
  result = qword_27ED993B8;
  if (!qword_27ED993B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993C0, &qword_243AC6780);
    sub_243A5F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993B8);
  }

  return result;
}

unint64_t sub_243A5F090()
{
  result = qword_27ED993C8;
  if (!qword_27ED993C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993D0, &qword_243AC6788);
    sub_243A5F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993C8);
  }

  return result;
}

unint64_t sub_243A5F11C()
{
  result = qword_27ED993D8;
  if (!qword_27ED993D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED993E0, &unk_243AC6790);
    sub_243A491E8(&qword_27ED993E8, &qword_27ED993F0, &unk_243ACAA80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993D8);
  }

  return result;
}

unint64_t sub_243A5F1D4()
{
  result = qword_27ED993F8;
  if (!qword_27ED993F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99330, &qword_243AC6728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99358, &qword_243AC6750);
    sub_243A491E8(&qword_27ED99378, &qword_27ED99358, &qword_243AC6750, MEMORY[0x277D7EA70]);
    swift_getOpaqueTypeConformance2();
    sub_243A5F808(&qword_27ED99380, &qword_27ED99320, &qword_243AC6718, sub_243A5EE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED993F8);
  }

  return result;
}

uint64_t sub_243A5F2FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243AC1998();
  *a1 = result;
  return result;
}

id sub_243A5F354(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1B1A0]) init];
  v3 = [a1 foregroundSystemColorName];
  v4 = sub_243AC2858();
  v6 = v5;

  v7 = sub_243A7051C(v4, v6);
  if (v7 == 24)
  {
    v7 = 17;
  }

  v8 = sub_243A70290(v7);
  v9 = [a1 backgroundSystemColorName];
  v10 = sub_243AC2858();
  v12 = v11;

  v13 = sub_243A7051C(v10, v12);
  if (v13 == 24)
  {
    v13 = 17;
  }

  v14 = sub_243A70290(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243AC51B0;
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = sub_243A5F5C8();
  *(v15 + 56) = v17;
  *(v15 + 32) = v16;
  v18 = sub_243AC2978();

  [v2 setSymbolColors_];

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_243AC51B0;
  v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v19 + 56) = v17;
  *(v19 + 32) = v20;
  v21 = sub_243AC2978();

  [v2 setEnclosureColors_];

  v22 = [a1 path];
  if (!v22)
  {
    sub_243AC2858();
    v22 = sub_243AC2818();
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithSymbolName:v22 configuration:v2];

  return v23;
}

unint64_t sub_243A5F5C8()
{
  result = qword_27ED99410;
  if (!qword_27ED99410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ED99410);
  }

  return result;
}

uint64_t sub_243A5F614()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_243A5F694(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

unint64_t sub_243A5F6B4()
{
  result = qword_27ED99438;
  if (!qword_27ED99438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99430, &qword_243AC6800);
    sub_243A5F740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99438);
  }

  return result;
}

unint64_t sub_243A5F740()
{
  result = qword_27ED99440;
  if (!qword_27ED99440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99448, &qword_243AC6808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99440);
  }

  return result;
}

uint64_t sub_243A5F808(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_243A5F884()
{
  result = qword_27ED99468;
  if (!qword_27ED99468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99370, &qword_243AC6768);
    sub_243A5EF10(&qword_27ED993A8, &qword_27ED99350, &qword_243AC6748, sub_243A5EEE0);
    sub_243A5F1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99468);
  }

  return result;
}

uint64_t CompletedRecommendationsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_243AC1B48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99470, &qword_243AC6830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 24);
  v12[4] = *v1;
  v13 = *(v1 + 8);
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99478, &qword_243AC6838);
  sub_243A5FECC(&qword_27ED99480, &qword_27ED99478, &qword_243AC6838, sub_243A5FD48);
  sub_243AC1D08();
  sub_243AC1B38();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830, MEMORY[0x277CDE5A0]);
  sub_243AC1F68();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_243A5FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F08, &qword_243AC5DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99490, &qword_243AC6840);
  sub_243A491E8(&qword_27ED990E8, &qword_27ED98F08, &qword_243AC5DF0, MEMORY[0x277D83980]);
  sub_243A5FD48();
  sub_243A4FE7C(&qword_27ED99180, type metadata accessor for RecommendationSectionViewModel, &unk_243AC5CC0);
  return sub_243AC20F8();
}

unint64_t sub_243A5FD48()
{
  result = qword_27ED99488;
  if (!qword_27ED99488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99490, &qword_243AC6840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99498, &qword_243AC6848);
    sub_243A5FE08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99488);
  }

  return result;
}

unint64_t sub_243A5FE08()
{
  result = qword_27ED994A0;
  if (!qword_27ED994A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99498, &qword_243AC6848);
    sub_243A5FECC(&qword_27ED994A8, &qword_27ED994B0, &qword_243AC6850, sub_243A5FF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994A0);
  }

  return result;
}

uint64_t sub_243A5FECC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_243A5FF48()
{
  result = qword_27ED994B8;
  if (!qword_27ED994B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994C0, &qword_243AC6858);
    sub_243A5FFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994B8);
  }

  return result;
}

unint64_t sub_243A5FFD4()
{
  result = qword_27ED994C8;
  if (!qword_27ED994C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D0, &qword_243AC6860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D8, &qword_243AC6868);
    sub_243A600C8();
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994C8);
  }

  return result;
}

unint64_t sub_243A600C8()
{
  result = qword_27ED994E0;
  if (!qword_27ED994E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED994D8, &qword_243AC6868);
    type metadata accessor for Card(255);
    sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card, &protocol conformance descriptor for Card);
    swift_getOpaqueTypeConformance2();
    sub_243A491E8(&qword_27ED99160, &qword_27ED99168, &qword_243AC5E30, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED994E0);
  }

  return result;
}

uint64_t sub_243A601FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v36 = a6;
  v8 = sub_243AC1728();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99498, &qword_243AC6848);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v37 >> 62)
  {
    v29 = sub_243AC2DF8();

    if (v29)
    {
      goto LABEL_3;
    }

LABEL_5:
    v28 = 1;
    v27 = v36;
    goto LABEL_6;
  }

  v17 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v32[1] = v32;
  MEMORY[0x28223BE20](v18);
  v32[-6] = v16;
  v32[-5] = a2;
  v19 = v34;
  v32[-4] = v33;
  v32[-3] = v19;
  v32[-2] = v35;
  v20 = [*(v16 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  v21 = sub_243AC2858();
  v23 = v22;

  v37 = v21;
  v38 = v23;
  sub_243A4FC18();
  v37 = sub_243AC1D88();
  v38 = v24;
  v39 = v25 & 1;
  v40 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994B0, &qword_243AC6850);
  sub_243A5FECC(&qword_27ED994A8, &qword_27ED994B0, &qword_243AC6850, sub_243A5FF48);
  sub_243AC2108();
  (*(v9 + 104))(v11, *MEMORY[0x277CDF350], v8);
  sub_243A5FE08();
  v27 = v36;
  sub_243AC1EB8();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
  v28 = 0;
LABEL_6:
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED994F0, &unk_243AC69C8);
  return (*(*(v30 - 8) + 56))(v27, v28, 1, v30);
}

uint64_t sub_243A605D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994C0, &qword_243AC6858);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0, MEMORY[0x277D83980]);
  sub_243A5FF48();
  sub_243A4FE7C(&qword_27ED991A8, sub_243A4FEC4, MEMORY[0x277CFB100]);
  return sub_243AC20F8();
}

uint64_t sub_243A60780@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a3;
  v38 = a5;
  v40 = a2;
  v41 = a4;
  v42 = a6;
  v9 = type metadata accessor for Card(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D8, &qword_243AC6868);
  MEMORY[0x28223BE20](v39);
  v13 = &v36 - v12;
  v14 = *a1;
  v15 = [*a1 completed];
  v16 = [v14 completed] ^ 1;
  v17 = swift_allocObject();
  v17[2] = a2;
  v18 = v37;
  v17[3] = v37;
  v17[4] = a4;
  v19 = v38;
  v17[5] = v38;
  v17[6] = v14;
  v43 = v14;
  sub_243A4FEC4();
  v20 = v14;

  sub_243AC2058();
  v21 = v45;
  *v11 = v44;
  *(v11 + 1) = v21;
  v11[16] = v15;
  v11[17] = v16;
  *(v11 + 9) = 0;
  LOBYTE(v43) = 0;
  sub_243AC2058();
  v22 = v45;
  v11[24] = v44;
  *(v11 + 4) = v22;
  *(v11 + 5) = sub_243A6162C;
  *(v11 + 6) = v17;
  *(v11 + 7) = nullsub_1;
  *(v11 + 8) = 0;
  v23 = *(v9 + 48);
  *&v11[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  sub_243A4FE7C(&qword_27ED99148, type metadata accessor for Card, &protocol conformance descriptor for Card);
  sub_243AC1DF8();
  sub_243A61644(v11);
  v24 = sub_243AC2138();
  v26 = v25;
  v27 = &v13[*(v39 + 36)];
  sub_243A60CEC(v20, v27);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99168, &qword_243AC5E30) + 36));
  *v28 = v24;
  v28[1] = v26;
  sub_243AC1788();
  sub_243A600C8();
  v29 = v42;
  sub_243AC1EC8();
  sub_243A616A0(v13);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D0, &qword_243AC6860) + 36);
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = xmmword_243AC6820;
  *(v30 + 32) = 0;
  v31 = swift_allocObject();
  v32 = v41;
  *(v31 + 2) = v40;
  *(v31 + 3) = v18;
  *(v31 + 4) = v32;
  *(v31 + 5) = v19;
  *(v31 + 6) = v20;
  v33 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994C0, &qword_243AC6858) + 36));
  *v33 = sub_243A61750;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  v34 = v20;
}

uint64_t sub_243A60B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243AC51B0;
  v16 = [a7 identifier];
  v17 = sub_243AC2858();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = sub_243AC2A98();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_243AC2A58();

  v21 = sub_243AC2A48();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = v15;
  *(v22 + 40) = 1;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 48) = a4;
  *(v22 + 72) = 1537;
  sub_243A3306C(0, 0, v14, &unk_243AC5220, v22);

  return a5(a1, a2);
}

uint64_t sub_243A60CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_243AC24B8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_243AC24D8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - v6;
  v26 = sub_243AC25A8();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991D0, &unk_243AC5EF0);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v15 = sub_243AC1F98();
  v23[1] = v15;
  v16 = [a1 title];
  sub_243AC2858();

  sub_243AC2598();
  v28 = v15;

  sub_243AC24C8();
  v17 = MEMORY[0x277D84F90];
  sub_243A2E2B4(MEMORY[0x277D84F90]);
  sub_243AC24A8();
  sub_243A2E2B4(v17);
  sub_243A2E2B4(v17);
  sub_243AC24E8();
  v18 = sub_243AC24F8();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  v19 = MEMORY[0x277CE0F78];
  v20 = MEMORY[0x277CE0F70];
  sub_243AC1DC8();

  sub_243A61880(v7);
  (*(v8 + 8))(v10, v26);

  v28 = v19;
  v29 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  sub_243AC1DF8();
  return (*(v25 + 8))(v14, v21);
}

uint64_t sub_243A610B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = [a5 identifier];
  v11 = sub_243AC2858();
  v13 = v12;

  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = 1;

  sub_243A3306C(0, 0, v9, &unk_243AC87F0, v15);
}

uint64_t sub_243A61204@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_243AC1B48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99470, &qword_243AC6830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 24);
  v12[4] = *v1;
  v13 = *(v1 + 8);
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99478, &qword_243AC6838);
  sub_243A5FECC(&qword_27ED99480, &qword_27ED99478, &qword_243AC6838, sub_243A5FD48);
  sub_243AC1D08();
  sub_243AC1B38();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830, MEMORY[0x277CDE5A0]);
  sub_243AC1F68();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_243A61464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243A614AC(uint64_t result, int a2, int a3)
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

uint64_t sub_243A614FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99470, &qword_243AC6830);
  sub_243AC1B48();
  sub_243A491E8(&qword_27ED994E8, &qword_27ED99470, &qword_243AC6830, MEMORY[0x277CDE5A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243A61644(uint64_t a1)
{
  v2 = type metadata accessor for Card(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A616A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED994D8, &qword_243AC6868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A61760()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A617A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A33068;

  return sub_243A40910(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_243A61880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C8, &unk_243AC6A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A618E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A61938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v13 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_243A1FEA8;

  return sub_243A3FA60(a1, v4, v5, v6, v9, v13, v7, v8);
}

void sub_243A61B74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for RecommendationsViewController();
  v27.receiver = v0;
  v27.super_class = v5;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v6 = [v0 parentViewController];
  v7 = [v6 presentationController];

  v8 = [v7 delegate];
  if (v8)
  {
    swift_unknownObjectRelease();
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v9 = sub_243AC1468();
    __swift_project_value_buffer(v9, qword_27EDA14A8);
    v10 = sub_243AC1448();
    v11 = sub_243AC2B58();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_243A1B000, v10, v11, "Unable to set presentation delegate -- Parent already has one!", v12, 2u);
      MEMORY[0x245D47D20](v12, -1, -1);
    }

    goto LABEL_9;
  }

  v13 = [v1 parentViewController];
  if (v13)
  {
    v14 = v13;
    v10 = [v13 presentationController];

    if (v10)
    {
      [v10 setDelegate:v1];
LABEL_9:
    }
  }

  v15 = [objc_opt_self() defaultStore];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v18 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager];
    *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = v17;

    v19 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];
    if (v19)
    {
      v20 = *&v1[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account];
      if (v20)
      {
        v21 = sub_243AC2A98();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        sub_243AC2A58();
        swift_retain_n();
        v22 = v20;
        v23 = v1;
        v24 = sub_243AC2A48();
        v25 = swift_allocObject();
        v26 = MEMORY[0x277D85700];
        v25[2] = v24;
        v25[3] = v26;
        v25[4] = v23;
        v25[5] = v19;
        v25[6] = v22;
        sub_243A3306C(0, 0, v4, &unk_243AC6A98, v25);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_243A61F9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController;
  if (*(v0 + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController))
  {

    sub_243A3BB28();

    v5 = *(v0 + v4);
    if (v5)
    {
      v6 = sub_243AC2A98();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v5;

      sub_243A3306C(0, 0, v3, &unk_243AC6A88, v7);
    }
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v8 = sub_243AC1468();
  __swift_project_value_buffer(v8, qword_27EDA14A8);
  v9 = sub_243AC1448();
  v10 = sub_243AC2B48();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_243A1B000, v9, v10, "Recommended for You sheet is being dismissed.", v11, 2u);
    MEMORY[0x245D47D20](v11, -1, -1);
  }
}

uint64_t sub_243A62188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  if (qword_27EDA1470)
  {
    v9 = *(v6 + 16);
    v9(v8, a1, v5);
    v10 = *(v6 + 80);
    v24 = a1;
    v11 = v5;
    v12 = (v10 + 16) & ~v10;
    v25 = swift_allocObject();
    v13 = *(v6 + 32);
    v13(v25 + v12, v8, v11);
    v9(v8, v24, v11);
    v14 = swift_allocObject();
    v13(v14 + v12, v8, v11);
    v15 = sub_243A2CFF0(0, &qword_27ED995D0, 0x277D85C78);

    v16 = sub_243AC2BC8();
    v26[3] = v15;
    v26[4] = MEMORY[0x277D225C0];
    v26[0] = v16;
    sub_243AC2778();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    if (qword_27ED98920 != -1)
    {
      swift_once();
    }

    v18 = sub_243AC1468();
    __swift_project_value_buffer(v18, qword_27EDA14D8);
    v19 = sub_243AC1448();
    v20 = sub_243AC2B58();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_243A1B000, v19, v20, "Unable to initialize metrics pipeline. Loading recommendations without it.", v21, 2u);
      MEMORY[0x245D47D20](v21, -1, -1);
    }

    v22 = sub_243AC2438();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    return sub_243AC2A38();
  }
}

uint64_t sub_243A624FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14D8);
  v6 = sub_243AC1448();
  v7 = sub_243AC2B38();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_243A1B000, v6, v7, "Loaded metrics pipeline, proceeding to load recommendations UI.", v8, 2u);
    MEMORY[0x245D47D20](v8, -1, -1);
  }

  v9 = sub_243AC2438();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, a1, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  return sub_243AC2A38();
}

uint64_t sub_243A626E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v5 = sub_243AC1468();
  __swift_project_value_buffer(v5, qword_27EDA14D8);
  v6 = a1;
  v7 = sub_243AC1448();
  v8 = sub_243AC2B58();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_243A1B000, v7, v8, "Unable to initialize metrics pipeline. Loading recommendations without it. %@", v9, 0xCu);
    sub_243A2251C(v10, &qword_27ED98BF8, &unk_243AC6150);
    MEMORY[0x245D47D20](v10, -1, -1);
    MEMORY[0x245D47D20](v9, -1, -1);
  }

  v13 = sub_243AC2438();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  return sub_243AC2A38();
}

uint64_t sub_243A628F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = sub_243AC2A58();
  v6[9] = sub_243AC2A48();
  v6[10] = sub_243AC2A48();
  v8 = sub_243AC2A28();
  v6[11] = v8;
  v6[12] = v7;

  return MEMORY[0x2822009F8](sub_243A629E4, v8, v7);
}

uint64_t sub_243A629E4(uint64_t a1)
{
  v2 = sub_243AC2A48();
  v1[13] = v2;
  v3 = swift_task_alloc();
  v1[14] = v3;
  *v3 = v1;
  v3[1] = sub_243A62ACC;
  v4 = v1[7];
  v5 = v1[5];
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v4, v2, v6, 0xD000000000000011, 0x8000000243ACD350, sub_243A62188, 0, v5);
}

uint64_t sub_243A62ACC()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_243A62C10, v3, v2);
}

uint64_t sub_243A62C10()
{

  v2 = sub_243AC2A28();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_243A62C94, v2, v1);
}

uint64_t sub_243A62C94()
{
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14D8);
  sub_243A63E08(v2, v1);
  v4 = sub_243AC1448();
  v5 = sub_243AC2B38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = sub_243AC2438();
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
    sub_243A2251C(v7, &unk_27ED995A0, qword_243AC6D10);
    *(v8 + 4) = v10;
    _os_log_impl(&dword_243A1B000, v4, v5, "Preparing to load recommendationsUI. JetPipelineAvailable: %{BOOL}d", v8, 8u);
    MEMORY[0x245D47D20](v8, -1, -1);
  }

  else
  {
    sub_243A2251C(*(v0 + 48), &unk_27ED995A0, qword_243AC6D10);
  }

  return MEMORY[0x2822009F8](sub_243A62E54, 0, 0);
}

uint64_t sub_243A62E54(uint64_t a1)
{
  *(v1 + 136) = sub_243AC2A48();
  v3 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A62EE0, v3, v2);
}

uint64_t sub_243A62EE0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];

  sub_243A62FF4(v3, v2, v1);
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x2822009F8](sub_243A62F68, v4, v5);
}

uint64_t sub_243A62F68()
{
  v1 = *(v0 + 56);

  sub_243A2251C(v1, &unk_27ED995A0, qword_243AC6D10);

  v2 = *(v0 + 8);

  return v2();
}

void sub_243A62FF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for RecommendationsList(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();

  *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = sub_243A762E4(a1, a2, 0, inited);

  v15 = [v4 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [objc_opt_self() systemBackgroundColor];
  [v16 setBackgroundColor_];

  sub_243A63E08(a3, v13 + v11[5]);
  type metadata accessor for RecommendationsController(0);
  sub_243A63E78();

  *v13 = sub_243AC1828();
  v13[1] = v18;
  v19 = (v13 + v11[6]);
  *v19 = nullsub_1;
  v19[1] = 0;
  v20 = (v13 + v11[7]);
  *v20 = nullsub_1;
  v20[1] = 0;
  v21 = (v13 + v11[8]);
  *v21 = nullsub_1;
  v21[1] = 0;
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995B0, &unk_243AC6A70));
  v23 = sub_243AC1AC8();
  [v4 addChildViewController_];
  v24 = [v23 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  v26 = [v4 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v26;
  v28 = [v23 view];

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v27 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_243AC6A20;
  v30 = [v23 view];

  if (!v30)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = [v30 topAnchor];

  v32 = [v4 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v29 + 32) = v35;
  v36 = [v23 view];

  if (!v36)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = [v36 leadingAnchor];

  v38 = [v4 view];
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v29 + 40) = v41;
  v42 = [v23 view];

  if (!v42)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v43 = [v42 bottomAnchor];

  v44 = [v4 view];
  if (!v44)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = v44;
  v74 = v10;
  v46 = [v44 bottomAnchor];

  v47 = [v43 constraintEqualToAnchor_];
  *(v29 + 48) = v47;
  v48 = [v23 view];

  if (!v48)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v49 = [v48 trailingAnchor];

  v50 = [v4 view];
  if (!v50)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v51 = v50;
  v52 = objc_opt_self();
  v53 = [v51 trailingAnchor];

  v54 = [v49 constraintEqualToAnchor_];
  *(v29 + 56) = v54;
  sub_243A2CFF0(0, &qword_27ED995C0, 0x277CCAAD0);
  v55 = sub_243AC2978();

  [v52 activateConstraints_];

  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = sub_243AC1AD8();
  v59 = (v58 + v11[6]);
  *v59 = sub_243A63F08;
  v59[1] = v56;

  v57(v75, 0);

  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v61 = sub_243AC1AD8();
  v63 = (v62 + v11[7]);
  *v63 = sub_243A63F10;
  v63[1] = v60;

  v61(v75, 0);

  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v65 = sub_243AC1AD8();
  v67 = (v66 + v11[8]);
  *v67 = sub_243A63F18;
  v67[1] = v64;

  v65(v75, 0);

  [v23 didMoveToParentViewController_];
  v68 = *&v4[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController];
  if (v68)
  {

    sub_243A35794();
    sub_243A35030(0, 0);
    v69 = *(v68 + OBJC_IVAR____TtC21CloudRecommendationUI25RecommendationsController_recommendationsFilter);
    v70 = sub_243AC2A98();
    v71 = v74;
    (*(*(v70 - 8) + 56))(v74, 1, 1, v70);
    v72 = swift_allocObject();
    v72[2] = 0;
    v72[3] = 0;
    v72[4] = v69;
    swift_retain_n();
    sub_243A3306C(0, 0, v71, &unk_243AC6A80, v72);
  }

  else
  {
  }
}

void sub_243A638A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_243A61F9C();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_243A63938(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler))
    {

      v7 = v6;
      sub_243A83E5C(a1, a2, v6);

      v6 = v7;
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v8 = sub_243AC1468();
    __swift_project_value_buffer(v8, qword_27EDA14A8);
    v6 = sub_243AC1448();
    v9 = sub_243AC2B58();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_243A1B000, v6, v9, "Self is unavailable. Bailing", v10, 2u);
      MEMORY[0x245D47D20](v10, -1, -1);
    }
  }
}

void sub_243A63A98(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController);
    v5 = Strong;

    if (v4)
    {
      v6 = 0;
      sub_243A3C118(a1, &v6);
    }
  }
}

id sub_243A63B24(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_mailAccountProvider] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_activeRecommendation] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = 0;
  *&v3[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = 0;
  if (a2)
  {
    v5 = sub_243AC2818();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for RecommendationsViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_243A63C4C(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_mailAccountProvider] = 0;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_accountManager] = 0;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_account] = 0;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_activeRecommendation] = 0;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_actionHandler] = 0;
  *&v2[OBJC_IVAR____TtC21CloudRecommendationUI29RecommendationsViewController_recommendationsController] = 0;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for RecommendationsViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_243A63D24(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RecommendationsViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243A63E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A63E78()
{
  result = qword_27ED98FB0;
  if (!qword_27ED98FB0)
  {
    type metadata accessor for RecommendationsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98FB0);
  }

  return result;
}

uint64_t sub_243A63ED0()
{
  MEMORY[0x245D47DE0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243A63F24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A23CBC(a1, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A64018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A33068;

  return sub_243A41BA0(a1, v4, v5, v6);
}

uint64_t sub_243A640CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_243A6411C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_243A33068;

  return sub_243A628F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_243A641E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);

  return sub_243A624FC(a1);
}

uint64_t objectdestroy_36Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243A642F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995C8, qword_243AC6AA0);

  return sub_243A626E4(a1);
}

uint64_t sub_243A643A0()
{
  v1 = v0;
  v2 = sub_243AC1528();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, v1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277D232A0])
  {
    (*(v3 + 96))(v5, v2);
    v2 = *(*v5 + 16);

    return v2;
  }

  if (v7 == *MEMORY[0x277D23248])
  {
    (*(v3 + 96))(v5, v2);
    v19 = *(*v5 + 16);
    v2 = sub_243AC2EB8();

    return v2;
  }

  if (v7 == *MEMORY[0x277D23288])
  {
    (*(v3 + 96))(v5, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_243AC2AC8();

    return v19;
  }

  if (v7 == *MEMORY[0x277D23258])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *(*v5 + 16);
    v19 = 0;
    v20 = 0xE000000000000000;
    if (v8)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x245D46C90](v9, v10);

    return v19;
  }

  if (v7 == *MEMORY[0x277D23278] || v7 == *MEMORY[0x277D23270])
  {
    (*(v3 + 8))(v5, v2);
    type metadata accessor for DecodableStateError(0);
    sub_243A64EBC();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v6(v13, v1, v2);
    *&v13[v14] = MEMORY[0x277D837D0];
    swift_willThrow();
  }

  else
  {
    type metadata accessor for DecodableStateError(0);
    sub_243A64EBC();
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
    v6(v16, v1, v2);
    *&v16[v17] = MEMORY[0x277D837D0];
    swift_willThrow();
    (*(v3 + 8))(v5, v2);
  }

  return v2;
}

uint64_t sub_243A64778@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_243AC1528();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v65 = *(v7 + 16);
  v65(&v55 - v14, v4, v6);
  v16 = (*(v7 + 88))(v15, v6);
  if (v16 == *MEMORY[0x277D232A0])
  {
    (*(v7 + 96))(v15, v6);
    v17 = *(*v15 + 16);
    v18 = *(*v15 + 24);
    a1[3] = MEMORY[0x277D837D0];

    *a1 = v17;
    a1[1] = v18;
    return result;
  }

  if (v16 == *MEMORY[0x277D23248])
  {
    (*(v7 + 96))(v15, v6);
    v20 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D83B88];

    *a1 = v20;
    return result;
  }

  if (v16 == *MEMORY[0x277D23288])
  {
    (*(v7 + 96))(v15, v6);
    v21 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D839F8];

    *a1 = v21;
    return result;
  }

  if (v16 == *MEMORY[0x277D23258])
  {
    (*(v7 + 96))(v15, v6);
    v22 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D839B0];

    *a1 = v22;
    return result;
  }

  v23 = *MEMORY[0x277D23278];
  v59 = a1;
  if (v16 == v23)
  {
    (*(v7 + 96))(v15, v6);
    v24 = *v15;
    v25 = *(v24 + 16);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (!v26)
    {
LABEL_34:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A30, &unk_243AC4840);
      v54 = v59;
      v59[3] = v53;

      *v54 = v27;
      return result;
    }

    v58 = v24;
    v66 = MEMORY[0x277D84F90];

    v60 = v26;
    sub_243A64F34(0, v26, 0);
    v28 = 0;
    v27 = v66;
    v29 = *(v7 + 80);
    v61 = v25;
    v62 = v25 + ((v29 + 32) & ~v29);
    v63 = (v7 + 8);
    while (v28 < *(v25 + 16))
    {
      v65(v13, v62 + *(v7 + 72) * v28, v6);
      sub_243A64778(v67);
      if (v3)
      {
        (*v63)(v13, v6);
      }

      v64 = 0;
      (*v63)(v13, v6);
      v66 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_243A64F34((v30 > 1), v31 + 1, 1);
        v27 = v66;
      }

      ++v28;
      *(v27 + 16) = v31 + 1;
      sub_243A21C48(v67, (v27 + 32 * v31 + 32));
      v25 = v61;
      v3 = v64;
      if (v60 == v28)
      {

        goto LABEL_34;
      }
    }

    goto LABEL_37;
  }

  if (v16 != *MEMORY[0x277D23270])
  {
LABEL_39:
    result = sub_243AC2ED8();
    __break(1u);
    return result;
  }

  (*(v7 + 96))(v15, v6);
  v55 = *v15;
  v32 = *(v55 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
  v33 = sub_243AC2E08();
  v34 = *(v32 + 64);
  v57 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v56 = (v35 + 63) >> 6;
  v60 = (v7 + 8);
  v38 = v33;
  v58 = v33 + 64;
  v62 = v32;

  v39 = 0;
  v61 = v38;
  if (!v37)
  {
LABEL_23:
    v41 = v39;
    while (1)
    {
      v39 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v39 >= v56)
      {

        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A28, &qword_243AC4838);

        *a1 = v38;
        return result;
      }

      v42 = *(v57 + 8 * v39);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v63 = ((v42 - 1) & v42);
        v64 = v3;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  while (1)
  {
    v40 = __clz(__rbit64(v37));
    v63 = ((v37 - 1) & v37);
    v64 = v3;
LABEL_28:
    v43 = v40 | (v39 << 6);
    v44 = (*(v62 + 48) + 16 * v43);
    v45 = *v44;
    v46 = v44[1];
    v65(v10, *(v62 + 56) + *(v7 + 72) * v43, v6);

    v47 = v64;
    sub_243A64778(v67);
    if (v47)
    {
      break;
    }

    (*v60)(v10, v6);
    *(v58 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v48 = v61;
    v49 = (*(v61 + 48) + 16 * v43);
    *v49 = v45;
    v49[1] = v46;
    v38 = v48;
    sub_243A21C48(v67, (*(v48 + 56) + 32 * v43));
    v50 = *(v38 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_38;
    }

    *(v38 + 16) = v52;
    v3 = 0;
    a1 = v59;
    v37 = v63;
    if (!v63)
    {
      goto LABEL_23;
    }
  }

  (*v60)(v10, v6);
}

uint64_t type metadata accessor for DecodableStateError(uint64_t a1)
{
  result = qword_27ED995F8;
  if (!qword_27ED995F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A64EBC()
{
  result = qword_27ED98D50;
  if (!qword_27ED98D50)
  {
    type metadata accessor for DecodableStateError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D50);
  }

  return result;
}

char *sub_243A64F14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A64FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F34(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A65100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_243A64F54(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A65358(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A65530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64F94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A65624(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64FB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A6590C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_243A64FD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243A65A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243A64FF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243A65100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243A65210(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995D8, &unk_243AC6B10);
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
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F80, &qword_243AC5528);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_243A65358(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995F0, &qword_243AC6B38);
  v10 = *(sub_243AC1528() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_243AC1528() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_243A65530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E0, &unk_243AC6B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_243A65624(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E8, &qword_243AC6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}